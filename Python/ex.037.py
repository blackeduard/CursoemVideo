from time import sleep
num=int(input('Digite um número inteiro: '))
print('''Escolha uma das bases para conversão:
[ 1 ] Converter para BINÁRIO
[ 2 ] Converter para OCTAL
[ 3 ] Converter para HEXADECIMAL''')
esc=int(input('Sua opção: '))
if esc == 1:
    x=bin(num)
    print('O número {} convertido para BINÁRIO é igual a {}'.format(num, x[2:]))
elif esc == 2:
    x=oct(num)
    print('O número {} convertido para OCTAL é igual a {}'.format(num, x[2:]))
elif esc == 3:
    x=hex(num)
    print('O número {} convertido para HEXADECIMAL é igual a {}'.format(num, x[2:]))