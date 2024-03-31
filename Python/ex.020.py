from random import shuffle
p1=str(input('Primeiro aluno: '))
p2=str(input('Segundo aluno: '))
p3=str(input('Terceiro aluno: '))
p4=str(input('Quarto aluno: '))
lista=[p1,p2,p3,p4]
shuffle(lista)
print('A ordem da lista será')
print(lista)