from time import sleep
temp=float(input('Informe a temperatura em °C: '))
print('\033[35mComputando...\033[m')
sleep(4)
print('A temperatura de \033[1;31m{}°C\033[m corresponde a \033[1;31m{:.1f}°F!\033[m'.format(temp,(temp*1.8+32)))