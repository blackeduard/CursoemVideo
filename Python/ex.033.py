num1=int(input('Primeiro valor: '))
num2=int(input('Segundo valor: '))
num3=int(input('Terceiro valor: '))
if num1 == num2 == num3:
    print('Os três números são iguais')
menor=num1
if num2<num3 and num2<num1:
    menor=num2
if num3<num2 and num3<num1:
    menor=num3
maior=num1
if num2>num3 and num2>num1:
    maior=num2
if num3>num2 and num3>num1:
    maior=num3
print('O maior da sequência é {}, e o menor é {}'.format(maior,menor))