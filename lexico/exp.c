#include "exp.h"

void inicializa(char *str) {
    FILE *f = fopen(str, "r");
    if (f == NULL)
        return FALSE;
    yyin = f; 
}

Token *proximo_token() { return yylex(); }

void imprime_token(Token *tok) { printf("%d %d", tok->tipo, tok->valor); }

int main(int argc, char **argv){
    char entrada[200];
    Token *tok;
    printf("\nAnalise Lexica da expressao: ");
    fgets(entrada, 200, stdin);
    inicializa(entrada);
    tok = proximo_token();
    while (tok != NULL)
    {
        imprime_token(tok);
        tok = proximo_token();
    }
    return 0;
}