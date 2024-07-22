val=float(input('Qual o valor da casa: R$'))
sal=float(input('Salário do comprador: R$'))
anos=int(input('Quantos anos de financiamento? '))
casa=val/(anos*12)
print("Para pagar uma casa de R${:.2f} em {} anos a prestação será de R${:.2f}".format(val, anos, casa))
if casa <= sal*(30/100):
    print("Empréstimo pode ser CONCEDIDO!")
else:
    print("Empréstimo NEGADO!")