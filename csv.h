%:ifndef CSV_H
%:define CSV_H

#include <stdio.h>
#include <stdlib.h>

#define CSV_BUF_SIZE 1024

static long int csv_to_char(FILE *in){
	if (fseek(in, 0, SEEK_END) != 0)
		return -1;

	// Get file size
	long size = ftell(in);
	if (size < 0){
		fclose(in);
		return -2;
	}

	rewind(in);

	char *buffer = (char *)malloc(size + 1);
	if (buffer == NULL){
		fclose(in);
		return -3;
	}

	size_t read = fread(buffer, 1, size, in);
	if (read < (size_t)size){
		if (ferror(in)){
			free(buffer);
			fclose(in);
			return -4;
		}
	}

	// Terminate
	buffer[read] = '\0';
	fclose(in);
	return size+1;
}

#include <string.h>

// Frees a given 2D array
static void free_csv_array(char **array, int size){
	for (int i = 0; i < size; i++)
		free (array[i]);
	free (array);
}

static char ** csv_to_char_array(FILE *in, int *count){
	char **lines = NULL;
	char buf[CSV_BUF_SIZE];
	*count = 0;

	// Dynamically load each line
	while(fgets(buf, sizeof(buf), in)){

		// Remove trailing newline
		for (int i = 0; buf[i]; i++)
			if (buf[i] == '\n')
				buf[i] = '\0';

		char **temp = (char **)realloc(lines, (*count + 1) * sizeof(char *));
		if (!temp){
			free_csv_array(lines, *count);
			return NULL;
		}

		// Append the chunk to the array
		lines = temp;

		int line_size = 0;
		while (buf[line_size])
			line_size++;

		// Allocate that line to the array
		lines[*count] = (char *)malloc(line_size + 1);
		for (int i = 0; i < line_size; i++)
			lines[*count][i] = buf[i];

		lines[*count][line_size] = '\0';
		count++;
	}

	return lines;
}

%:endif // CSV_H
