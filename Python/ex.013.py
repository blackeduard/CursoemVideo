from time import sleep
prc=float(input('Qual é o salário do Funcionário? R$'))
aum=int(input('Qual é o aumento? '))
a=prc*aum
b=a/100
aument=b+prc
print('\033[35mComputando...\033[m')
sleep(4)
print('Um Funcionário que ganhava \033[1;31mR${}\033[m, com \033[1;31m{}%\033[m de aumento, passa a receber \033[1;31mR${:.2f}\033[m'.format(prc,aum,aument))
sleep(3)