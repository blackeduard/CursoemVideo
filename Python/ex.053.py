frase = input('Digite uma frase: ').upper().split()
frase = "".join(frase)
inverso = frase[::-1]
print('O inverso de "{}" é "{}"'.format(frase, inverso))
if frase == inverso:
    print('Essa frase se qualifica como um palíndromo!')
else:
    print('Essa frase não se qualifica como um palíndromo.')