frase = input("Digite uma frase: ").lower().split()
frase = "".join(frase)
palindromo = frase[::-1]
if frase == palindromo:
    print("Essa frase se qualifica como um palindromo")
else:
    print("Essa frase não se qualifica como um palindromo")