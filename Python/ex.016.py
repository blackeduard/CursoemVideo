from time import sleep
from math import trunc
valor=float(input('Digite um valor: '))
print('\033[35mAnalisando o valor...\033[m')
sleep(4)
print('O valor digitado foi \033[1;31m{}\033[m e a sua porção inteira é \033[1;31m{}\033[m'.format(valor,trunc(valor)))