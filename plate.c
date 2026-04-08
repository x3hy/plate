/**
 * MIT License
 *
 * Copyright (c) 2025 x3hy (https://github.com/x3hy)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 **/

/**
 * plate is a basic tem(plate) generator for mainly HTML but can be used for any 
 * filetype. PLATE works by reading a file line by line until it reaches a 
 * certain trigger (called a input link) where it will then load data from a json
 * file and write that data into a "template" which is written back to the input
 * file. I've written this project as a means to convert data into tables on my 
 * static personal website https://x3hy.github.io. To use plate you must provide
 * the input file, input link, template and data. you can specify a specific path
 * to data in the json by using the --json-path (-p). One more note on the JSON
 * side of things, if the path given for the json data happens to be an array it
 * will loop over each item in the array and apply the template to each 
 * individual item in the array. To stop this set the --json-index value to an 
 * int, the index --json-index in the JSON data will be used instead of the 
 * entire array.
 *
 * Read arg.c and then remote/plib6.h for information about command line argument
 * parsing.
 *
 * TODO:
 * Read examples.sh for examples on real examples of how you can use plate.
 * Write template function.
 * Write json array detetor,
 * write error checker for json values (in template generator)
 **/

#include "src/arg.c"
#include "src/json.c"
#include "src/remote/cJSON/cJSON.h"
#include "src/remote/plib6.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//#include "remote/cJSON/cJSON.h"
//#include "remote/cJSON/cJSON.c"

// Load a value from plib if it exists, if it does not exist then use a provided
// default value.
#define plib_default(prop, ar, idx, def) \
	(plib_SArgRun(ar[prop])) \
		? (char *)strdup(plib_SArgValue(ar[prop], idx)) \
		: (char *)strdup(def)

// If value is defined then free it if
// not then do nothing..
#define s_free(ptr) if (ptr) free (ptr)

#define BUF_SIZE 512

int
main (int argc, char *argv[])
{
	const int ret = plib_setup (argc, argv);
	if (ret != 0) return (ret == 1) ? 0 : ret;

	// Load input file
	FILE *input_file_fp;
	char* input_file_path = (char *)strdup (plib_SArgValue(pl[input_file], 0));
	if (!(input_file_fp = fopen(input_file_path, "r")))
	  {
	  	fprintf (stderr,"Failed to open input file \"%s\".\n", input_file_path);
		goto exit_main;
	  }

	// Dat_path is the file location of the json data.
	char *dat_path = plib_SArgValue (pl[json_file], 0);

	// Load json file
	cJSON *json = (plib_SArgRun(pl[json_file]))
		? load_json_file (dat_path)
		: cJSON_Parse (plib_SArgValue(pl[json_string], 0));

	// Load path within JSON file
	if (plib_SArgRun(pl[json_path]))
	 {
		char *dat_loc  = plib_SArgValue (pl[json_path], 0);
		json = json_get_path(json, dat_loc);
		if (!json)
		  {
			fprintf(stderr, "Error loading json data at path: %s\n", dat_loc);
			return -1;
		  }
	  }	

	// Handle JSON errors
	if (!json)
	  {
		if (plib_SArgRun(pl[json_string]))
		  {
			const char *err = cJSON_GetErrorPtr ();
			fprintf (stderr, "Failed to parse json");
			if (err) fprintf (stderr, ": %s\n", err);
		  }
		else fprintf (stderr, "\n");
		return -1;
	  }


	// Create buffer for lines in input file
	char *line_buf = malloc (BUF_SIZE);
	if (!line_buf)
	  {
		fprintf (stderr, "Failed to allocate memory.\n");
		goto exit_main;
	  }

	// Load misc values
	char *template_str = plib_SArgValue(pl[template_string], 0);
	char *suffix_str = plib_default(suf, pl, 0, "-->");
	char *prefix_str = plib_default(pre, pl, 0, "<!--$");
	char *input_link_string = plib_default(input_link, pl, 0, "<!--!PLATE-->");
	FILE *out_file_fp = stdout;

	// load file if possible
	if (plib_SArgRun(pl[output]))
		out_file_fp = fopen(plib_SArgValue(pl[output], 0), "w");
	
	// Load the JSON index value
	// TODO: input validation and clean-up here
	int json_idx = -1;
	if (plib_SArgRun(pl[json_index]))
	  {
		json_idx = atoi(plib_SArgValue(pl[json_index], 0));
		
		if (cJSON_GetArraySize(json) <= json_index)
			json = cJSON_GetArrayItem(json, json_idx);

		else
		  {
			fprintf(stderr, "Failed to fetch json index (%d).\n", json_index);
			goto exit_main;
		  }
	  }

	// Print loop
	while (fgets(line_buf, BUF_SIZE, input_file_fp))
	  {
		// If the current line doesn't contain the
		// trigger then just print it and continue
		// if it does contain the trigger then
		// continue to printing the template.
		if (!strstr (line_buf, input_link_string))
		  {
			fputs(line_buf, out_file_fp);
			continue;
		  }

		// If the JSON given is
		// an array then we
		// iterate through each
		// individual item in
		// the data.
		if (cJSON_IsArray(json))
		  {
			cJSON *item;
			cJSON_ArrayForEach(item, json)
				template(out_file_fp, template_str, prefix_str, suffix_str, '$', item);
		  }
		
		// If the data is not an array then simply print it out normally.
		else template (out_file_fp, template_str, prefix_str, suffix_str, '$', json);
	  }

exit_main:
	s_free(line_buf);
	s_free (input_link_string);
	s_free (prefix_str);
	s_free (suffix_str);
	cJSON_Delete(json);
	return 0;
}
