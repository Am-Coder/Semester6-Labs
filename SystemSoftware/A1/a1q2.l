%{

	#include<stdio.h>
	int charCount = 0;
	int wordCount = 0;
	int spaceCount = 0;
	int lineendCount = 0;

%}


%%
[ ]		{spaceCount++;}
\n		{lineendCount++;}
([a-zA-Z0-9])+	{wordCount++;
		charCount += yyleng;			
		}	
. 		{charCount++;}
%%

int yywrap(){return 1;}

int main(void){
//	printf("Give the string");
	yylex();

	printf(" Character Count = %d\n Word Count = %d\n Space Count = %d\n Line Count = %d\n",charCount,wordCount,spaceCount,lineendCount);
	
	return 0;
}

