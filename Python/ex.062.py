p1 = int(input('Digite o primeiro termo da P.A: '))
r = int(input('Digite a razão da P.A: '))
verificador = c = marcador = 1
while verificador != 0:
    if marcador == 1:
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
                print('{})'.format(resultado))
            c += 1
        c1 = c
    else:
        while c != verificador:
            resultado = p1 + (c1 - 1) * r
            if verificador == c + 1:
                print('{}'.format(resultado))
            else:
                print('{},'.format(resultado), end=' ')
            c += 1
            c1 += 1
    verificador = int(input('Digite quantos termos deseja ver a mais(0 encerra): '))
    c = 0
    marcador += 1
print('Fim do Programa...')
