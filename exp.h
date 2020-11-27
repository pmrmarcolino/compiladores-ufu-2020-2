#include <stdio.h>
#include <stdlib.h>

#define FALSE 0
#define TRUE 1
#define TOK_NUM 0
#define TOK_ERRO 3
#define TIPO 0
#define ID 0
#define INT 0
#define REAL 1
#define CHAR 2
// operadoradores
#define RELOP 0
#define MAIOR 0
#define MENOR 1
#define MENORIGUAL 2
#define MAIORIGUAL 3
#define DIF 4
#define IGUAL 5
#define ATT 6
#define ATRIB 0
//
#define ARITOP 1
#define MAIS 0
#define MENOS 1
#define MULT 2
#define DIV 3
// pontuação
#define APAR 0
#define FPAR 1
#define COMMA 3
#define OPENBRACES 4
#define CLOSEBRACES 5
#define SEMICOLON 6
// palavras reservadas
#define PROGRAMA 0 
#define SE 1
#define ENTAO 2
#define SENAO 3
#define ENQUANTO 4
#define FACA 5

typedef struct {
    int tipo;
    int valor;
    } Token;

extern Token *token();
extern Token *yylex();
extern FILE *yyin;