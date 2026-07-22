#include <stdio.h>
#include <stdlib.h>

#define COM_BUFFER_SIZE 128
#define COM_SHELL "/bin/sh -c"
#define COM_SETTING_FUNC "settings"

// Shell setting loader
char * load_setting(const char *source_path, const char *keyword){
	char *buf = NULL;
	char com[COM_BUFFER_SIZE];
	snprintf(com, COM_BUFFER_SIZE, "%s \". %s && %s %s %s\"",
		COM_SHELL, source_path, COM_SETTING_FUNC, keyword);

	// Run the command
	FILE *stream = (FILE *)popen(com, "r");
	if (stream == NULL) return NULL;

	// Copy command output to out
	buf = (char *)malloc(COM_BUFFER_SIZE);
	fgets(buf, COM_BUFFER_SIZE, stream);
	return buf;
}

int main(){
	char * output= load_setting("./source", "TEST_FLAG");
	if (output != NULL)
		printf("TEST_FLAG: \"%s\"\n", output);

	free(output);
	return 0;
}
