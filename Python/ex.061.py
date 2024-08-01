p1 = int(input('Digite o primeiro termo da P.A.: '))
r = int(input('Digite a razão da P.A.: '))
c = 1
if r == 0:
    print('A P.A. é Constante')
elif r > 0:
    print('A P.A. é Crescente')
else:
    print('A P.A. é Decrescente')
while c != 11:
    resultado = p1 + (c - 1) * r
    if c == 1:
            print('({},'.format(resultado), end=' ')
    elif c != 10:
        print('{},'.format(resultado), end=' ')
    else:
        print('{})\n'.format(resultado),end='')
    c += 1
print('Fim do Programa...')