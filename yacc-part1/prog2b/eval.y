%{
#include <stdio.h>
%}

%token NUMBER 
// setting  precedence
//associativity of operators bottom to up 
%left '+' '-'
%left '*' '/'

%%
E : T	 {
				printf("Result = %d\n", $$);
				return 0;
			}

T :
	T '+' T { $$ = $1 + $3; }
	| T '-' T { $$ = $1 - $3; }
	| T '*' T { $$ = $1 * $3; }
	| T '/' T { if($3==0){yyerror();}
	          else{$$ = $1 / $3;}
	                         }
	| '-' NUMBER { $$ = -$2; }
	| '(' T ')' { $$ = $2; }
	| NUMBER { $$ = $1; }
%%

int main() {
	printf("Enter the expression\n");
	yyparse();
}

/* For printing error messages */
int yyerror(char* s) {
	printf("\nExpression is invalid\n");
}
