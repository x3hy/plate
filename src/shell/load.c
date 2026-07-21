#include <stdio.h>
#include <stdlib.h>

#define COM_BUFFER_SIZE 128

char *
run_shell( const char *source_path, const char *function_name, const char *keyword, const char *value){
	char *buf = NULL;
	char com[COM_BUFFER_SIZE];
	snprintf(com, COM_BUFFER_SIZE, "/bin/sh -c \". %s && %s %s %s\"",
		source_path,
		function_name,
		keyword,
		value);

	// Run the command
	FILE *stream = (FILE *)popen(com, "r");
	if (stream == NULL)
		return buf;

	// Copy command output to out
	buf = (char *)malloc(COM_BUFFER_SIZE);
	fgets(buf, COM_BUFFER_SIZE, stream);
	return buf;
}

int main(){
	char *output = run_shell("./source", "test_func", "my_value", "value123");
	if (output != NULL)
		printf("output: \"%s\"\n", output);


	free(output);
	return 0;
}
