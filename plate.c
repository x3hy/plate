#include "src/arg.c"

int 
main (int c, char *v[])
{
	// Setup arguments (arg.c)
	const int ret = plib_setup(c, v);
	if (ret != 0)
	  {
		if (ret == 1) return 0;
		else return ret;
	  }

	return 0;
}
