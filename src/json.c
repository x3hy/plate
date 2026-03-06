/**
 * Contains most of the cJSON implementation.
 **/
#ifndef JSON_C
#define JSON_C
#include "remote/cJSON/cJSON.h"
#include "remote/cJSON/cJSON.c"   // usually not included like this
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define json_is_array(json) cJSON_IsArray(json)


// Open a specific nested path in the JSON data. Provide a json object
// and a path like so path.to.data and this function will return the 
// object at that location in the JSON if applicable, if not then it 
// will return NULL.
static cJSON *
json_get_path (cJSON *json, char *path)
{
	if (!path)
		return (json) ? json : NULL;
	
	cJSON *out = json;
	
	// Tok size
	const int path_s = strlen (path);
	char *tok = (char *)malloc (path_s + 1);
	if (!tok) return NULL;
	
	// Tok placement
	int tok_p = 0;
	for (int i = 0; i < path_s + 1; i++)
	  {
		if (path[i] == '.' || path[i] == '\0')
		  {
			tok[i - tok_p] = '\0';
			tok_p = i + 1;
			
			cJSON *prt = cJSON_GetObjectItemCaseSensitive (out, tok);
			if (!prt)
			  {
				free(tok);
				return NULL;
			  }
			
			if (cJSON_IsObject (prt) || cJSON_IsArray(prt))
				// Next part was existant
				out = prt;

			else
			  {
				// Next tok is not a object.
				free(tok);
				return NULL;
			  }
		  }
		else tok[i - tok_p] = path[i];
	  }
	free (tok);
	return out;
}

// Loads a JSON files contents to a cJSON.. Not a very good looking
// implementation so im going to add a TODO: here, to rewrite this function and
// its use. 
static cJSON *
load_json_file (const char *path)
{
	if (!path) return NULL;
	
	FILE *fp = fopen (path, "r");
	if (!fp) return NULL;
	
	fseek (fp, 0, SEEK_END);
	long fp_s = ftell(fp);
	fseek (fp, 0, SEEK_SET);
	
	char *buf = (char *) malloc (fp_s + 1);
	if (!buf)
	  {
		fclose(fp);
		return NULL;
	  }
	
	fread (buf, 1, fp_s, fp);
	buf[fp_s] = '\0';
	fclose (fp);
	
	cJSON *out = cJSON_Parse (buf);
	free(buf);
	
	if (!out)
	  {
		const char *err = cJSON_GetErrorPtr ();
		if (err != NULL)
			fprintf (stderr, "Failed to parse json: %s\n", err);
		return NULL;
	  }
	return out;
}

// searches for a given character and returns the first occurance
// of the character at an index higher then the skip parameter.
int find_char_in_str(int skip, char *str, char ch)
{
	for(int i = 0; i < strlen(str); i++)
		if (str[i] == ch && i > skip)
			return i;
	return -1;
}

// Safely allocates space for a formatted string.
#define snprintyes(str, ...) \
	do { \
		const int str_s = snprintf (NULL, 0, __VA_ARGS__) + 1; \
		str = (char *)malloc (str_s); \
		snprintf(str, str_s, __VA_ARGS__); \
	} while (0)

// Fetch a cJSON property as a string regardless of literal
// JSON type.
char *stringify_json_property(const cJSON *v)
{
	if (cJSON_IsString(v)) return (char *)strdup(v->valuestring);
	if (cJSON_IsNumber(v))
	  {
		char *value;
		snprintyes(value, "%.15g", cJSON_GetNumberValue(v)); 
		return value;
	  }
	if (cJSON_IsBool(v)) return (char *)strdup (cJSON_IsTrue(v) ? "true" : "false");
	if (cJSON_IsNull(v)) return (char *)strdup("NULL");
	return cJSON_PrintUnformatted(v);
}

// Returns a given property if it exists
// TODO: add multiple types here: DONE!
static int
print_json_prop(FILE *out, cJSON *json, char *search)
{
	if (!json || !search) return -1;
	cJSON *value_json = cJSON_GetObjectItemCaseSensitive(json, search);
	if (!value_json)
		return -1;

	char *value_str = stringify_json_property(value_json);
	fputs(value_str, out);
	free(value_str);
	return 0;
}

// Basic search-and-swap template generator, this function takes in a string
// template (str parameter) and a prefix and suffix (pre and suf parameter) along
// with a search character (ca parameter) and a output file. This function will
// iterate through each ocurrance of search character and branch forwards and
// backwards to see if the enclosed value contains the prefix and suffix. If it
// contains the prefix and suffix the inner value will be searched in the json 
// and written along with the other parts of the template to the output file.
int template(FILE *out, char *str, char *pre, char *suf, char ca, cJSON *json)
{
	const int suf_s = strlen (suf);
	const int pre_s = strlen (pre);
	int tok         = find_char_in_str(0, str, ca);
	str = (char *)strdup (str);
	/* printf("Using prefix: \"%s\"\nUsing suffix: \"%s\"\nUsing str: \"%s\"\nUsing ca: %c", pre, suf, str, ca); */
	
	for (;;)
	  {
		if (tok == -1 || strlen(str) < tok) break;

		// detect prefix
		if (tok >= pre_s)
		  {
			for (int i=0; i < pre_s;i++)
			  {
				const char s1 = str[tok - i];
				const char s2 = pre[pre_s - i - 1];
				/* printf ("pre: %c - %c (%d)\n", s1, s2, tok - i); */
				if (s1 != s2) goto end;
			  }
		  }

		// detect suffix
		int suf_tok = tok;
		if (tok >= suf_s)
		  {
			suf_tok = find_char_in_str (suf_tok, str, suf[0]);
			if (suf_tok == -1) goto end;
			for (int i = 0; i < suf_s;i++)
			  {
				const char s1 = str[suf_tok+i];
				const char s2 = suf[i];
				/* printf ("suf: (%d) %c - %c\n",suf_tok, s1, s2); */
				if (s1 != s2) goto end;
			  }
		  }

		// Fetch value
		char *value;
		snprintyes(value, "%.*s",suf_tok - (tok+1), str+(tok + 1));

		// print out this section of tok
		fprintf(out, "%.*s",(tok - pre_s + 1), str);
		
		print_json_prop(out, json, value);
		free(value);

		// incriment tok and continue
		end:
		strcpy(str, str+suf_tok+suf_s);
		tok = find_char_in_str (0, str, ca);
	  }

	fprintf(out, "%s\n", str);
	return 0;
}

#endif
