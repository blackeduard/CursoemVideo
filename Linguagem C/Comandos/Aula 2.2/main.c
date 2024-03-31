#include <stdio.h>
#include <stdlib.h>

int main(){
  int ano = 0;
  printf("Digite seu ano de nascimento: ");
  scanf("%d", &ano);
  ano = 2023-ano;
  if (ano < 0){
    printf("Espera, você ainda nem existe ;-;");
  }
  else{
    printf("Sua idade é de: %d anos", ano);
  }
}