#pragma once
#ifndef PLATE_INCLUDE_H
#define PLATE_INCLUDE_H

/* libraries */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "remote/cJSON/cJSON.h"
#include "remote/cJSON/cJSON.c"
#include "remote/arglib.h"

/* macros */
#define USE_INCLUDE
#define error(name, ...) fprintf(stderr, name,  __VA_ARGS__)
#define file_exists(out, path) (out = fopen(path, "r"))

/* variables */
extern cJSON* json;

#endif
