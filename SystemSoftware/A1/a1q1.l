%{
	#include<stdio.h>

	int v_count = 0;
	int c_count = 0;


%}

%%
[aeiouAEIOU]	{
	v_count++;
}		
[a-zA-Z]	{
	c_count++;
}		

%%


int yywrap(){};

int main(void){

	yylex();
	
	printf("Vowel Count - %d\n",v_count);
	printf("Consonant Count - %d",c_count);

	return 0;	
	
}


