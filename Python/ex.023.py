cid=str(input('Em que cidade você nasceu? ')).lower()
x=cid.split()
if x[0] == 'santo':
    print('Sua cidade começa com Santo')
elif x[0] == 'belo':
    print('Sua cidade começa com Belo')
else:
    print('\033[31mTente novamente!\033[m')