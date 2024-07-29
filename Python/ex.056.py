quant = int(input('Digite a quantidade de pessoas: '))
quantf = 0
fixo = 0
for c in range(quant):

    # Valores solicitados NOME, IDADE e SEXO
    print("----- {}ª PESSOA -----".format(c+1))
    nome = input('Nome: ')
    idade = int(input('Idade: '))
    sexo = input('Sexo [M/F]: ').upper()

    # Detectando o nome do homem mais velho
    if sexo == 'M':
        if fixo == 0:
            fixo += 1
            maior = idade
            registrado = nome
        if idade > maior:
            maior = idade
            registrado = nome

    # Detectar quantas mulheres têm menos de 20 anos
    if sexo == 'F' and idade < 20:
        quantf += 1

    # Calculando a média da idade do grupo
    if c == 0:
        soma = idade
        if sexo == 'M':
            reg_nome = nome
    else: 
        soma = soma + idade

# Finalização da média
media = soma/quant
print('A média da idade do grupo é de {:.2f}'.format(media))

# Finalização contagem mulheres com menos de 20 anos
if quantf == 0:
    print('Nenhuma mulher tem menos que 20 anos'.format(quantf))
elif quantf == 1:
    print('{} mulher têm menos de 20 anos'.format(quantf))
else: 
    print('{} mulheres têm menos de 20 anos'.format(quantf))

# Finalização homem com maior idade
if fixo == 0:
    print('Não existem homens neste programa')
else:
    print('O nome do homem mais velho é {}'.format(registrado))
