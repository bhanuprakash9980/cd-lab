%{ 

     /* Definition section */

    int postiveno=0; 

    int negtiveno=0; 

    int positivefractions=0; 

    int negativefractions=0; 

int error=0;
int neg_ferror=0;
%} 

  
/* Rule Section */
DIGIT [0-9] 
%% 

  
\+?{DIGIT}+             postiveno++; 
-{DIGIT}+               negtiveno++; 

  
(\+?{DIGIT}*\.{DIGIT}+)|(-{DIGIT}*\/-[1-9]+)|-{DIGIT}*\.{DIGIT}+\/-{DIGIT}*\.{DIGIT}+ positivefractions++; 
-{DIGIT}*\.{DIGIT}+     negativefractions++; 

(\+?{DIGIT}*\/-[1-9]+)|(-{DIGIT}*\/[1-9]+)    {neg_ferror++;}
\+?{DIGIT}*\/[0]*  {error++;}
. ;    
%% 

  
// driver code 

int main() 
{ 

    yylex(); 

    printf("\nNo. of positive numbers: %d", postiveno); 

    printf("\nNo. of Negative numbers: %d", negtiveno); 

    printf("\nNo. of Positive numbers in fractions: %d", positivefractions); 

    printf("\nNo. of Negative numbers in fractions: %d\n", negativefractions); 

printf("\nNo. of divide by zero errors: %d\n", error); 

printf("\nNo. of negative fraction errors: %d\n", neg_ferror); 

    return 0; 
}
