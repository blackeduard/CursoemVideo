n=str(input('Digite seu nome completo: ')).strip()
nome=n.split()
print('Muito prazer em te conhecer! \033[1;34m{}\033[m'.format(n.title()))
print('Seu primeiro nome é {}'.format((nome[0]).capitalize()))
print('Seu último nome é {}'.format(nome[len(nome)-1].capitalize()))
