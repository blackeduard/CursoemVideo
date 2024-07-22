val=float(input('Valor das compras: R$'))
print('Qual a forma de pagamento?')
print('''[ 1 ] À vista dinheiro/cheque
[ 2 ] À vista cartão
[ 3 ] 2x no cartão
[ 4 ] 3x ou mais no cartão''')
op=int(input('Qual é a opção? '))
if op == 1:
    print('Sua compra de R${:.2f} vai custar R${:.2f} no final.'.format(val,val-(val*(10/100))))
elif op == 2:
    print('Sua compra de R${:.2f} vai custar R${:.2f} no final.'.format(val,val-(val*(5/100))))
elif op == 3:
    print('Sua compra de R${:.2f} vai custar R${:.2f} as parcelas no final.'.format(val,val/2))
elif op == 4:
    des=str(input('Com ou sem juros? (use "com" ou "sem") ')).lower()
    if des == 'sem':
        par=int(input('Quantas parcelas? '))
        print('Sua compra será parcelada em {}x de R${:.2f} SEM JUROS'.format(par,val/par))
        print('Vai custar R${:.2f} no final'.format(val,val))
    elif des == 'com':
        par=int(input('Quantas parcelas? '))
        pj=val+(val*(20/100))
        print('Sua compra será parcelada em {}x de R${:.2f} COM JUROS'.format(par,pj/par))
        print('Sua compra de R${:.2f} vai custar R${:.2f} no final'.format(val, pj))