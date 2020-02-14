%{

	#include<stdio.h>

%}

%%
0[xX][0-9A-F][ ]+ {	printf("Hexadecimal Number found");	}
0[0-7][ ]+ {	printf("Octal Number found");	}

%%

int yywrap(){}

int main(void){
	printf("Give the string");
	yylex();
	
}
