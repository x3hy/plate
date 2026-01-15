#include "src/include.h"
#include "src/arg.c"
#include "src/remote/plib6.h"

char *trig_suffix;
char *trig_prefix;

int 
main (int argc, char *argv[])
{	
	// Handle arguments
	const int ret = plib_setup (argc, argv);
	if (ret != 0)
	  {
		if (ret == 1) return 0;
		else return ret;
	  }


	int input_link_index = 0;

	// Loop through template files
	for (int i = 0; i < pl[template_file].idx; i++)
	  {
		const char *path = plib_SArgValue(pl[template_file], i);
		const char *link = 
			plib_SArgValue(pl[input_link], input_link_index);
		input_link_index++;

		// Open file
		FILE *fp;
		fp = fopen (path, "r");
		
		// Error check
		if (!fp)
		  {
			  fprintf (stderr, "Failed to open %s.\n", path);
			  return 1;
		  }

		// Read file size1
		fseek (fp, 0L, SEEK_END);
		size_t fp_s = ftell (fp);
		rewind (fp);

		// Allocate size
		char *template = malloc (fp_s * sizeof (char));
		if (!template)
		  {
		  	fprintf (stderr, "Failed to allocate memory for template buffer\n");
			return 1;
		  }
		
		char buf[BUF_SIZE];
		while (fgets(buf, BUF_SIZE, fp))
			sprintf (template, "%s%s", template, buf);

		printf ("%s: %s\n",link, template);
		free (template);
    };

	// Loop through templates
	for (int i = 0; i < pl[template_string].idx; i++)
	  {
		char *template = 
			strdup (plib_SArgValue (pl[template_string], i));
		
		const char *link = 
			plib_SArgValue(pl[input_link], input_link_index);
		input_link_index++;

	  	printf ("%s: %s\n",link, template);

		free (template);
	  }
	return 0;
}
