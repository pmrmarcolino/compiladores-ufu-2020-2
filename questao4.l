
%{ 

%} 

id ([a-zA-Z]+[a-zA-Z0-9\_]*)

%%
then {printf("Palavra reservada THEN\n");}
else {printf("Palavra reservada ELSE\n");}
{id} {printf("%s É identificador\n", yytext);} 
\< {printf("Operador relacional menor: %s\n", yytext);}
\> {printf("Operador relacional maior: %s\n", yytext);}
\<\= {printf("Operador relacional menor igual: %s\n", yytext);}
\>\= {printf("Operador relacional maior igual: %s\n", yytext);}
\= {printf("Operador relacional igual: %s\n", yytext);}
\<\> {printf("Operador relacional diferente: %s\n", yytext);}
[0-9]+(\.[0-9])?(\E([\+\-])?[0-9])? {printf("%s É número \n", yytext);} 
\"
\n
\t 
\/\/.*
\/\*.*\*\/
. {printf("Cadeia rejeitada \n"); return 0;} 
%% 

int yywrap(){} 
int main(){ 

FILE *fp; 
char filename[50]; 
printf("Digite o nome do arquivo: \n"); 
scanf("%s",filename); 
fp = fopen(filename,"r"); 
yyin = fp;

yylex();


return 0; 
} 
