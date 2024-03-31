alt=float(input('Qual a sua altura? (m) '))
peso=float(input('Qual o seu peso? (Kg) '))
IMC=peso/(alt*alt)
print('O IMC dessa pessoa é de {:.1f}'.format(IMC))
if IMC < 18.5:
    print('Você está ABAIXO DO PESO normal')
elif 25 > IMC >= 18.5:
    print('Você está na faixa de PESO NORMAL')
elif 25 <= IMC < 30:
    print('Você está em Sobrepeso')
elif 30 <= IMC < 40:
    print('Você está em OBESIDADE!')
elif IMC > 40:
    print('Você está em OBESIDADE MÓRBIDA, cuidado!')