%:include "src/arglib.h"
%:include "src/template.h"
%:include <stdio.h>
%:include <stdlib.h>
//%:include <string.h>

%:include <yajl/yajl_tree.h>

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

int quiet = 0;

/* function declarations */
int argparse(int argc, char *argv[]);
char *strdup(const char *src);
int header_to_value(char **src, void *arg);
void free_header(char **str);
int write_templates(void);

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
		if (write_templates()){
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

			if (write_templates()){
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

// frick this
char *get_yajl_as_str(yajl_val node){
	if (!node) return NULL;
	if (YAJL_IS_STRING(node))      return strdup(YAJL_GET_STRING(node));
	else if (YAJL_IS_NUMBER(node)) return strdup(YAJL_GET_NUMBER(node));
	else if (YAJL_IS_TRUE(node))   return strdup("true");
	else if (YAJL_IS_FALSE(node))  return strdup("false");
	else if (YAJL_IS_NULL(node))   return strdup("null");
	else if (YAJL_IS_OBJECT(node)) return strdup("[object]");
	else if (YAJL_IS_ARRAY(node))  return strdup("[array]");
	return NULL;
}

// Fetch a CSV value
int header_to_value(char **src, void *arg){
	yajl_val node = (yajl_val)arg;
	if (!YAJL_IS_OBJECT(node)){
		return 0;
	}

	size_t arr_size = node->u.object.len;
	for (int i = 0; i < arr_size; i ++)
		if (!strcmp(node->u.object.keys[i], *src))
			*src = get_yajl_as_str(node->u.object.values[i]);

	return 0;
}

// Frees the CSV value
void free_header(char **str){
	free (*str);
}

// Loads JSON file in YAJL
int write_templates(){
	yajl_val node;
	char errbuf[1024];

	if (!in) return -1;

	// Get input file size
	fseek(in, 0, SEEK_END);
	long in_s = ftell(in);
	fseek(in, 0, SEEK_SET);

	// MOVE to RAM
	char *JSON = (char *)malloc(in_s + 1);
	if (JSON == NULL){
		fclose(in);
		return -2;
	}

	fread(JSON, 1, in_s, in);
	JSON[in_s] = '\0';

	// Load into YAJL
	node = yajl_tree_parse((const char *)JSON, errbuf, sizeof(errbuf));
	if (node == NULL){
		fprintf(stderr, "parse_error:");
		if (strlen(errbuf)) fprintf(stderr,
			   " %s", errbuf);
		else fprintf(stderr, "Unknown");
		fputc('\n', stderr);
		return 1;
	}

	const char *path[] = { (const char *)0};
	yajl_val v = yajl_tree_get(node, path, yajl_t_array);
	if (v){
		size_t len = node->u.array.len;
		size_t i;

		// For each item in array
		for (i = 0;i < len; ++i){
			char *template_tmp = strdup(template);
			yajl_val item = node->u.array.values[i];

			// loop through items
			if (generate_template(template_tmp, prefix, suffix, out,
					header_to_value, free_header, item) != 0){
				printf ("Template generation failed\n");
				free (template_tmp);
				return -3;
			}

			free (template_tmp);
		}
	}
	else {
		fprintf(stderr, "Could not load path\n");
		return -3;
	}


	yajl_tree_free(node);
	return 0;
}

