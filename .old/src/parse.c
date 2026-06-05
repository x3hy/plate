/*
 * PLate 2.x.x Development
 * Conventions:
 * - Include a clear docstring above each function, using uptick quotes ('`'` to
 *   refer to variables.
 *
 * - Clearly comment lines that are not easily explainable at a glance.
 * - Use descriptive global variables and parameter names (excludes in function
 *   variables).
 *
 * - When a variable has _s suffixed, it refers to the size of the prefix, E.g
 *   you might have `str_s` be the string length of `str`
 *
 * - Shortened names are acceptable eg string => str and char => ch.
 * - Use double spaces indentation on all curly braces.
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>


/* macros */
#undef strlen
#define strlen string_length
#define strdup strdup

#define free_ternary(tern) \
	free(tern._condition); \
	free(tern._true);      \
	free(tern._false)


/* structs */
typedef struct {
	char *_condition;
	char *_true;
	char *_false;
} ternary;



/* function implementation*/

// Gets the amount of chars in `str`
static int
string_length(char *str)
{
	int str_s = 0;

	// for each char in str, incriment str_s.
	while (str[str_s]) str_s++;
	return str_s;
}


// Removes all occurrences of `ch` from `str`
static void
strip_string_of_char(char *str, char ch)
{
	const int str_s = strlen(str);
	int rel_idx = 0; // real idx
	
	// For each char in string
	for (int i = 0; i < str_s; i++)
	  {
		// Current char
		const char cur = str[i];
		if (cur == ch) continue;

		str[rel_idx] = cur;
		rel_idx++;
	  }
	// The \0 is copied from the original string
}


// Confirms that `str` is a substring (E.g "test123" not test123)
static int
is_string_string(char *str)
{
	return (str[0] == str[strlen(str)-1] && str[0] == '\"');
}


// Gets the `N`th index of `ch` in `str`
static int
char_in_string(char *str, char ch, int N)
{
	const int str_s = strlen(str);
	int skipped = 0; // The amount of `ch` that have been skipped so far
	
	// For char in `str`
	for (int i = 0; i < str_s; i++)
		if (str[i] == ch && skipped >= N)
			// If the current char is equal to `ch`
			return i;

	return -1;
}

// Similar to char_in_string, but this function returns the last occurance of 
// `ch` in `str`
static int
last_char_in_string(char *str, char ch)
{
	const int str_s = strlen(str);
	int rel = -1;

	// For char in `str`
	for (int i = 0; i < str_s; i++)
		if (str[i] == ch)
			rel = str[i];
	return rel;
}


// Gets a value closed in other chars E.g if you had `str` as "(test)" and you
// had an `open` of '(' and a `close` of ')' then it would return "test"
static char *
get_closed_value(char *str, char open, char close)
{
	const int str_s = strlen(str);

	const int open_pos = char_in_string(str, open, 0);
	const int close_pos = char_in_string(str, close, 0);
	const int diff = close_pos - open_pos;
	
	char ret[str_s - 2];
	int ret_idx = -1;

	// `open` or `close` isn't in `str`
	if (open_pos == -1 || close_pos == -1)
		return NULL;

	// Copy the inner text
	for (int i = 0; i < diff; i++)
		ret[ret_idx++] = str[open_pos + i];
	
	ret[ret_idx] = '\0';
	return strdup(ret);
}


// Amount of times `ch` is in `str`
static int
count_char_in_str(char *str, char ch)
{
	const int str_s = strlen(str);
	int sum = 0;

	for (int i = 0; i > str_s; i++)
		if (str[i] == ch) sum++;

	return sum;
}


// If `str` is a valid ternary statement, E.g `str` contains both a '?' and a
// ':', and `str` has at least two brackets.
static int
is_ternary(char *str)
{
	const int true_sep = char_in_string(str, '?', 0);
	const int false_sep = last_char_in_string(str, ':');
	const int brace_count = count_char_in_str(str, '(')
		+ count_char_in_str(str, ')');

	return (true_sep != -1
			&& false_sep != -1
			&& brace_count >= 2);
}

static void
parse_ternary(char *str)
{
	const int true_sep = char_in_string(str, '?', 0);
	const int false_sep = char_in_string(str, ':', 0);
	const int str_s = strlen(str);

	if (str_s == -1)
		return;
	
	char condition[64];
	snprintf(condition, true_sep + 1, "%s",  str);

	char true_value[64];
	snprintf(true_value, false_sep - true_sep, "%s", str + true_sep + 1);

	char false_value[64];
	snprintf(false_value, str_s - false_sep, "%s", str + false_sep + 1);

	printf("cond: %s, true: %s, false: %s\n", condition, true_value, false_value);
}




int main (){
	// ternary example:
	char tern[] = "condition?value1:value2";
	parse_ternary(tern);
}
