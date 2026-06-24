%:include "arglib.h"
%:include "csv.h"
%:include <stdio.h>
//%:include <string.h>

// Macroslop
#ifndef VERSION
#define VERSION "unknown"
#endif

#define error(...) fprintf(stderr, __VA_ARGS__)

/* variables */
FILE *in = NULL;
FILE *out = NULL;
char *template = NULL;

char *prefix = NULL;
char *suffix = NULL;

/* function declarations */
int argparse(int argc, char *argv[]);
char *strdup(const char *src);

/* main start */
int main(int argc, char *argv[]){
	if (argparse(argc, argv))
		return 1;

	if (in == NULL){
		error("Must provide -I input file\n");
		return 1;
	}

	if (template == NULL){
		error("must provide a -T template string\n");
		return 1;
	}

	// Default output to stdout
	if (out == NULL)
		out = stdout;

	// Load the csv file
	int csv_rows = 0;
	char ** CSV = csv_to_char_array(in, &csv_rows);

	// For each line in the CSV
	for (int i = 1; i < csv_rows; i++){
		// CSV[0] is the headers of the CSV file
		char *value = csv_header_to_value(CSV[0], CSV[i], "Index", ",");
		if (value == NULL){
			error("Failed to read value\n");
			continue;
		}

		puts(value);
	}

	// Cleanup
	free_csv_array(CSV, csv_rows);
	if (in != NULL) fclose(in);
	if (out != NULL) fclose(out);
	return 0;
}

// Handle arguments
int argparse(int argc, char *argv[]){
	arg_args (argc, argv){
		arg_option ('h', "Show this menu")
			arg_help(argparse);

		arg_option ('v',"Show version number"){
			printf("%s\n", VERSION);
			return 1;
		}

		arg_option('I', "Input CSV file"){
			arg_hasvalue {
				char *value = arg_align;
				in = fopen(value, "r");
				if (!in){
					error ("Failed to open file: %s\n", value);
					return 1;
				}
			} else {
				error("-I requires a value\n");
				return 1;
			}
		}

		arg_option('o', "Output template file"){
			arg_hasvalue {
				char *value = arg_align;
				out = fopen(value, "r");
				if (!out){
					error("Failed to open file: %s\n", value);
					return 1;
				}
			} else {
				error("-o requires a value\n");
				return 1;
			}
		}

		arg_option('T', "Set the data template"){
			arg_hasvalue {
				char *value = arg_align;
				template = strdup(value);
			} else {
				error("-T requires a value\n");
				return 1;
			}
		}

		arg_option('p', "Set the data template prefix trigger"){
			arg_hasvalue {
				char *value = arg_align;
				template = strdup(value);
			} else {
				error("-T requires a value\n");
				return 1;
			}
		}

		arg_option('s', "Set the data template suffix trigger"){
			arg_hasvalue {
				char *value = arg_align;
				template = strdup(value);
			} else {
				error("-T requires a value\n");
				return 1;
			}
		}
	}

	return 0;
}
