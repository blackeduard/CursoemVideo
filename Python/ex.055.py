pessoas = int(input('Digite quantas pessoas serão: '))
for c in range(pessoas):
    peso = float(input('Digite o peso da {}° pessoa: '.format(c+1)))
    if c == 0:
        maior = peso
        menor = peso
    if maior < peso:
        maior = peso
    elif menor > peso:
        menor = peso
    elif menor == peso == maior:
        menor = peso = maior
if menor == peso == maior:
    print('Todos os pesos são iguais')
else:
    print('O maior peso é {}Kg e o menor é {}Kg'.format(maior, menor))
