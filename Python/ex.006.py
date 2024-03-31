from math import sqrt
nm1=int(input('Digite um número: '))
print('O dobro de \033[1;31m{}\033[m vale \033[4;34m{}\033[m.'.format(nm1,nm1*2))
print('O triplo de \033[1;31m{}\033[m vale \033[4;34m{}\033[m'.format(nm1,nm1*3))
print('A raiz quadrada de \033[1;31m{}\033[m é igual a \033[4;34m{:.2f}\033[m'.format(nm1,sqrt(nm1)))