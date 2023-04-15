#include <bits/stdc++.h>
#include "parser.tab.hpp"
#include "ordered_map.h"
using namespace std;
extern FILE *yyin, *yyout;

int yyparse();
void yyerror(char const *s){
 //printf("%s",s);
//fprintf(yyout,"Not accepted");
}

int main(int argc, char *argv[])
{
 
    yyin = fopen(argv[1], "r");
 
    
    yyout = fopen(argv[2], "w");
 
    if(yyparse()==0){
   //fprintf(yyout,"Accepted");
    }
    return 0;
}
