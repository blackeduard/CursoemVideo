from datetime import date
ano_atual = date.today().year
maior = 0
menor = 0
pessoas = int(input('Digite o número de pessoas: '))
for c in range(pessoas):
    ano = int(input('Digite o {}° ano de nascimento: '.format(c+1)))
    if (ano_atual - ano) >= 21:
        maior += 1
    else:
        menor += 1
if maior == 1:
    print('{} pessoa possue a maioridade enquanto {} pessoas ainda não a possuem'.format(maior, menor))
elif menor == 1:
    print('{} pessoas possuem a maioridade enquanto {} pessoa ainda não a possue'.format(maior, menor))
elif maior == pessoas:
    print('Todas as pessoas tem maioridade')
elif menor == pessoas:
    print('Todas as pessoas ainda não tem a maioridade')
else:
    print('{} pessoas possuem a maioridade enquanto {} pessoas ainda não a possuem'.format(maior, menor))
