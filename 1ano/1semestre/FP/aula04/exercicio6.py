def leibniz(termos):

    soma_termos = 0
    for numero in range(termos):
        formula = ((-1)**numero) / (2*numero+1)
        soma_termos = soma_termos + formula

    return soma_termos * 4


termos = int(input("Quantos termos queres? "))

pi = leibniz(termos)

print(f"Pi = {pi}")


