%{
#include<stdio.h>
int v=0,c=0,s=0;
%}
%% 
[ ] {s++;}   
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%%
int main()
{
printf("Enter string\n");
yylex();
printf("vowels are %d consonants are %d spaces are %d\n",v,c,s);
}
