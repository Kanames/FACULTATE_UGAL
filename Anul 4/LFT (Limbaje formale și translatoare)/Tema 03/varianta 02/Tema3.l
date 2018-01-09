%%
[aeiouAEIOU]+	printf("av%s", yytext);
%%
int main()
{
yylex();
}