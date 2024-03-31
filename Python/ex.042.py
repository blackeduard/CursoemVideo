a=float(input('Primeiro segmento: '))
b=float(input('Segundo segmento: '))
c=float(input('Terceiro segmento: '))
if b-c < a < b+c or a-c < b < a+c or a-b < c < a+b:
    print('Os segmentos {},{},{} podem formar um triângulo'.format(a,b,c))
    if a == b == c:
        print('E este triângulo é um EQUILÁTERO.')
    elif a == b or b == c or c == a:
        print('E este triângulo é um ISÓSCELES.')
    else:
        print('E este triângulo é um ESCALENO.')
else:
    print('Os segmentos, não podem formar um triângulo')
