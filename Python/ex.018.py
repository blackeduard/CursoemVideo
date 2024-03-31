from math import sin,cos,tan,radians
from time import sleep
ang=int(input('Digite o ângulo que você deseja: '))
print('\033[35mCalculando seu SENO...\033[m')
sleep(3)
print('\033[36mCalculando seu COSSENO...\033[m')
sleep(3)
print('\033[34mCalculando sua TANGENTE...\033[m')
sleep(4)
print('O ângulo de \033[1;31m{}\033[m tem o SENO de \033[1;31m{:.2f}\033[m'.format(ang,sin(radians(ang))))
print('O ângulo de \033[1;31m{}\033[m tem o COSSENO de \033[1;31m{:.2f}\033[m'.format(ang,cos(radians(ang))))
print('O ângulo de \033[1;31m{}\033[m tem a TANGENTE de \033[1;31m{:.2f}\033[m'.format(ang,tan(radians(ang))))