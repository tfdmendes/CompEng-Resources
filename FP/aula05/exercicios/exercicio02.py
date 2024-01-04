def inputFloatList():
    valores = []
    while True:
        user_input = input("Digite um valor (ou deixe em branco para parar): ")
        if user_input == "":
            break
        valores.append(float(user_input))
    #print(valores)
    return valores

def countLower(lst, v):
    contagem = 0
    for elemento in lst:
        if v > elemento:
            contagem += 1
    #print(contagem)
    return contagem

def minmax(lst):
    if not lst:
        return None
    valor_maximo = lst[0]
    valor_minimo = lst [0]
    for numero in lst:
        if numero > valor_maximo:
            valor_maximo = numero
        if numero < valor_minimo:
            valor_minimo = numero
    return valor_maximo, valor_minimo

lista = inputFloatList()
valor_maximo, valor_minimo = minmax(lista)


print(f"Minimo: {valor_minimo}, Maximo: {valor_maximo}")

if valor_maximo is not None and valor_minimo is not None:
    valor_medio = (valor_minimo + valor_maximo) / 2
    print(f"O valor médio entre eles será: {valor_medio}")


# Quantidade de valores inferiores ao valor médio
count_medio = countLower(lst = lista, v = valor_medio)
print(f"Existem {count_medio} valores inferiores ao valor médio")