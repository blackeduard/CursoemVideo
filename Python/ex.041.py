from datetime import date
x=int(input('Ano de nascimento: '))
y=date.today().year
idade=y-x
if idade <= 9:
    print('Você é um nadador MIRIM por ter {} anos, tenha cuidado onde anda na piscina'.format(idade))
elif idade <= 14:
    print('Você é um nadador INFANTIL por ter {} anos, se divirta na piscina'.format(idade))
elif idade <= 19:
    print('Você é considerado um nadador JUNIOR por ter {} anos, se divirta na piscina'.format(idade))
elif idade <= 20:
    print('Você é um nadador SÊNIOR por ter {} anos, se divirta na piscina'.format(idade))
elif idade > 20:
    print('Você é um nadador MASTER por ter {} anos, se divirta na piscina'.format(idade))