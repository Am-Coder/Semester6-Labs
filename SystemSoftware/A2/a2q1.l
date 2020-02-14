%{
	#include<stdio.h>
	

%}


%%
int|float|auto|double|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|short { printf("Keyword Found ");}
[0-9]+[ ]+ { printf("Constant Found "); }
[a-zA-z_][a-zA-Z0-9_]*[ ] { printf("Identifiers Found "); }
. { 	}
%%

int yywrap(){}

int main(void){
        extern FILE *yyin, *yyout;
        yyin=fopen("input.txt", "r");  

	yylex();	

	
}

