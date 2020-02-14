%{

	#include<stdio.h>
	int cou=0;
%}

%%
\/\/	{cou++; printf(" %s \n",yytext); }	
\/\*[A-Za-z0-9]*\*\/	{cou++; printf(" %s \n",yytext);	}
%%

int yywrap(){}

int main(void){
	printf("Give the String:\n");

	yylex();
	printf("%d",cou);

}
