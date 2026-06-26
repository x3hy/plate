#ifndef TEMPLATE_H
#define TEMPLATE_H

#include <string.h>
#include <stdio.h>
// for strdup

// TODO: re-implement this from BSD source
static int estrlen(char *str){
	return strlen(str);
}

/* Returns 0 if `whole` starts with
 * the string `end`. Returns 1
 * otherwise */
static int strwstart(char *whole, char *end){
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


/* Locate encapsulated strings (within prefix and suffix) and run it through the get_value().
 * then replace the returned string of get_value() into the template, without the prefix and
 * suffix.
 *
 * Assumes that get_value returns not-allocated memory.
 * Output is not checked for size, ensure it has enough memory.
 */
static int generate_template(char *tplate, char *prefix, char *suffix,
		FILE*output, int (*get_value)(char **, void*), void (*free_value)(char **), void *pass){
	
	// Required values
	if (tplate == NULL || prefix == NULL || suffix == NULL)
		return -1;

	int template_size = estrlen(tplate);
	int start_pos, out_pos, end_pos;
	start_pos = out_pos = end_pos = 0;

	// Locate the prefix
	for (int i = 0; i < template_size; i++)
		if (!strwstart(tplate + i, prefix)){
			i += estrlen(prefix);
			start_pos = i;

			// Reach forward for the suffix
			for (; i < template_size; i++)
				if (!strwstart(tplate + i, suffix)){
					end_pos = i;
					break;
				}

			// Isolate JUST the value
			char *value = strdup(tplate + start_pos);
			value[end_pos - start_pos] = '\0';

			// Copy the value back to the string
			if (get_value(&value, pass)) return 1;
			for (int i = 0; i < estrlen(value); i++)
				fputc(value[i], output);

			// Free value if need be
			free_value(&value);

			// TODO explain this
			i += 2;
		} else fputc(tplate[i], output);
	return 0;
}
#endif // TEMPLATE_H
