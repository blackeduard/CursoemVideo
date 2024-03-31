nome=str(input('Qual é seu nome completo: ')).strip().upper()
nm=nome.split()
if 'SILVA' in nm:
    print('Seu nome tem Silva!')
else:
    print('Seu nome não tem a \033[31mpalavra-chave\033[m')
