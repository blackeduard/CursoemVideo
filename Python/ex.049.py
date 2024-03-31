n=int(input('Digite o número: '))
for c in range(1,11):
    print('{} \033[31mx\033[m {} \033[31m=\033[m {}'.format(n,c,n*c))