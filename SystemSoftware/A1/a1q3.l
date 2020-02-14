%{
#include <stdio.h>
%}

%%

[a-z] {printf("%c",(*yytext-32));}
[A-Z] {printf("%c",(*yytext+32));}

%%

int yywrap(){}

int main()
{
  printf("Enter the string: ");
  yylex();
  return 0;
}
