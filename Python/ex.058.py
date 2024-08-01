from random import randint
num = randint(0,10)
escolha = int(input('Digite um número de 0 a 10: '))
tentativa = 0
while num != escolha:
    tentativa += 1
    print('Você ERROU!')
    escolha = int(input('Digite um número novamente de 0 a 10: '))
if tentativa == 0:
    print('Você acertou de primeira! Parabéns o número escolhido foi {}.'.format(num))
elif tentativa == 1:
    print('O número escolhido foi {}! Foi necessária {} tentativa.'.format(num, tentativa))
else:
    print('O número escolhido foi {}! Foram necessárias {} tentativas.'.format(num, tentativa))