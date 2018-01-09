%{
#include <math.h>
int nr,n;
%}
%%
[0-9]+			{	
				n=0;
				int remainder,p=1;
				nr = atoi(yytext);
				while(nr != 0){
					remainder = (nr%2); 
					nr = (nr/2);
					printf("%d\n", remainder);
				}
				}
[a-zA-z]+	{ printf("Nu este numar, este o litera\n");}
%%

int main()
{
yylex(); 
}