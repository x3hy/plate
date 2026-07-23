#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

#define COM_BUFFER_SIZE 128

// Runs a command and returns the allocated output
char *run_command(const char *com){
	char *buf = NULL;

	// Run the command
	FILE *stream = (FILE *)popen(com, "r");
	if (stream == NULL)
		return buf;

	// Copy command output to out
	buf = (char *)malloc(COM_BUFFER_SIZE);
	fgets(buf, COM_BUFFER_SIZE, stream);
	return buf;
}


// Variadic argument constructor for run_command
char *build_command(const char *format, ...){
	va_list args;
	va_start(args, format);
	char com[COM_BUFFER_SIZE];
	vsnprintf(com, COM_BUFFER_SIZE, format, args);
	//puts(com);
	va_end(args);
	return run_command(com);
}


// Loads a setting from shell config file
#define SETTING_FUNC "SETTINGS"
#define DEP_SOURCE "./preload"
#define SH_FILE_COM "/bin/sh -c"
char *load_config_value(const char *source_path, const char *prop){
	// Loads the source file and runs the setting function
	// with a given prop.
	char *out = build_command("%s \". %s && . %s && %s %s\"",
		SH_FILE_COM, DEP_SOURCE, source_path, SETTING_FUNC, prop);

	// No value given
	if (out[0] == '\n' || out[0] == '\0'){
		free(out);
		out = NULL;
	}

	return out;
}

int main(int argc, char *argv[]){
	// Load the TEST_FLAG_2 config option
	char *output = load_config_value("./source", argv[1] != NULL ? argv[1] : "");
	if (output != NULL) puts(output);
	else puts("Value does not exist");
	return 0;
}
