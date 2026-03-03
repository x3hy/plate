/**
 * Contains most of the cJSON implementation.
 **/
#ifndef JSON_C
#define JSON_C
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "remote/cJSON/cJSON.h"
#include "remote/cJSON/cJSON.c"   // usually not included like this

#define json_is_array(json) cJSON_IsArray(json)

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

// load a json file
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

char *
replace_word(char *orig, char *rep, char *with)
{
    char *result; // the return string
    char *ins; // the next insert point
    char *tmp; // varies
    int len_rep; // length of rep (the string to remove)
    int len_with; // length of with (the string to replace rep with)
    int len_front; // distance between rep and end of last rep
    int count; // number of replacements

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
    // tmp points to the end of the result string
    // ins points to the next occurrence of rep in orig
    // orig points to the remainder of orig after "end of rep"
    char *current = orig;
    while (count--) {
        ins = strstr(current, rep);
        len_front = ins - current;
        tmp = strncpy(tmp, current, len_front) + len_front;
        tmp = strcpy(tmp, with) + len_with;
        current += len_front + len_rep; // move to next "end of rep"
    }
    strcpy(tmp, current);

    return result;
}

// fetch a value in json if it exists
static int
get_json_value(cJSON *json, char *search, char **ptr)
{
    if (!json || !search || !ptr) return -1;
    cJSON *value_json = cJSON_GetObjectItemCaseSensitive(json, search);
    if (!value_json)
        return -1;

    if (cJSON_IsString(value_json) && value_json->valuestring)
    {
        *ptr = (char *)strdup (value_json->valuestring);
        if (!*ptr) return -1;
        return 0;
    }

    return -1;
}

// generate a template based off of its json values.
static char *
gen_template (cJSON *json, const char *template_in, const char *pre, const char *suf, const char pre_char)
{
    if (!template_in || !pre || !suf) return NULL;

    char delim_char[2] = {pre[0], '\0'};
    char *template_local = (char *)strdup(template_in);
    if (!template_local) return NULL;

    char *template_out = (char *)strdup(template_in);
    if (!template_out)
    {
        free(template_local);
        return NULL;
    }

    char* tok = strtok (template_local, delim_char);
    while (tok != NULL)
    {
        int skip = 0;
        char *edit = strdup(tok);
		if (edit[strlen(edit)-1] == ' ')
			edit[strlen(edit)-1] = '\0';

        if (!edit)
        {
            tok = strtok (NULL, delim_char);
            continue;
        }

        // check the tok matches the prefix pattern
        const int delim_pre_s = strlen (pre);
        if (delim_pre_s > 0)
        {
            for (int i = 0; i < delim_pre_s - 1; i++)
            {
                if (edit[0] != pre[i+1])
                {
                    skip = 1;
                    break;
                }
                memmove (edit, edit + 1, strlen (edit + 1) + 1);
            }
        }

        // check the tok matches the suffix pattern
        const int delim_suf_s = strlen (suf);
        if (delim_suf_s > 0 && !skip)
        {
            for (int i = delim_suf_s; i > 0; i--)
            {
                if (edit[strlen (edit)-1] != suf[i-1])
                {
                    skip = 1;
                    break;
                }
                edit[strlen(edit)-1] = '\0';
            }
        }

        // skip if tok isnt a match
        if (!skip)
        {
            if (edit[0] == pre_char)
            {
                memmove (edit, edit + 1, strlen (edit + 1) + 1);

                char full_tag[512]; // simple fixed buffer — original used VLA
                snprintf(full_tag, sizeof(full_tag), "%s%c%s%s", pre, pre_char, edit, suf);

                // get value in json
                char *value = NULL;
                if (get_json_value (json, edit, &value) == 0)
                {
                    // apply string replace
                    char *new_out = replace_word (template_out, full_tag, value);
                    free(value);

                    if (new_out)
                    {
                        free(template_out);
                        template_out = new_out;
                    }
                    else
                    {
                        free(edit);
                        free(template_local);
                        free(template_out);
                        return NULL;
                    }
                }
            }
        }

        tok = strtok (NULL, delim_char);
        free (edit);
    }

    free(template_local);
    return template_out;
}
#endif

