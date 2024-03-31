from time import sleep
print('\033[1;31mA contagem regressiva irá iniciar.\033[m')
sleep(2)
print('...')
sleep(2)
for c in range(10, 0, -1):
    print(c)
    sleep(1)
print('\033[31mB\033[m\033[32mO\033[m\033[33mO\033[m\033[34mM\033[m\033[35m!\033[m')