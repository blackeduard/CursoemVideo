from time import sleep
prc=float(input('Qual é o preço do produto? R$'))
des=float(input('Qual é o desconto? '))
a=prc*des
b=a/100
prcdes=prc-b
print('\033[35mComputando...\033[m')
sleep(4)
print('O produto que custava \033[1;31mR${}\033[m, na promoção com desconto de \033[1;31m{}%\033[m vai custar \033[1;31mR${:.2f}\033[m'.format(prc,des,prcdes))
sleep(3)