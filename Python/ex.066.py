soma = cont = 0
while True:
    num = int(input('Digite um número[999 para parar]: '))
    if num == 999:
        break
    cont += 1
    soma += num
if cont == 1:
    print(f'Você digitou apenas {cont} número e o valor dele é de {soma}')
else:
    print(f'Você digitou {cont} números e a soma entre eles é de {soma}')