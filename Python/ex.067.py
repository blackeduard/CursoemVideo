frase = 'Tabuada'
print('--------'*5)
print(f'{frase:^40}')
print('--------'*5)
while True:
    num = int(input('Digite um número para ver sua tabuada: '))
    if num < 0:
        break
    c = 1
    print('~~~~~~~~'*5)
    while c != 11:
        resultado = num * c
        print(f'{num} x {c} = {resultado}')
        c += 1
    print('~~~~~~~~'*5)
print('FIM DO PROGRAMA...')