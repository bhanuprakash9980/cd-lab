%{
#include<stdio.h>
int prnt,scan;
%}
%%
"printf" {prnt++; fprintf(yyout,"writef");}
"scanf" {scan++; fprintf(yyout,"readf");}
%%
int main()
{
yyin=fopen("input.c","r");
yyout=fopen("output.c","r+");
yylex();
printf("no. of printfs %d no. of scanfs %d\n",prnt,scan);
}
