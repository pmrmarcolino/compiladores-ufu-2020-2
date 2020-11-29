

/***
 definição de email valido:
 Letras maiúsculas e minúsculas
 Números de 0 a 9
 caractere ._ @***/

%% 
[a-zA-Z0-9.\_]+@[a-z0-9]+\.[a-z]+(\.[a-z]+)?$ {printf("É email\n");} 
([0-9]{3}\.?){2}[0-9]{3}\-?[0-9]{2}	  {printf(" É CPF\n");} 
.     {printf("Cadeia rejeitada \n"); return 0;} 
%% 

int yywrap(){} 
int main(){ 

    yylex(); 
    return 0; 
} 
