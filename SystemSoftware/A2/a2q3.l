%{

	#include<stdio.h>
	int negc=0;
	int zc=0;
	int posc=0;

%}

%%
-[0]*[1-9][0-9]*	{negc++;}
[0]*[1-9][0-9]*	{posc++;}
[0]*	{zc++;}
[0-9]*\.[0-9]*	{posc++;}
-[0-9]*\.[0-9]*	{negc++;}

%%

int yywrap(){}

int main(void){
	
	yylex();
	printf("Negative Count: %d\n Positive Count: %d\n Zero Count: %d\n", negc,posc,zc);		

}
