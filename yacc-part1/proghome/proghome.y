%{

#include <stdio.h>
#include <stdlib.h>
%}

%token NUMBER ID




%%
E : T	{return 0;}

T :
	T '+' T 
	| T '-' T 
	| T '*' T 
	| T '/' T 
	| NUMBER 
	| ID;


%%
int main() {
	printf("Enter the expression\n");
	yyparse();
	printf("Valid expression\n");
}

int yyerror() {
	printf("\nExpression is invalid\n");
exit(0);
}

