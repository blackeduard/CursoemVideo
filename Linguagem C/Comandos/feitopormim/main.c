#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(){
  srand(time(NULL));
  int esc;
  int comp;
  int i;
  printf("========================================\n");
  printf("  Mini-game de pedra, papel e tesoura\n");
  printf("========================================\n");
  printf("Pedra -> 1 / Papel -> 2 / Tesoura -> 3\n\n");
  printf("Digite sua escolha: ");
  scanf("%d", &esc);
  while (esc != 1 && esc != 2 && esc != 3){
    printf("Valor incorreto tente novamente: ");
    scanf("%d", &esc);
  }
  comp = rand() % 4;
  while (comp == 0){
    comp = rand() % 4;
  }
  if (esc == 1){
    if (comp == 1){
      printf("Empatamos! Nós escolhemos PEDRA, que tal irmos de novo?");
    }
    if (comp == 2){
      printf("Você perdeu, eu escolhi PAPEL, tente de novo se for capaz!");
    }
    if (comp == 3){
      printf("Você ganhou, eu escolhi TESOURA, parabéns!");
    }
  }
  if (esc == 2){
    if (comp == 1){
      printf("Você ganhou, eu escolhi PEDRA, parabéns!");
    }
    if (comp == 2){
      printf("Empatamos! Nós escolhemos PAPEL, que tal irmos de novo?");
    }
    if (comp == 3){
      printf("Você perdeu, eu escolhi TESOURA, tente de novo se for capaz!");
    }
  }
  if (esc == 3){
    if (comp == 1){
      printf("Você perdeu, eu escolhi PEDRA, tente de novo se for capaz!");
    }
    if (comp == 2){
      printf("Você ganhou, eu escolhi PAPEL, parabéns!");
    }
    if (comp == 3){
      printf("Empatamos! Nós escolhemos TESOURA, que tal irmos de novo?");
    }
  }
  return 0;
}