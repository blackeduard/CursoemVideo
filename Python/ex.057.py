sexo = input('Sexo [M/F]: ').upper()
while sexo != 'M' and sexo != 'F':
    sexo = input('Digite novamente: ').upper()
if sexo == 'M':
    print('Seu sexo é masculino')
else:
    print('Seu sexo é feminino')