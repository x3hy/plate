/**
 * Contains most of the cJSON implementation.
 **/
#ifndef JSON_C
#define JSON_C
#include "remote/cJSON/cJSON.h"
#include "remote/cJSON/cJSON.c"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#define json_is_array(json) \
	cJSON_IsArray(json)

static cJSON *
json_get_path (cJSON *json, char *path)
{
	if (!path)
   		return (json) ? json : NULL;

	cJSON *out = json;
	puts(path);
	putchar('\n');

	// Tok size
	const int path_s = strlen (path);
	char *tok = (char *)malloc (path_s);

	// Tok placement
	int tok_p = 0;
	for (int i = 0; i < path_s+1; i++)
	  {
		if (path[i] == '.' || path[i] == '\0')
		  {
			const char last_char = tok[i - tok_p - 1];
			if (path[i] != '\0')
				tok[i - tok_p] = '\0';
			tok_p = i+1;

			// tok is now valid

			// handle tok[idx];
			int idx = -1;
			if (last_char == ']')
			  {
				char *result, *st, *ed;
				int length;

				st = strchr (tok, '[');
				st++;
				ed = strchr (st, ']');
				length = ed - st;
				  
				if (ed == NULL || length <= 0)
					 return NULL;

				result = (char *)malloc (length + 1);
				strncpy (result, st, length);
				result[length] = '\0';
				idx = atoi (result);

				// If the idx is a invalid number
				// this should catch it.
				if (idx == 0 && strcmp(result, "0") != 0)
					return NULL;
			  }
		 	
			// printf ("%s (%d)\n", tok, idx);
			cJSON *prt = cJSON_GetObjectItemCaseSensitive (out, tok);
			if (!prt)
				// Next tok is null
				return NULL;
	
			if (cJSON_IsObject (prt))
			  {
				// Next part was existant
				out = prt;
				cJSON_Delete (prt);
			  }
			else 
				// Next tok is not a object.
				return NULL;
		  }
		tok[i - tok_p] = path[i];
	  }

	printf("exiting..\n");
	//free (tok); causes double free error for some reason
	return NULL;
}

// load a json file
static cJSON *
load_json_file (const char *path)
{ if (!path) return NULL;
	FILE *fp = fopen (path, "r");
	cJSON *out;

	if (!fp) return NULL;

	fseek (fp, 0L, SEEK_END);
	const int fp_s = ftell(fp);
	fseek (fp, 0L, SEEK_SET);

	char *buf = (char *) malloc (fp_s);
	if (!buf)
		return NULL;

	const int buf_l = fread (buf, 1, fp_s, fp);

	out = cJSON_Parse (buf);
	if (!out)
	  {
		const char *err = cJSON_GetErrorPtr ();
		if (err != NULL)
		  	fprintf (stderr, "Failed to parse json: %s\n", err);
	  }

	fclose (fp);
	free (buf);
	return out;
}

char *
replace_word(char *orig, char *rep, char *with)
{
    char *result; // the return string
    char *ins;    // the next insert point
    char *tmp;    // varies
    int len_rep;  // length of rep (the string to remove)
    int len_with; // length of with (the string to replace rep with)
    int len_front; // distance between rep and end of last rep
    int count;    // number of replacements

    // sanity checks and initialization
    if (!orig || !rep || !with)
        return NULL;
    len_rep = strlen(rep);
    if (len_rep == 0)
        return NULL; // empty rep causes infinite loop during count
    if (!with)
        with = "";
    len_with = strlen(with);

    // count the number of replacements needed
    ins = orig;
    for (count = 0; (tmp = strstr(ins, rep)); ++count) {
        ins = tmp + len_rep;
    }

    tmp = result = malloc(strlen(orig) + (len_with - len_rep) * count + 1);

    if (!result)
        return NULL;

    // first time through the loop, all the variable are set correctly
    // from here on,
    //    tmp points to the end of the result string
    //    ins points to the next occurrence of rep in orig
    //    orig points to the remainder of orig after "end of rep"
    while (count--) {
        ins = strstr(orig, rep);
        len_front = ins - orig;
        tmp = strncpy(tmp, orig, len_front) + len_front;
        tmp = strcpy(tmp, with) + len_with;
        orig += len_front + len_rep; // move to next "end of rep"
    }
    strcpy(tmp, orig);
    return result;
}

// fetch a value in json if it exists
static int
get_json_value(cJSON *json, char *search, char **ptr)
{
	cJSON *value_json = cJSON_GetObjectItemCaseSensitive(json, search);
	if (cJSON_IsString(value_json))
	  {
		*ptr = (char *)malloc (strlen (value_json->valuestring));

		if (!*ptr)
			return -1;
	
		strcpy (*ptr, value_json->valuestring);
	  }
	return 0;
}

// generate a template based off of its json values.
static char *
gen_template (cJSON *json, const char *template_in, const char *pre, const char *suf, const char pre_char)
{
	char delim_char[1];
	delim_char[0] = pre[0]; // char to search for
	char *template_local = strdup(template_in);
	char *template_out = (char *)malloc (strlen (template_in) + 1);
	sprintf (template_out, "%s", template_in);
	char* tok = strtok (template_local, delim_char);

	while (tok != NULL)
	  {
		int skip = 0;
		
		// check the tok matches the prefix pattern
		const int delim_pre_s = strlen (pre);
		if (delim_pre_s > 0)
			for (int i = 0; i < delim_pre_s-1; i++)
			  {
				if (tok[0] != pre[i+1])
				  {  
					skip=1;
					break;
				  }
				memmove (tok, tok + 1, strlen (tok + 1) + 1);
			  }

		// check the tok matches the suffix pattern
		const int delim_suf_s = strlen (suf);
		if (delim_suf_s > 0)
			for (int i = delim_suf_s; 0 < i; i--)
			  {
				if (tok[strlen (tok)-1] != suf[i-1])
				  {
					skip=1;
					break;
				  }
				tok[strlen(tok)-1] = '\0';
			  }

		// skip if tok isent a match
		if (!skip)
		  {
			if (tok[0] == pre_char)
			  {
				memmove (tok, tok + 1, strlen (tok + 1) + 1);
	
				char full_tag[strlen (suf) + strlen (pre) + strlen (tok) + 1];
				sprintf(full_tag, "%s%c%s%s", pre, pre_char, tok, suf);
				
				// get value in json
				char *value;
				if (get_json_value (json, tok, &value))
				  {
					// couldent get the value
					free (tok);
					return NULL;
				  }
		
				// apply string replace
				template_out = replace_word (template_out, full_tag, value);
				if (!template_out)
				  {
					// template failed
					free (tok);
					return NULL;
				  }
			  }
		  }
		tok = strtok (NULL, delim_char);
	  }
	free (tok);
	return template_out;
}
#endif
