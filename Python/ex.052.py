nm = int(input('Digite o número: '))
pl = 0
for c in range(1, nm+1):
    if nm%c == 0:
        print('\033[32m', end='')
        print(format(c), end=' ')
        pl += 1
    else:
        print('\033[31m', end='')
        print(format(c),end=' ')
if pl == 2:
    print('\033[m')
    print('Número primo')
else:
    print('\033[m')
    print('Não é primo')