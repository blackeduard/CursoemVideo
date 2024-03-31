num=int(input('\033[35mDigite um número qualquer:\033[m '))
x=num%2
if x == 1:
    print('\033[37mO número {} é\033[m \033[36mÍMPAR\033[m'.format(num))
else:
    print('\033[37mO número {} é\033[m \033[36mPAR\033[m'.format(num))