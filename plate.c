%:include "src/arglib.h"
%:include "src/csv.h"
%:include "src/template.h"
%:include <stdio.h>
//%:include <string.h>

// Macroslop
#ifndef VERSION
#define VERSION "unknown"
#endif

#define error(...) fprintf(stderr, __VA_ARGS__)

#define snprintm(str, ...) \
	do { \
		const int str_s = snprintf (NULL, 0, __VA_ARGS__) + 1; \
		str = (char *)malloc (str_s); \
		snprintf(str, str_s, __VA_ARGS__); \
	} while (0)

/* variables */
FILE *in = NULL;
FILE *out = NULL;

char *template = NULL;
char *prefix = NULL;
char *suffix = NULL;

int csv_idx = 0;
char **CSV = NULL;

/* function declarations */
int argparse(int argc, char *argv[]);
char *strdup(const char *src);


int header_to_value(char **str){
	/* *str = csv_header_to_value(CSV[0], CSV[csv_idx], *str + 1, ","); */
	return 0;
}

/* main start */
int main(int argc, char *argv[]){
	// Initialise arguments
	// and set defaults.
	if (argparse(argc, argv))
		return 1;

	// Load the CSV file
	int csv_rows = 0;
	CSV = csv_to_char_array(in, &csv_rows);
	char *value = malloc(1024);
	printf("%s - %s\n", prefix, suffix);
	printf("%s\n", template);

	// For each line in the CSV
	for (int i = 1; i < csv_rows; i++){
		// CSV[0] is the headers of the CSV file
		if(generate_template(template, prefix, suffix, &value, header_to_value)){
			free(value);
			error("Template generation failed\n");
			return 1;
		}

		puts(value);
	}
	
	// Cleanup
	free(value);
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

	if (in == NULL){
		error("Must provide -I input file\n");
		return 1;
	}

	if (template == NULL){
		error("must provide a -T template string\n");
		return 1;
	}

	if (prefix == NULL)
		prefix = strdup("<!--$");

	if (suffix == NULL)
		suffix = strdup("-->");

	// Default output to stdout
	if (out == NULL)
		out = stdout;

	return 0;
}
