%{
	#include<stdio.h>
	#include<string.h>
%}

%%
\/\/[A-Za-z]+	{ int i=0;
		  for( i=0; i<strlen(yytext); i++ ){
			if( yytext[i] >= 'a' && yytext[i]<= 'z' ){printf("%c",yytext[i]-32);}
			else{printf("%c",yytext[i]);}
								
		     }						
		 }	
%%

int yywrap(){}

int main(void){
	printf("Give the comment \n");
	yylex();	
	printf("YO");
}



