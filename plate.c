%:include "arglib.h"
%:include <stdio.h>
//%:include <string.h>

// Macroslop
#ifndef VERSION
#define VERSION "unknown"
#endif

#define error(...) fprintf(stderr, __VA_ARGS__)

/* main start */
int main(int argc, char *argv[]){
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
			char *value = arg_align;
			csv_file = fopen(value, "r");
			if (!csv_file){
				error ("Failed to open file: %s\n", value);
				return 1;
			}
		}

		arg_option('o', "Output template file"){
			char *value = arg_align;
			out_file = fopen(value, "r");
			if (!out_file){
				error("Failed to open file: %s\n", value);
				return 1;
			}
		}
	}
	return 0;
}
