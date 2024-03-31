from time import sleep
dias=int(input('Quantos dias alugados? '))
kilometro=float(input('Quantos KM rodados? '))
print('\033[35mComputando...\033[m')
sleep(4)
print('O total a pagar é de \033[1;31mR${:.2f}\033[m'.format(dias*60+kilometro*0.15))