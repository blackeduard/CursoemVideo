v = 0
for c in range(0,6):
    s=int(input('Digite um número: '))
    if s%2==0:
        v+=s
print('Os valores ímpares foram \033[31mdesconsiderados\033[m, logo o valor será {}'.format(v))