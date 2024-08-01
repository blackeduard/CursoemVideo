n = ''
par = impar = 0
while n != 0:
    n = int(input('Digite um valor: '))
    if n != 0:
        if n % 2 == 0:
            par += 1
        else:
            impar += 1
print('O número de números impares é igual a {} \nEnquanto o número de números pares é igual a {}'.format(impar, par))