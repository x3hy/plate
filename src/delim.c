#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int find_char_in_str(int skip, char *str, char ch)
{
	for(int i = 0; i < strlen(str); i++)
		if (str[i] == ch && i > skip)
			return i;
	return -1;
}


int template(char *str, char *pre, char *suf, char ca, FILE *out)
{
	int tok  = 0;

	const int suf_s = strlen (suf);
	const int pre_s = strlen (pre);
	char *final     = (char *)malloc (strlen (str));
	strcpy(final, str);
	
	while (tok != -1){
		int skip = 0;

		tok = find_char_in_str (tok, str, ca);
		if (tok == -1 || tok == 0)
			continue;

		// detect prefix
		if (tok >= pre_s)
		  {
			for (int i=0; i<pre_s;i++)
			  {
				const char s1 = str[tok - i];
				const char s2 = pre[pre_s - i - 1];
				printf ("pre: %c - %c\n", s1, s2);

				if (s1 == s2)
					continue;

				skip = 1;
				break;
			  }
		  }

		// detect suffix
		int continue_point = -1;
		if (tok >= suf_s)
		  {
			for(int i = 0; i < suf_s; i++)
			  {
				if (i <= 0) continue;
				const int i1 = find_char_in_str(0,,suf[i-1]);
				if (find_char_in_str(suf[i-1]) != find_char_in_str(suf[i])+1)
				  {
					  skip = 1;
					  break;
				  }
				else if (i == suf_s)
					continue_point = find_char_in_str(suf[i]);
			  }
		  }

		if (skip)
		  {
			printf("skipping..\n");
			continue;
		  }

		// print first part of tok
		fprintf(out, "%.*s%s %d\n",(tok - pre_s + 1), final, "test123", continue_point);
	}

	free (final);
	return 0;
}



int main (void){
	char *temp= "<li href=\"<!--$1-->\"><a><!--$2--></a> <!--$3--></li>";
	template(temp, "<!--$", "-->", '$', stdout);
	return 0;
}
