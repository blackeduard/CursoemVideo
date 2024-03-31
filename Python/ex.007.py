nt1=float(input('Primeira nota do aluno: '))
nt2=float(input('Segunda nota do aluno: '))
média=(nt1+nt2)/2
if média <= 4:
    print('\033[1;31mSe esforce mais!\033[m Sua média de {} e {} é igual a {:.1f}'.format(nt1,nt2,média))
else:
    print('\033[1;32mMeus PARABÉNS!\033[m Sua média de {} e {} é igual a {:.1f}'.format(nt1,nt2,média))