%{
#include <stdio.h>
%}

%%

int|float|auto|double|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|short printf("%s is a keyword",yytext);
^[a-z A-Z _][a-z A-Z 0-9 _]* printf("Valid Identifier\n");
^[0-9][0-9]* printf("Constant\n");
^-[0-9][0-9]* printf("Constant\n");
[a-z A-Z]+ printf("Not a constant or a keyword\n");
^[^a-z A-Z _] printf("Invalid Identifier\n");


%%

int yywrap(){}

int main()
{
  printf("Enter the string: ");
  yylex();
  return 0;
}
