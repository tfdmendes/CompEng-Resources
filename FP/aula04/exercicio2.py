def main():
    # Lista1 é a lista que indica os números que estamos a usar sucessivamente.
    lista1 =[]
    # Lista 2 faz cada um dos numeros ao quadrado
    lista2 = []
    # Lista 3 armazena os numeros (2**numero)
    lista3 = []

    for numero in range(1,20):
        lista1.append(numero)

        lista2.append(numero**2)

        lista3.append(2**numero)

    return print(lista1)
    return 


main()