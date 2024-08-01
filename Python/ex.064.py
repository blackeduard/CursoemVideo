num = contagem = soma = 0
while num != 999:
    num = int(input('Digite um número [999 para parar]: '))
    if num != 999:
        contagem += 1
        soma = soma + num
if contagem == 1:
    print('Foi digitado apenas {} número.\nE seu valor é {}'.format(contagem, soma))
else:
    print('Foram digitados {} números.\nA soma entre esses números equivale a {}'.format(contagem, soma))