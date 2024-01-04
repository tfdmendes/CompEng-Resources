# Calculadora de IMC
# Recebe o peso e a altura, calcula o IMC e imprime o resultado juntamente com a categoria
def main():
    # receber peso e altura
    peso = float(input("Digite o peso (em kilogramas): ")) 
    altura = float(input("Digite a tua altura: "))     # para testar, use os valores 80 e 1.80 para peso e altura, respectivamente 
    # em que o resultado deve ser 24.69 e Saudável
    IMC(peso,altura)

def IMC(peso, altura):

    #calcular IMC

    IMC = peso / (altura**2)
    if IMC < 18.5:
        print("Magro. Come")
    elif IMC >= 18.5 and IMC < 25:
        print("Saudável")
    elif IMC >= 25 and IMC < 30:
        print("Forte")
    else:
        print("Obeso")

    #classificar IMC e imprimir resultado


if __name__ == "__main__":
    main()