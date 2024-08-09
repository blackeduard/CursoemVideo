# Crie um programa que leia o nome e o preço de vários produtos.
# O programa deverá perguntar se o usuário vai continuar.
# ? No final mostre:
# - Qual é o total gasto na compra;
# - Quantos produtos custam mais de R$1000.00;
# - Qual é o nome do produto mais barato.
total = c = quantidade = barato = 0
nome_barato = ''
frase = 'Loja On-line'
print(f'{frase:^24}')
while True:
    c += 1
    if c == 1:
        print(f'-=-=-| {c}° Produto |-=-=-')
    else:
        print(f'\n-=-=-| {c}° Produto |-=-=-')
    nome_produto = input('Nome: ')
    preco_produto = float(input('Preço: '))
    esc = input('Quer continuar [S/N]? ').upper()
    if esc != 'S' and esc != 'N':
        esc = input('Quer continuar [S/N]? ').upper()
    # todo Pensamento
    total += preco_produto
    if preco_produto > 1000:
        quantidade += 1
    if c == 1:
        nome_barato = nome_produto
        barato = preco_produto
    if barato > preco_produto:
        nome_barato = nome_produto
        barato = preco_produto
    if esc == 'N':
        break
print(f'O total gasto na compra é de: R${total:.2f}\n{quantidade} produtos custam mais de R$1000.00\n"{nome_barato}" é o produto mais barato')