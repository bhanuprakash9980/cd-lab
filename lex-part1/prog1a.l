%{
#include<stdio.h>
int s,l,c1,c2;
%}
%%
[a-zA-Z]+ {c1+=yyleng; c2++;}
[ \t] s++;
\n l++;
"*" {return 0;}
%%
int main()
{
printf("Enter string\n");
yylex();
printf("whitespaces are %d lines are %d charachters are %d words are %d\n",s,l,c1,c2);
}
