n = s = cont = 0
while True:
    n = int(input('Digite um número: '))
    if n == 999:
        break
    s += n
    cont += 1
# print('A soma vale {}'.format(s))
print(f'Você digitou {cont} números\nE a soma entre eles equivale a {s}')