nota1=float(input('Primeira nota: '))
nota2=float(input('Segunda nota: '))
tot=(nota1+nota2)/2
print('Sua nota foi {:.1f} por essa nota que você recebeu'.format(tot))
if tot > 7:
    print('Você está \033[1;32mAPROVADO\033[m, parabéns continue assim!')
if 5 < tot < 6.9:
    print('Você está de \033[1;33mRECUPERAÇÃO\033[m, mais um pouco e você conseguia')
if tot < 5:
    print('Você está \033[1;31mREPROVADO\033[m, se esforce mais da próxima vez')