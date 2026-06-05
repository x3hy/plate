#pragma once
#ifndef PLATE_ARG_H
#define PLATE_ARG_H
#include "include.h"
#include "deprecated/json.c"

cJSON *json;
char *prefix;
char *suffix;
char *input_link;
	

// Process arguments
static int argparse (int argc, char *argv[]){
	prefix = strdup("<!--$");
	suffix = strdup("-->");

	if (argc == 1){
		printf ("use --help for more info\n");
		return 1;
	}

	FORARGS {
		if(__arg_show_help)
			printf("Basic flags:\n");

		ARG ("--help", "Show this dialog"){
			printf("plate 2.0.0\n");
			HELP(argparse);
			return 1;
		}

		ARG ("-s", "Set the trigger suffix")
			suffix = strdup(ARGVAL);
			
		ARG ("-p", "Set the trigger prefix")
			prefix = strdup(ARGVAL);

		ARG ("--input-link", "Set the input link")
			input_link = strdup(ARGVAL);

		if (__arg_show_help)
			printf("\nPositional arguments:\n");

		POSANY (ARGLAST, "<input file>", "JSON input file path. (Must be the last given argument)"){
			char *path = ARGVAL;
			FILE *json_file;	

			// Ensure file exists
			if (!file_exists(json_file, path)){
				error("Failed to open file: %s\n", path);
				return 1;
			}

			// Load the file into cJSON
			json = load_json_file(path);
			if (json == NULL){
				error("Failed to load file: %s\n", path);
				return 1;
			}
		};
	}

	return 0;
}
#endif // PLATE_ARG_H
