c = n2 = 1
n1 = -1
print('-----'*5)
print('Sequência de Fibonacci')
print('-----'*5)
termo = int(input('Digite quantos termos você quer mostrar: '))
while c != termo + 1:
    resultado = n1 + n2
    if termo == 1:
        print('(0)')
    else:
        if c == 1:
            print('({},'.format(resultado), end =' ')
        elif c != termo:
            print('{},'.format(resultado), end =' ')
        else:
            print('{})'.format(resultado))
    n1 = n2
    n2 = resultado
    c += 1
print('Fim do Programa...')