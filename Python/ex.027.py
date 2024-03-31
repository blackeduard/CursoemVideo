from random import randint
from time import sleep
print('\033[33m-=-\033[m'*20)
print('\033[1;34mVou pensar em um número entre 0 e 5. Tente adivinhar...\033[m')
print('\033[33m-=-\033[m' *20)
num=int(input('Em que número eu pensei? '))
numa=randint(0,5)
print('\033[35mPROCESSANDO...\033[m')
sleep(4)
if num == numa:
    print('\033[1;33mVOCÊ GANHOU!\033[m Eu pensei no número {}'.format(numa))
    sleep(2)
    print('\033[36mComo você sabia?!\033[m')
else:
    print('\033[1;31mVOCÊ PERDEU!\033[m Eu pensei no número {}'.format(numa))
