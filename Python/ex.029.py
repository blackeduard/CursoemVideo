vel=int(input('Qual é a velocidade atual do carro? '))
if vel > 80:
    print('\033[31mMultado! Você excedeu o limite permitido que é de 80Km/h\033[m')
    print('\033[31mVocê deve pagar uma multa de\033[m \033[33mR${:.2f}!\033[m'.format((vel-80)*7))
print("\033[32mTenha um bom dia! Dirija com segurança!\033[m")