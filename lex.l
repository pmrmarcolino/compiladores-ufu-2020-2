%option noyywrap
%option nodefault
%option outfile="lexer.c" header-file="lexer.h"
%{
    #include "exp.h"
%}

LITERAL[\"[^\n\t]*\"]
DIGITO [0-9]+ 
LETRA [a-zA-Z_]+
ID {LETRA}[{LETRA}{DIGITO}]*
WS [\t\n]+
NUMERO {DIGITO}(.{DIGITO})?(E([+-])?{DIGITO})?

%%
[[:space:]] {}
{ID}        { return token(ID, yytext);} 
{NUMERO}    { return token(TOK_NUM, yytext);}
\{          { return token(OPENBRACES,yytext);}
\:\=        { return token(ATT, ATRIB);}
\+          { return token(RELOP, MAIS); }
-           { return token(RELOP, MENOS); }
\*          { return token(RELOP, MULT); }
\/          { return token(RELOP, DIV); }
\}          {}
{WS}        {}
{LITERAL}   {}
.           {return token(TOK_ERRO, 0);} 
%% 

Token tok;

Token * token (int tipo, int valor) {
    tok.tipo = tipo;
    tok.valor = valor;
    return &tok;
}