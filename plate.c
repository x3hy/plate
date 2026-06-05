#include "src/include.h"
USE_INCLUDE;

// Custom libs:
#include "src/arg.h"

// Variables:
cJSON *json;

int main(int argc, char *argv[]){
	if (argparse(argc, argv))
		return 1;

	return 0;
}
