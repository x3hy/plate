/**
 * Contains most of the cJSON implementation.
 **/
#ifndef JSON_C
#define JSON_C
#include "remote/cJSON/cJSON.h"
#include "remote/cJSON/cJSON.c"

#define json_is_array(json) \
	cJSON_IsArray(json)

#endif
