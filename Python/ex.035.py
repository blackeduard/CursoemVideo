x=float(input('informe o 1° valor: '))
y=float(input('Informe o 2° valor: '))
z=float(input('Informe o 3° valor: '))
sm1=x+y
sm2=y+z
sm3=z+x
if sm1>z and sm2>x and sm3>y:
    print('Os segmentos \033[32mPODEM\033[m formar um triângulo'.format(x,y,z))
else:
    print('Os segmentos \033[31mNÂO PODEM\033[m formar um triângulo'.format(x,y,z))