def preços(idade):
    if idade <= 6:
        return 0.00
    elif idade > 6 and idade <= 12:
        return 2.50
    elif idade  >= 13 and idade <= 65:
        return 5.00
    else:
        return 2.50
    
def main():
# Variáveis para  a idade de cada membro da família
    idade_1 = int(input("Idade do primeiro membro da familia: "))
    idade_2 = int(input("Idade do segundo membro da familia: "))
    idade_3 = int(input("Idade do terceiro membro da familia: "))
    idade_4 = int(input("Idade do quarto membro da familia: "))

    preço_1 = preços(idade_1)
    preço_2 = preços(idade_2)
    preço_3 = preços(idade_3)
    preço_4 = preços(idade_4)


    preço_total = preço_1 + preço_2 + preço_3 + preço_4

    print(f"O preço total será {preço_total}€")

if __name__ == "__main__":
    main()