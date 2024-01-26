import sys

def contar_letras():

    dicionario_letras = {}
    diretorio = "/Users/tiago/Documents/Universidade/FP/aula07/lusiadas.txt"

    with open(diretorio, "r", encoding= "utf-8") as lusiadas:
        linha = lusiadas.read()

    for caracter in linha:
        # verifica se o caracter é uma letra
        if caracter.isalpha():
            caracter = caracter.lower()

            #Para ver se a chave já está no dicionario
            if caracter in dicionario_letras:
                dicionario_letras[caracter] += 1
            else:
            # Caso ainda nao exista valor no dicionario, diz que o primeiro valor da key será 1
                dicionario_letras[caracter] = 1
    return dicionario_letras
       

def mostrar(dicionario):
    # Organiza o dicionario
    dicionario_organizado = dict(sorted(dicionario.items()))

    for key in dicionario_organizado:
        print(f"{key} : {dicionario[key]}")

def main():
    dicionario = contar_letras()
    mostrar(dicionario)

if __name__ == "__main__":
    main()