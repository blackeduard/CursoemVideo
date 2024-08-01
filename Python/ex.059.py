sair = True
num1 = int(input('Digite o primeiro número: '))
num2 = int(input('Digite o segundo número: '))
while sair == True:
    print('-=-=-='*5)
    print('[1] Somar\n[2] Multiplicar\n[3] Maior\n[4] Novos Números\n[5] Sair do Programa')
    print('-=-=-='*5)
    escolha = int(input('Digite a sua escolha: '))
    if escolha == 1:
        resultado = num1 + num2
        print('O resultado da soma de {} + {} é igual a {}'.format(num1, num2, resultado))
    elif escolha == 2:
        resultado = num1 * num2
        print('O resultado da multiplicação de {} x {} é igual a {}'.format(num1, num2, resultado))
    elif escolha == 3:
        if num1 > num2:
            print('O número {} é maior que o número {}'.format(num1, num2))
        elif num1 < num2:
            print('O número {} é menor que o número {}'.format(num1, num2))
        else:
            print('Os números são iguais')
    elif escolha == 4:
        num1 = int(input('Digite o primeiro número: '))
        num2 = int(input('Digite o segundo número: '))
    elif escolha == 5:
        sair = False
    else:
        escolha = int(input('Digite novamente a sua escolha: '))
print('Fim do Programa...')
