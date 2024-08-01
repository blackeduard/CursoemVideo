termo=0
p1=int(input('Digite o primeiro termo: '))
r=int(input('Digite a razão: '))
if r == 0:
    print('A P.A. é uma constante')
elif r >= 1:
    termo = p1
    print('A P.A. é crescente com razão {} e a P.A. será:'.format(r))
    for c in range(1,11):
        p1 = termo + (c-1)*r
        print(p1, end=" => ")
    print('\033[31mFim da P.A.\033[m')
else:
    termo = p1
    print('A P.A. é decrescente com razão {} e a P.A. será:'.format(r))
    for c in range(1,11):
        p1 = termo + (c-1)*r
        print(p1, end=" => ")
    print('\033[31mFim da P.A.\033[m')