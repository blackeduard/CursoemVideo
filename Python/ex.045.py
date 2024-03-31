from random import choice
from time import sleep
x=('\033[33m{}\033[33m'.format(('=-=-')*10)[:40])
print(x)
print('\033[mEscolha \033[1;37mPEDRA\033[m, \033[1;35mPAPEL\033[m ou \033[1;31mTESOURA\033[m')
print('''\033[37mPedra\033[m = \033[37m0\033[m
\033[35mPapel\033[m = \033[35m1\033[m
\033[31mTesoura\033[m = \033[31m2\033[m''')
escolha=int(input('Sua escolha = '))
lista = [0,1,2]
escolhapc=choice(lista)
if escolha == 0:
    print('Sua escolha = \033[1;37mPedra\033[m')
    sleep(2)
    if escolhapc == 0:
        print('\033[37mPedra\033[m, \033[33mnós empatamos!\033[m Vamos de novo?')
    elif escolhapc == 1:
        print('\033[35mPapel\033[m, \033[32meu venci!\033[m Vamos de novo?')
    elif escolhapc == 2:
        print('\033[31mTesoura\033[m, \033[1;31meu perdi!\033[m Quero uma revanche!')
elif escolha == 1:
    print('Sua escolha = \033[1;35mPapel\033[m'.format(escolha))
    sleep(2)
    if escolhapc == 0:
        print('\033[37mPedra\033[m, \033[1;31meu perdi!\033[m Quero uma revanche!')
    elif escolhapc == 1:
        print('\033[35mPapel\033[m, \033[33mnós empatamos!\033[m Vamos de novo?')
    elif escolhapc == 2:
        print('\033[31mTesoura\033[m, \033[32meu venci!\033[m Vamos de novo?')
elif escolha == 2:
    print('Sua escolha = \033[1;31mTesoura\033[m'.format(escolha))
    sleep(2)
    if escolhapc == 0:
        print('\033[37mPedra\033[m, \033[32meu venci!\033[m Vamos de novo?')
    elif escolhapc == 1:
        print('\033[35mPapel\033[m, \033[1;31meu perdi!\033[m Quero uma revanche!')
    elif escolhapc == 2:
        print('\033[31mTesoura\033[m, \033[33mnós empatamos!\033[m Vamos de novo?')
else:
    print('\033[1;31mTente novamente...\033[m')