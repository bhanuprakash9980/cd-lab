%{
#include<stdio.h>
%}
%%
int|char|float|double|for|while|if|else|exit|return {printf("keyword");}
[a-zA-Z_][a-zA-Z0-9_]* {printf("variable");}
[\+\-\*/\%\|\!\^=] {printf("operator");}
. {printf("not variable");}
%%
int main()
{
yylex();
}
