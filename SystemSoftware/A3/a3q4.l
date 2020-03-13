%{
	#include<stdio.h>

%}

%%

^[+-]?[0-9]+$	{printf("Int");}
^[+-]?[0-9]*[.][0-9]+$	{printf("Float");}
^[a-zA-Z]$	{printf("Character");}
^[a-zA-Z][a-zA-Z]+$	{printf("String");}
.*	{printf("Nothing Matched");}	
%%

	
int yywrap(){}

int main(void){
	yylex();

}
