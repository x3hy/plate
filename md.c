#include <string.h>
#include <stdio.h>
#include <stdlib.h>

char *strdup(const char *s);

#define startswith(string, pattern) \
	strncmp(string, pattern, strlen(pattern))

#define snprintfm(str, ...) \
	do { \
		free(str); \
		const int str_s = snprintf (NULL, 0, __VA_ARGS__) + 1; \
		str = (char *)malloc (str_s); \
		snprintf(str, str_s, __VA_ARGS__); \
	} while (0)

int main(int argc, char *argv[]){
	if (argc < 2){
		fprintf(stderr, "%s <FILE> <OUTPUT>\n", argv[0]);
		return 1;
	}

	// Handle output location
	FILE *out = stdout;
	if (argc == 3){
		out = fopen(argv[2], "w");
		if (out == NULL){
			fprintf(stderr, "Failed to open %s\n", argv[2]);
			return 1;
		}
	}

	// Handle input location
	FILE *in = fopen(argv[1], "r");
	if (in == NULL){
		fprintf(stderr, "Failed to open %s\n", argv[1]);
		fclose(out);
		return 1;
	}

	// Counters
	unsigned int code_count = 0, italic_count = 0, bold_count = 0, buf_size = 512;

	// Iterate through each line of file
	char buf[buf_size];
	char *line = NULL;
	while (fgets(buf, buf_size, in)){
		free(line);
		char *newline = strchr(buf, '\n');
		if (newline != NULL)
			*newline = '\0';

		line = strdup(buf);

		// Horizontal Line ---
		if (!startswith(line, "---")){
			fprintf(out, "<hr>\n");
			continue;

		// Code blocks ```
		} else if (!startswith(line, "```")){
			fprintf(out, "%s\n", (code_count % 2) ? "</code>" : "<code>");
			continue;

		// Header ###
		} else if (!startswith(line, "###")){
			snprintfm(line, "<h1>%s</h1>\n", buf + 4);

		// Header ##
		} else if (!startswith(line, "##")){
			snprintfm(line,  "<h1>%s</h1>\n", buf + 3);

		// Header #
		} else if (!startswith(line, "#")){
			snprintfm(line, "<h1>%s</h1>\n", buf + 2);

		// Subtitle >
		} else if (!startswith(line, ">")){
			snprintfm(line, "<sub>%s</sub>\n", buf + 2);
		}

		// In-line formatting rules
		for (int i = 0; line[i]; i++){
			if (line[i] == '*'){
				// Bold **
				if (line[i+1] == '*'){
					i++;
					fprintf(out, (bold_count % 2) ? "</b>" : "<b>");
					bold_count++;
					continue;
				}

				// Italic *
				fprintf(out, (italic_count % 2) ? "</i>" : "<i>");
				italic_count++;
				continue;
			}

			fprintf(out, "%c", line[i]);
		}
		fputc('\n', out);
	}

	free(line);
	fclose(in);
	fclose(out);
	return 0;
}
