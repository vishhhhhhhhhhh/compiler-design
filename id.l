%{
#include <stdio.h>
%}

%%
"int"|"float"|"char"|"if"|"else"|"while"|"for"|"return"   { printf("keyword: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9]*                                     { printf("valid identifier: %s\n", yytext); }
[0-9]+[a-zA-Z_][a-zA-Z0-9]*                               { printf("invalid identifier: %s\n", yytext); }
[ \t\n]+                                                  ;
.                                                         ;
%%

int yywrap() { return 1; }

int main() {
    yylex() ;
    return 0;
}
