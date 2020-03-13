%{
	#include<stdio.h>
	int le=0;
	int ri=0;
	int fl=0;
%}

%%

[(]	{le++;}
[)]	{ri++;
		if( ri-le > 0)fl=1;	
	}	
%%

	
int yywrap(){}

int main(void){
	yylex();
	printf(" %d %d ", le,ri);
	if( fl==1 )
	printf("UnEqual");
	else
	printf("equal");
}
