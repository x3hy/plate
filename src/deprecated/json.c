/**
 * Contains most of the cJSON implementation.
 **/
#ifndef JSON_C
#define JSON_C
#include "../include.h"

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
#endif
