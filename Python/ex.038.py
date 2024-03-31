num1=float(input('Primeiro número: '))
num2=float(input('Segundo número: '))
if num1 > num2:
    print('O \033[31mPRIMEIRO\033[m valor é o \033[1;31mMAIOR\033[m')
elif num1 < num2:
    print('O \033[31mSEGUNDO\033[m valor é o \033[1;31mMAIOR\033[m')
elif num1 == num2:
    print('Os \033[36mDOIS VALORES\033[m são \033[1;36mIGUAIS\033[m')