%{
	#include<stdio.h>
	
%}

%%
^\/\/[a-zA-Z]+$ 	{	 printf("%c",*yytext);	}
%%

int yywrap(){}

int main(void){
	printf("Give the comment \n");
	yylex();	

}



