%{
#include <math.h>
int nr,n;
%}
%%
[0-9]+			{	
				n=0;
				int r,p=1;
				nr = atoi(yytext);
				while(nr!=0){
					r=nr%2;
					nr=nr/2;
					n=n+r*p;
					p=p*10;
				}
				printf("%d", n);
				}
[a-zA-z]+	{ printf("Nu este numar, este o litera\n");}
%%

int main()
{
yylex(); 
}