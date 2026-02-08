/**
 * This file handles all command line arguments using plib6.h,
 * refer to the docs for plib.h for information about argument
 * parsing.
 *
 * this file handles all checks on all arguments too, any files 
 * that need to be validated or values that need to be validated
 * will be validated in this file.
 */
#ifndef ARG_C
#define ARG_C

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "remote/plib6.h"

static char *suffix;
static char *prefix;
static int json_array_index = -1; // json index

enum {
	template,
	input_file,
	input_link,
	json_file,
	json_string,
	suf,
	pre,
	output,
	json_path,
	json_index,
	help,
	version,
	end_arg
};

// Argument string list
static struct plib_Argument pl[end_arg] = {
	[template]    = {"--template",    "-t", "Enter the template as a string value"},
	[input_file]  = {"--input",       "-i", "Input file"},
	[input_link]  = {"--input-link",  "-L", "Set input reference link, defaults to <!--PLATE-->"},
	[json_file]   = {"--json-file",   "-J", "Enter json data as a file"},
	[json_string] = {"--json-string", "-j", "Use string JSON instead of file"},
	[suf]         = {"--suffix",      "-s", "Set the end delimiter for value substitution"},
	[pre]         = {"--prefix",      "-p", "Set the start delimiter for value searching"},
	[output]      = {"--output-file", "-o", "Set output file location, defaults to stdout"},
	[json_path]   = {"--json-path",   "-p", "Set the path for json data, defaults to."},
	[json_index]  = {"--json-index",  "-I", "Set index of array at end of json path."},
	[help]        = {"--help",        "-h", "Display this dialog."},
	[version]     = {"--version",     "-v", "Show version number."}
};

void print_byte_as_bits(char val) {
  for (int i = 7; 0 <= i; i--)
    putchar ((val & (1 << i)) ? '1' : '0');
  putchar ('\n');
}

static int
plib_setup (int argc, char *argv[])
{
	// Initialize arguments and
	// enable all.
	plib_CreateArgAndForAll (pl)
		plib_ToggleProperty (plib_Arg, PLIB_ENABLED);

	
	// Enable value parsing on some 
	// arguments
	plib_ForEach (template, json_index+1, pl)
		plib_ToggleProperty (plib_Arg, PLIB_TAKESVALUE);
	

	// Set arguments template through to 
	// input_file as required
	plib_ForEach (template,input_link+1, pl)
		plib_ToggleProperty (plib_Arg, PLIB_REQUIRED);

	// Debug lines, prints flag name and its 
	// options.
	/*plib_ForAll (pl){
		printf ("%s - ", plib_Arg->flag);
		print_byte_as_bits(plib_Arg->opt);
	}*/

	
	// Handle basic errors
	ifnot_plib_Parse (pl)
	  {
		printf ("Options: \n");
		
	
		// PL_RETURN.code == PL_ARG_NONE, 
		// then no args where given, I 
		// don't think this warrents a 
		// "error" so instead we give 
		// a different dialog
		if (PL_RETURN.code != PL_ARG_NONE)
		  {
			// Print error data
			fprintf (stderr, "Error: %s (%s - %d)\n", plib_ErrorReason, plib_ErrorCause(pl), PL_RETURN.index);
			plib_HelpMenu (pl);
			return -1;
		  } 
		
		// No Args given dialog
		fprintf (stderr, "No arguments provided.\n");
		plib_HelpMenu (pl);
		return 1; 
	  }


	// Handle --help
	if (plib_SArgRun (pl[help]))
	  {
		plib_HelpMenu (pl);
		return 1;
	  }

	if (plib_SArgRun (pl[version]))
	  {
		#ifdef PLATE_V
		puts (PLATE_V);
		#else 
		puts ("No version given\n");
		#endif
		return 1;
	  }

	// This handles required args, we do this after
	// processing the --help and --version commands 
	// that way if a required argument isent provided 
	// the user can still use --help and --version 
	// without the main error catch before. plib had
	// to be updated as usually the required arguments
	// are processed and detected in the same function 
	// that processes the system arguments.
	if (plib_CheckRequired (pl) != PL_SUCCESS)
	  {
		fprintf (stderr, "Error: %s (%s - %d)\n", plib_ErrorReason, plib_ErrorCause(pl), PL_RETURN.index);
		plib_HelpMenu (pl);
		return -1;
	  }

	// Handle --prefix
	if (plib_SArgRun (pl[pre]))
	  {
		prefix = strdup (plib_SArgValue (pl[pre], 0));
		// Default prefix (HTML)
	  } else prefix = strdup ("<!--$");

	// Handle --suffix
	if (plib_SArgRun (pl[suf]))
	  {
		suffix = strdup (plib_SArgValue (pl[suf], 0));
		// Default suffix (HTML)
	  } else suffix = strdup ("-->");


	int ret = 0;
	
	// Check if data was provided
	if (!plib_SArgRun (pl[json_string]) && 
			!plib_SArgRun (pl[json_file]))
	  {
		  fprintf(stderr, "Must provide either %s or %s.\n",
				pl[json_string].flag,
				pl[json_file].flag);
		ret = 1;
	  }

	// Check if data file is valid
	if (plib_SArgRun (pl[json_file]))
	  {
		const char *path = plib_SArgValue(pl[json_file], 0);
		FILE *fp = fopen (path, "r");

		// If file does not exist
		if (!fp)
		  {
			fprintf(stderr, 
					"Failed to open JSON file \"%s\"\n", path);
			ret = 1;
		  }
		else fclose (fp);
	  }

	// Check if input file is valid
	const char *path = plib_SArgValue (pl[input_file], 0);
	FILE *input_fp = fopen (path, "r");

	// If file does not exist
	if (!input_fp)
	  {
		fprintf (stderr,
				"Failed to open input file \"%s\"\n", path);
		ret = 1;
	  }
	else fclose (input_fp);

	// Set json_array_index
	if (plib_SArgRun (pl[json_index]))
	  {
		const char *str = plib_SArgValue (pl[json_index], 0);
		const int idx = atoi (str);

		if (idx <= 0 && strcmp (str, "0") != 0)
		  {
			fprintf (stderr,
				"%s must be an int => 0, or if the value "
				"is zero use \"0\" not %s.\n", 
				pl[json_index].flag,
				str);
			ret = 1;
		  }

		// INT was validated
		json_array_index = idx;
	  }

	if (ret != 0)
		plib_HelpMenu (pl);
	
	return ret;
}
#endif
