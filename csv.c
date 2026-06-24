#include "csv.h"
#include <stdio.h>
#include <stdlib.h>

int main(){
	char *cont = csv_to_array("test-file.csv");

	free(cont);
	return 0;
}
