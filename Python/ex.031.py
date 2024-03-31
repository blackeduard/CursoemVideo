prc=int(input('Qual é a distância da sua viagem? '))
print('Você está prestes a começar uma viagem de {:.1f}Km'.format(prc))
if prc <= 200:
    print('E o preço da sua passagem será de R${:.2f}'.format(prc*0.5))
else:
    print('E o preço da sua passagem será de R${:.2f}'.format(prc*0.45))