c = maior = homens = womans = 0
while True:
    c += 1
    print(f'-=-=-=-=-=-=-{c}° Pessoa-=-=-=-=--=-=-')
    idade = int(input('Idade: '))
    sexo = input('Sexo [M/F]: ').upper()
    while sexo != 'M' and sexo != 'F':
        sexo = input('Sexo [M/F]: ').upper()
    esc = input('Quer continuar [S/N]? ').upper()
    # todo Pensamento
    if idade >= 18:
        maior += 1
    if sexo == 'M':
        homens += 1
    if sexo == 'F' and idade < 20:
        womans += 1
    while esc != 'S' and esc != 'N':
        esc = input('Quer continuar [S/N]? ').upper()
    if esc == 'N':
        break
print(f'{maior} pessoas tem mais de 18 anos\n{homens} homens foram cadastrados\n{womans} mulheres tem menos de 20 anos')