from time import sleep
print('Você irá ver os números pares de 1 a 50.')
sleep(2)
for c in range(0 , 51, 2):
    print(c)
    sleep(1)
print('\033[1;31mFIM\033[m')