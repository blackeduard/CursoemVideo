from time import sleep
from random import choice
nm1 = str(input('Primeiro aluno: '))
nm2 = str(input('Segundo aluno: '))
nm3 = str(input('Terceiro aluno: '))
nm4 = str(input('Quarto aluno: '))
print('\033[36mOrganizando...\033[m')
sleep(3)
print('\033[34mGerando o nome...\033[m')
sleep(4)
lista = [nm1,nm2,nm3,nm4]
resultado=choice(lista)
print('O aluno escolhido foi \033[1;33m{}\033[m'.format(resultado))