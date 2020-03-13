%{
	#include<stdio.h>
	int caesar=1;
%}

%%

[A-Z]	{	if((*yytext + caesar%26)>'Z'){printf("%c",*yytext + caesar%26 -'Z' + 'A'-1);}
		else{printf("%c",*yytext + caesar%26);}	
	}
[a-z]	{	if((*yytext + caesar%26)>'z'){printf("%c",*yytext + caesar%26 -'z' + 'a'-1);}
		else{printf("%c",*yytext + caesar%26);}
	}	
%%

	
int yywrap(){}

int main(void){
	yylex();

}
