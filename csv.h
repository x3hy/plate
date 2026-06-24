%:ifndef CSV_H
%:define CSV_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define CSV_BUF_SIZE 1024


// Reads each line in a file
static char *read_line(FILE *in){
	size_t len = 0;
	size_t cap = 64;
	char *line = (char *)malloc(cap);
	
	if (!line) return NULL;
	
	int c;
	while ((c = fgetc(in)) != EOF && c != '\n') {
		if (len + 1 >= cap) {
			cap *= 2;
			char *tmp = (char *)realloc(line, cap);
			if (!tmp) {
				free(line);
				return NULL;
			}
			line = tmp;
		}
		line[len++] = (char)c;
	}
	
	if (len == 0 && c == EOF) {
		free(line);
		return NULL;
	}
	
	line[len] = '\0';
	return line;
}

// Frees a given 2D array
static void free_csv_array(char **array, int size){
	for (int i = 0; i < size; i++)
		free (array[i]);
	free (array);
}

// Loads (any) file to a char** array with each item in 
// the array being a line in the file.
static char **csv_to_char_array(FILE *in, int *count){
	char **lines = NULL;
	*count = 0;
	
	char *line;
	
	// For each line
	while ((line = read_line(in))) {
		char **tmp = (char **)realloc(lines, (*count + 1) * sizeof(*lines));
		if (!tmp) {
			free(line);
			free_csv_array(lines, *count);
			return NULL;
		}
		
		lines = tmp;
		lines[(*count)++] = line;
	}
	
	return lines;
}
// returns the value represented by the key in the row using the header.. Phew!
// Uses strtok so the row and header will be diluted which is why the header is protected
static char *csv_header_to_value(const char *header, char *row, const char *key, char *split){
	int header_size = 0;
	while (header[header_size])
		header_size++;

	// Make a copy of the header
	char *header_copy = (char *)malloc(header_size + 1);
	for (int i = 0; i < header_size; i++)
		header_copy[i] = header[i];

	// Setup tokens
	char *header_tok = strtok(header_copy, split);
	char *row_tok = strtok(row, split);

	// Loop until token is found
	while (header_tok != NULL){
		if (!strcmp(header_tok, key)){
			// Return the found value
			free(header_copy);
			return row_tok;
		}

		// Move to next tok
		header_tok = strtok(NULL, split);
		row_tok = strtok(NULL, split);
	}

	// Unable to find value
	free(header_copy);
	return NULL;
}
%:endif
