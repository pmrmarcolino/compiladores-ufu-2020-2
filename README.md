# compiladores-ufu-2020-2

Como executar:

flex -DYY_DECL="Token * yylex()" lex.l

gcc -o exp lexer.c exp.c
