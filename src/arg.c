/**
 * This file handles all argument parsing,
 * I've used my own library PLib for this.
 **/
#include "include.h"

// Setup argument array
#define help(fmt, ...) \
	plib_HelpMenu(pl); \
	printf(fmt, __VA_ARGS__)

enum {
	template_string, template_file, input_link,
	json_string, json_file, input, input_file,
	template_suf, template_pre, output, help,
	end_arg
};

// Argument string list
static struct plib_Argument pl[end_arg] = {

	// Take multiple values
	[template_string] = {"--template-string", "-t", "Enter the template as a string value."},
	[template_file]   = {"--template-file",   "-T", "Enter the template as a file."},
	[input_link]      = {"--input-link",      "-L", "Set input reference link"},
	
	// Take single values
	[json_string]     = {"--json-string",     "-j", "Enter json data as a string"},
	[json_file]       = {"--json-file",       "-J", "Enter json data as a file"},
	[input]           = {"--input",           "-i", "Set input data as a string"},
	[input_file]      = {"--input-file",      "-I", "Set input data as a file",},

	[template_suf]    = {"--suffix",          "-s", "Set the end delimiter for value substitution"},
	[template_pre]    = {"--prefix",          "-p", "Set the start delimiter for value searching"},
	[output]          = {"--output-file",     "-o", "Set output file location, defaults to stdout"},

	// Misc
	[help]            = {"--help",            "-h", "Display this dialog."}
};


int
plib_setup (int argc, char *argv[])
{
	// Initialize arguments
	plib_CreateArgAndForAll (pl)
		plib_ToggleProperty(plib_Arg, PLIB_ENABLED);

	// Enable value parsing on some arguments
	plib_ForEach (template_string, output, pl)
		plib_ToggleProperty (plib_Arg, PLIB_TAKESVALUE);

	plib_ForEach (template_string, input_link+1, pl)
		plib_ToggleProperty (plib_Arg, PLIB_TAKESVALUES);
	
	// Handle errors
	ifnot_plib_Parse (pl)
	  {
		printf ("Options: \n");
		
		if (PL_RETURN.code != PL_ARG_NONE)
		  {
			// Print error data
			help("Error: %s (%s)\n", plib_Error, plib_ErrorArgument);
			return -1;
		  }
		
		help ("No arguments provided.%s\n", "");
		return 1;
	  }

	// Handle --help
	if (plib_SArgRun (pl[help]))
	  {
		plib_HelpMenu(pl);
		return 1;
	  }

	if (!plib_SArgRun (pl[input]) && !plib_SArgRun (pl[input_file]))
	  {
	  	help ("No input file specified.%s\n", "");
		return -1;
	  }

	if (!plib_SArgRun (pl[json_file]) && !plib_SArgRun (pl[json_string]))
	  {
	  	help ("No data file specified.%s\n", "");
		return -1;
	  }

	const int input_link_count = plib_SArgValueCount (pl[input_link]);

	if (input_link_count == 0)
	  {
		help ("No input link specified%s.\n","");
		return -1;
	  }

	// Count total templates
	int template_count = 0;
	template_count += plib_SArgValueCount (pl[template_string]);
	template_count += plib_SArgValueCount (pl[template_file]);
	
	if (template_count == 0)
	  {
		help ("Missing either template_string, or template_file.%s\n", "");
		return -1;
	  }

	if (template_count != plib_SArgValueCount (pl[input_link]))
	  {
		help ("Non-equal amount of templates to links (%d|%d).\n", 
				template_count,
				input_link_count);
		return -1;	
	  }

	// Exit (no cleanup procedure)
	return 0;
}
