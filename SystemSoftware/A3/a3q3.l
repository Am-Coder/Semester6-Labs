%{
	#include<stdio.h>

%}

%%

^aa.*bcd$	{printf("Found");}
.*	{printf("Not Found");}
	
%%

	
int yywrap(){}

int main(void){
	yylex();

}
