from datetime import date
ano=int(input('Ano de nascimento: '))
ano1=date.today().year
print('Quem nasceu em {} tem {} anos em {}.'.format(ano,ano1-ano,ano1))
AM=18
if ano1-ano < AM:
    soma=AM-(ano1-ano)
    print('Ainda faltam {} anos para o alistamento'.format(soma))
    print('Seu alistamento será em {}.'.format(ano1+soma))
elif ano1-ano > AM:
    soma=(ano1-ano)-AM
    print('Você já deveria ter se alistado há {} anos'.format(soma))
    print('Seu alistamento foi em {}.'.format(ano1-soma))
elif ano1-ano == AM:
    print('Você tem que se alistar IMEDIATAMENTE!')