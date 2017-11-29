
%{
#include <stdio.h>
%}


%%
([A-Za-z0-9]+[A-Za-z0-9.\-_]*[A-Za-z0-9]+)+@[A-Za-z0-9]+([A-Za-z0-9.]*[A-Za-z0-9]+)* {
	printf("%s\n", yytext);
	}


[a-zA-Z0-9]+[-0-9a-zA-Z._]*[a-zA-Z0-9]+@[a-zA-Z0-9]+([-._][a-zA-Z0-9]+)*[-] { 
	; 
	}

. ;
\n ;
%%

int main() {
  yylex();
  return 0;
}