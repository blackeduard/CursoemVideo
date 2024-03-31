from time import sleep
lar=float(input('Largura da parede: '))
alt=float(input('Altura da parede: '))
area=alt*lar
tinta=area/2
print('\033[35mComputando...\033[m')
sleep(3)
print('Sua parede tem a dimensão de \033[1;31m{}x{}\033[m e sua área é de \033[1;31m{}m²\033[m.'.format(lar,alt,area))
sleep(2)
print('Para pintar essa parede, você precisará de \033[1;31m{}l\033[m de tinta.'.format(tinta))
sleep(2)