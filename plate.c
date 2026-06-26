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
FILE *source = NULL;

char *template = NULL;
char *prefix = NULL;
char *suffix = NULL;
char *trigger = NULL;

int csv_idx = 1;
int quiet = 0;
char **CSV = NULL;

/* function declarations */
int argparse(int argc, char *argv[]);
char *strdup(const char *src);
int header_to_value(char **src);
void free_header(char **str);
int write_CSV(void);

/* main start */
int main(int argc, char *argv[]){
	// Initialise arguments
	// and set defaults.
	if (argparse(argc, argv))
		return 1;

	// Startup information
	if (!quiet){
		printf("%s - %s\n", prefix, suffix);
		printf("%s\n", template);
	}

	// If a trigger is provided
	if (trigger == NULL){
		if (write_CSV()){
			error("Something went wrong..\n");
			return 1;
		}
	} else {
		const unsigned int buf_size = 512;
		char line_buf[buf_size];
		while (fgets(line_buf, buf_size, source)){
			if (!strstr(line_buf, trigger)){
				fputs(line_buf, out);
				continue;
			}

			if (write_CSV()){
				error("Something went wrong..\n");
				return 1;
			}
		}
	}

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
		
		arg_option('i', "Source file"){
			arg_hasvalue {
				char *value = arg_align;
				source = fopen(value, "r");
				if (!source){
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
				out = fopen(value, "w");
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
				prefix = strdup(value);
			} else {
				error("-T requires a value\n");
				return 1;
			}
		}

		arg_option('s', "Set the data template suffix trigger"){
			arg_hasvalue {
				char *value = arg_align;
				suffix = strdup(value);
			} else {
				error("-T requires a value\n");
				return 1;
			}
		}

		arg_option('t', "Set the source trigger"){
			arg_hasvalue {
				char *value = arg_align;
				trigger = strdup(value);
			} else {
				error ("-t requires a value");
				return 1;
			}
		}
	}

	if (!arglib_help){
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
	}

	return 0;
}

// Fetch a CSV value
int header_to_value(char **src){
	char * header = strdup(CSV[0]);
	char * tok = strtok(header, ",");
	int idx = 0;

	// Locate the header
	while(tok){
		if (strcmp(tok, *src) == 0){
			char *row = strdup(CSV[csv_idx]);
			char * tokv = strtok(row, ",");

			// Locate the value
			for (int i = 0; i < idx; i++)
				tokv = strtok(NULL, ",");

			// Copy over
			*src = strdup(tokv);
			free(row);
			break;
		}

		idx ++;
		tok = strtok(NULL, ",");
	}

	free(header);
	return 0;
}

// Frees the CSV value
void free_header(char **str){
	free (*str);
}

// Writes the CSV data to the file
int write_CSV(){
	// Load the CSV file
	int csv_rows = 0;
	CSV = csv_to_char_array(in, &csv_rows);

	// For each line in the CSV
	for (csv_idx = 1; csv_idx < csv_rows; csv_idx++){
		
		// Very dirty. TODO: form-fit this or include DMA in template gen
		const int line_len = strlen(CSV[csv_idx]) + strlen(template);
		char *value = (char *)malloc(line_len);
		char *tmp_template = strdup(template);

		// CSV[0] is the headers of the CSV file
		if(generate_template(tmp_template, prefix, suffix, &value,
					header_to_value, free_header) != 0){
			free(value);
			free(tmp_template);
			error("Template generation failed\n");
			return 1;
		}

		// Write the template to file
		fputs(value, out);
		fputc('\n', out); // not neccercery but it is for my eyes

		free(value);
		free (tmp_template);
	}
	
	// Cleanup
	free_csv_array(CSV, csv_rows);
	return 0;
}

