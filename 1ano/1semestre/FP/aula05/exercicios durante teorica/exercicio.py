# Criar um programa, em que até o utilizador introduzir uma string vazia, o prorgrama irá mostrar todos os items que introduzist previamente

def programa():
    lista = []
    n = input("Qual o numero? ")
    while n != "":
        lista.append(n)
        n = input("Qual o numero? ")

    return print(lista)

programa()