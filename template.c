#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *strdup(const char *s); // fuck ALE

// Thanks BSD
int estrlen(char *str){
	 const char *s;
     for (s = str; *s; ++s);
	 return (s - str);
}

// does string end in string?
int strwend(char *whole, char *end){
	int whole_size = estrlen(whole);
	int end_size  = estrlen(end);

	// Impossible for it to end
	if (whole_size < end_size)
		return 1;

	// Check for incorrect placements
	for (int i = whole_size - 1; i > end_size+1; i--)
		if (whole[i] != end[i - whole_size + end_size])
			return 1;

	// whole ends with end
	return 0;
}

int strwstart(char *whole, char *end){
	int whole_size = estrlen(whole);
	int end_size  = estrlen(end);

	// Impossible for it to end
	if (whole_size < end_size)
		return 1;

	// Check for incorrect placements
	for (int i = 0; i < end_size; i++)
		if (whole[i] != end[i])
			return 1;

	// whole ends with end
	return 0;
}

// locate index of char in string
int chinstr(char *str, char ch){
	int i = 0;
	for (; str[i]; i++)
		if (str[i] == ch)
			return i;

	// Defaults to the entire
	// size of the string
	return i;
}

// Remove end of string
int strrend(char *whole, char *end){
	if (strwend(whole, end))
		return 1; // <- does not match
	
	// Get sizes
	int end_size  = estrlen(end);
	int whole_size = estrlen(whole);
	whole[whole_size - end_size] = '\0';
	return 0;
}

// Removes shift amount of chars from
// the start of str
int strshift(char *str, int shift){
	int str_size = estrlen(str);
	if (shift > str_size)
		return 1;

	for (int i = 0; i < str_size - shift + 1; i++)
		str[i] = str[i + shift];

	return 0;
}

// Removes a given string if it is at
// the start of whole
int strrstart(char *whole, char *start){
	int whole_size = estrlen(whole);
	int start_size = estrlen(start);

	if (start_size > whole_size)
		return 1;

	strshift(whole, start_size);
	return 0;
}

// generate a linked list of the template with space for toks in
// between prefix and suffix
int generate_template(char *template, char *prefix, char *suffix, char *output[], int (*get_value)(char *)){
	char *out = *output;
	int out_pos = 0;
	int template_size = strlen(template);
	int start_pos = 0;
	int end_pos = 0;

	// Locate values
	for (int i = 0; i < template_size; i++){
		if (!strwstart(template + i, prefix)){

			// Remove the prefix
			i += strlen(prefix);
			start_pos = i;

			// Reach forward for the suffix
			for (; i < template_size; i++){
				if (!strwstart(template + i, suffix)){
					end_pos = i;
					break;
				}
			}

			// Isolate JUST the value
			char *value = template + start_pos;
			value[end_pos - start_pos] = '\0';

			// Use provided function
			if (get_value(value)) return 1;


			// Copy the value back to the string
			for (int i = 0; i < strlen(value); i++)
				out[out_pos++] = value[i];

			// TODO explain this
			i += 2;
		} else out[out_pos++] = template[i];
	}

	out[out_pos] ='\0';
	return 0;
}

int get_value(char *value){
	value = "test123";
	return 0;
}

int main(){
	char *output = malloc(1024);
	char template[] = "<p><!--$test--><b><!--$test2--></b></p>";
	generate_template(template, "<!--$", "-->", &output, get_value);

	puts(output);
	free(output);
	return 0;
}
