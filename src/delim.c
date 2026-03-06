#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// searches for a given character and returns the first occurance
// of the character at an index higher then the skip parameter.
int find_char_in_str(int skip, char *str, char ch)
{
	if (!str) return -2;
	for(int i = 0; i < strlen(str); i++)
		if (str[i] == ch && i > skip)
			return i;
	return -1;
}

// Safely allocates space for a formatted string.
#define snprintyes(str, ...) \
	do { \
		const int str_s = snprintf (NULL, 0, __VA_ARGS__) + 1; \
		str = (char *)malloc (str_s); \
		snprintf(str, str_s, __VA_ARGS__); \
	} while (0)

int template(char *str, char *pre, char *suf, char ca, FILE *out)
{
	const int suf_s = strlen (suf);
	const int pre_s = strlen (pre);
	int tok         = find_char_in_str(0, str, ca);

	str = (char *)strdup (str);
	
	for (;;)
	  {
		if (tok == -1 || strlen(str) < tok) break;

		// detect prefix
		if (tok >= pre_s)
		  {
			for (int i=0; i < pre_s;i++)
			  {
				const char s1 = str[tok - i];
				const char s2 = pre[pre_s - i - 1];
				/* printf ("pre: %c - %c\n", s1, s2); */
				if (s1 != s2) goto end;
			  }
		  }

		// detect suffix
		int suf_tok = tok;
		if (tok >= suf_s)
		  {
			suf_tok = find_char_in_str (suf_tok, str, suf[0]);
			if (suf_tok == -1) goto end;
			for (int i = 0; i < suf_s;i++)
			  {
				const char s1 = str[suf_tok+i];
				const char s2 = suf[i];
				/* printf ("suf: (%d) %c - %c\n",suf_tok, s1, s2); */
				if (s1 != s2) goto end;
			  }
		  }

		// Fetch value
		char *value;
		snprintyes(value, "%.*s",suf_tok - (tok+1), str+(tok + 1));
		free(value);

		// print out this section of tok
		fprintf(out, "%.*s",(tok - pre_s + 1), str);
		fprintf(out, "test123");

		// incriment tok and continue
		end:
		strcpy(str, str+suf_tok+suf_s);
		tok = find_char_in_str (0, str, ca);
	  }

	fprintf(out, "%s\n", str);
	free(str);
	return 0;
}



int main (void){
	char *temp= "<li href=\"<!--$LONGER_THAN_ONE_FILENAME-->\"><a><!--$2--></a> <!--$3--></li>";
	template(temp, "<!--$", "-->", '$', stdout);
	return 0;
}
