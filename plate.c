%:include "arglib.h"
%:include "csv.h"
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

/* function declarations */
int argparse(int argc, char *argv[]);
int gen_template(char *str, char *header, char *row);
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

int find_char_in_str(int skip, char *str, char ch){
	for(int i = 0; i < strlen(str); i++)
		if (str[i] == ch && i > skip)
			return i;
	return -1;
}

// gen
int gen_template(char *str, char *header, char *row){
	const int suf_s = strlen (suffix);
	const int pre_s = strlen (prefix);
	char ca = '$';
	int tok = find_char_in_str(0, str, ca);
	char *copy = (char *)strdup (str);
	
	for (;;){
		if (tok == -1 || strlen(copy) < tok) break;

		// detect prefix
		if (tok >= pre_s){
			for (int i=0; i < pre_s;i++){
				const char s1 = copy[tok - i];
				const char s2 = prefix[pre_s - i - 1];
				if (s1 != s2) goto end;
			  }
		  }

		// detect suffix
		int suf_tok = tok;
		if (tok >= suf_s){
			suf_tok = find_char_in_str (suf_tok, copy, suffix[0]);
			if (suf_tok == -1) goto end;
			for (int i = 0; i < suf_s;i++){
				const char s1 = copy[suf_tok+i];
				const char s2 = suffix[i];
				if (s1 != s2) goto end;
			  }
		  }

		// Fetch value
		char *value;
		snprintm(value, "%.*s",suf_tok - (tok+1), str+(tok + 1));
		fprintf(out, "%.*s",(tok - pre_s + 1), str);
		char *prop = csv_header_to_value (header, row, value, ",");
		fputs(prop, out);
		free(value);

		// incriment tok and continue
		end:
		tok = find_char_in_str (0, str, ca);
	  }

	fprintf(out, "%s\n", str);
	free(copy);
	return 0;
}
