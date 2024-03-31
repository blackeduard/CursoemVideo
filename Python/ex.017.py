from time import sleep
from math import hypot,pow,sqrt
co=float(input('Comprimento do cateto oposto: '))
ca=float(input('Comprimento do cateto adjacente: '))
print('\033[35mCalculando os valores...\033[m')
sleep(4)
print('\033[1;34mGerando a hipotenusa...\033[m')
sleep(2)
print('A hipotenusa vai medir \033[1;31m{:.2f}\033[m'.format(hypot(co,ca)))
# 1° MANEIRA DIFERENTE
#hip=sqrt(pow(co,2)+pow(ca,2))
#print('A hipotenusa vai medir \033[1;31m{:.2f}\033[m'.format(hip))

# 2° MANEIRA DIFERENTE
#elevado=co**2+ca**2
#hip=elevado**(1/2)
#print('A hipotenusa vai medir \033[1;31m{:.2f}\033[m'.format(hip)