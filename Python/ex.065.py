esc = 'S'
contagem = soma = 0
while esc == 'S':
    num = int(input('Digite um número: '))
    esc = input('Quer continuar [S/N]? ').upper().strip()
    while esc != 'S' and esc != 'N':
        print('Digite novamente...')
        esc = input('Quer continuar [S/N]? ').upper().strip()
    contagem += 1
    soma = soma + num
    media = soma/contagem
    if contagem == 1:
        maior = menor = num
    else:
        if num > maior:
            maior = num
        elif num < menor:
            menor = num
if media == soma:
    print('O único valor que temos é {}, tente novamente com mais de um valor...'.format(num))
else:
    print('Você digitou {} número e a média entre os valores é de {:.2f}\nO maior valor é {}\nO menor valor é {}'.format(contagem, media, maior, menor))