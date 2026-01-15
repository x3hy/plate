#include "remote/plib6.h"
#include <stdio.h>

// Arguments
enum {
	help,
	template_string,
	template_file,
	json_string,
	json_file,
	template_link,
	input_link,
	input,
	input_file,
	output,
	end_arg
};

// Setup argument array
static struct plib_Argument pl[end_arg] = {
	[help]            = {"--help",            "-h", "Display this dialog."},
	[template_string] = {"--template-string", "-t", "Enter the template as a string value."},
	[template_file]   = {"--template-file",   "-T", "Enter the template as a file."},
	[json_string]     = {"--json-string",     "-j", "Enter json data as a string"},
	[json_file]       = {"--json-file",       "-J", "Enter json data as a file"},
	[template_link]   = {"--template-link",   "-l", "Set template reference link"},
	[input_link]      = {"--input-link",      "-L", "Set input reference link"},
	[input]           = {"--input",           "-i", "Set input data as a string"},
	[input_file]      = {"--input-file",      "-I", "Set input data as a file",},
	[output]          = {"--output",          "-o", "Set output file location, defaults to stdout"}
};

#define help(fmt, ...) \
	plib_HelpMenu(pl); \
	printf(fmt, __VA_ARGS__)

int
plib_setup (int argc, char *argv[])
{
	// Initialize arguments
	plib_CreateArgAndForAll (pl)
		plib_ToggleProperty(plib_Arg, PLIB_ENABLED);

	// Set value arguments
	plib_ForEach (template_string, input_file, pl)
		plib_ToggleProperty (plib_Arg, PLIB_TAKESVALUE);
	
	// Handle errors
	ifnot_plib_Parse (pl)
	  {
		printf ("Options: \n");
		
		if (PL_RETURN.code != PL_ARG_NONE)
		  {
			// Print error data
			//
			help("Error: %s (%s)\n", plib_Error, plib_ErrorArgument);
			return -1;
		  }
		
		help ("No arguments provided.%s\n", "");
		return 1;
	  }

	// handle --help
	if (plib_SArgRun (pl[help]))
	  {
		plib_HelpMenu(pl);
		return 1;
	  }

	// Count total template
	int template_count = 0;
	template_count += plib_SArgValueCount(pl[template_string]);
	template_count += plib_SArgValueCount(pl[template_file]);
	
	if (template_count == 0){
		help ("Missing either template_string, or template_file.%s\n", "");
		return -1;
	}

	// Exit (no cleanup procedure)
	return 0;
}
