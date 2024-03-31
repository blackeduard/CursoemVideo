from random import randint
from time import sleep
print('\033[33m-=-\033[m'*20)
print('\033[1;34mVou pensar em um número entre 0 e 5. Tente adivinhar...\033[m')
print('\033[33m-=-\033[m'*20)
num=int(input('Em que número eu pensei? '))
print('\033[1;35mPROCESSANDO...\033[m')
sleep(3)
num2=randint(0,5)
if num2 == num:
    print('Você \033[33mganhou\033[m, Parabéns!')
else:
    print('\033[31mGanhei! Eu pensei no número {} e não no {}!\033[m'.format(num2,num))