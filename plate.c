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

#define BUF_SIZE 128
char * generate (cJSON *, char *);

int 
main (int argc, char *argv[])
{	

	// handle arguments, read arg.c for the 
	// information here.
	const int ret = plib_setup (argc, argv);
	if (ret != 0)
	  {

		// if plib_setup returns a 0 then
		// continue in plate.c if not 
		// handle each code like so.
		if (ret == 1) return 0;
		else return ret;
	  }

	// Get the input file path 
	// from arguments.
	const char * input_file_path = 
		strdup (plib_SArgGetFirstValue(pl[(int)input_file]));

	// Open file
	FILE *fp = fopen (input_file_path, "r");
	if (!fp)
	  {
	  	fprintf (stderr,"Failed to open input file \"%s\".\n", input_file_path);
		return -1;
	  }

	// Dat_path is the file location of the json data.
	const char *dat_path = plib_SArgValue (pl[(int)json_file], 0);

	// location within the json.
	const char *dat_loc  = plib_SArgValue (pl[(int)json_path], 0);

	// Load json file
	cJSON *json;
	if (plib_SArgRun(pl[(int)json_file]))
	  {
		json = load_json_file (dat_path);
		// Load json file
		if (json == NULL)
		  {
	  		fprintf(stderr, "An error occured while trying to open the json file\n");
			return -1;
		  }
		// json file loaded successfully.
	  }
	else
	  {
		// Load json string 
	  	json = cJSON_Parse (plib_SArgValue(pl[(int)json_string], 0));
		if (!json)
		  {
		  	const char *err = cJSON_GetErrorPtr ();
			if (err)
				fprintf (stderr, "Failed to parse json: %s\n", err);

			return -1;
		  }
		// Json string loaded successfully
	  }

	// Create buffer for lines in input file
	char *line_buf = malloc (BUF_SIZE * sizeof(char));
	if (!line_buf) 
	  {
		fprintf (stderr, "Failed to allocate memory.\n");
		fclose (fp);
		return -1;
	  }

	// get template as string
	char *template = plib_SArgGetFirstValue(pl[(int)template_string]);

	// Get the suffix as a string
	char *suffix_str;
	if (plib_SArgRun(pl[(int)suf]))
		suffix_str = strdup(plib_SArgValue(pl[(int)suf], 0));
	else suffix_str = strdup("-->");

	// get the prefix as a string
	char *prefix_str;
	if (plib_SArgRun(pl[pre]))
		prefix_str = strdup (plib_SArgValue(pl[(int)pre], 0));
	else prefix_str = strdup ("<!--$");

	// Read input file line by line
	while (fgets(line_buf, BUF_SIZE, fp))
	  {
		const char *input_link_string = plib_SArgValue (pl[(int)input_link], 0);
		if (strstr (line_buf, input_link_string))
		  {		
			// Detected the input link
			/*if (cJSON_IsArray(json))
			  {
				int item_count = 0;
				cJSON *item = NULL;
			  	cJSON_ArrayForEach(item, json)
				  {
				  }
			  } else {*/
				// causes segfault for some reason	
				char *formatted_template = gen_template(json, template, suffix_str, suffix_str, '$');
				if (!formatted_template)
				  {
				  	fprintf (stderr, "could not generate template, maybe your values are wrong..\n");
					return 0;
				  }
				printf("%s\n", formatted_template);
			  //}
			return 0;
		  }
	  }

	free (prefix);
	free (suffix);
	return 0;
}
