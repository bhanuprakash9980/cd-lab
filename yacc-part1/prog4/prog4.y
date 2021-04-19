	%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
%}
%%
S:'a'A'b'
A:'a'A
|
'a''a''a''a'
;
%%

int main()
{
yyparse();
printf("\n Valid String\n");
}

int yyerror()
{
printf("INVALID!!!\n");
exit(0);
}
