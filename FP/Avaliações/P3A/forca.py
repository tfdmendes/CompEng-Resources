AUTORES = [118638, 119467]  # P3A

import random
from unidecode import unidecode         #Para o programa funcionar, é necessário ter esta biblioteca instalada
                                        #Caso não esteja instalada, é preciso ir ao terminal e escrever "pip install unidecode" para realizar a sua instalação.


def numero_erros(aposta, character, erros=0):                               
    character_sem_acentos = [remover_acentos(c) for c in character]         #Em cada caracter será removido o acento, caso essa letra o tenha e será formada uma lista com cada caracter.
    if aposta not in character_sem_acentos:                                 #Se a aposta não estiver nessa lista criada de todos os caracteres sem acentos, então irá ser contabilizado um erro.
        return erros + 1
    return erros


def letras_disponiveis(aposta, alfabeto):                               #A letra da aposta será removida da lista alfabeto.
    if aposta in alfabeto:
        alfabeto.remove(aposta)
    return alfabeto


def posicao_letra(aposta, character):                                                           #A parte 'index for index' permite criar uma lista com os índices
    return [index for index, char in enumerate(character) if remover_acentos(char) == aposta]   #dos caracteres que verifiquem como verdadeira a condição 'remover_acentos(char) == aposta'.


def substituicao(aposta, character, tracos):
    posicoes = posicao_letra(aposta, character)                                         #Por todas as posições em que se verifique a condição 'char == aposta',
    for posicao in posicoes:                                                            #Os traços mantêm-se antes e depois do índice dessa posição e nessa posição,
        tracos = tracos[:posicao] + character[posicao] + tracos[posicao + 1:]           #O traço será substituído pela letra da aposta.
    return tracos


def boneco(erros):
    if erros==0:
        desenho = print("""____
|    
|  
|   
|   
-------""")
    elif erros==1:
        desenho = print("""____
|    |
|  
|  
|  
-------""")
    elif erros==2:
        desenho = print("""____
|    |
|    O
|   
|  
-------""")
    elif erros==3:
        desenho = print("""____
|    |
|    O
|   /
|   
-------""")
    elif erros==4:
        desenho = print("""____
|    |
|    O
|   /|
|   
-------""")
    elif erros==5:
        desenho = print("""____
|    |
|    O
|   /|\\
|   
-------""")
    elif erros==6:
        desenho = print("""____
|    |
|    O
|   /|\\
|   / 
-------""")
    elif erros==7:
        desenho = print("""____
|    |
|    O
|   /|\\
|   / \\
-------""")

        return desenho



def remover_acentos(texto):                                             #Através da biblioteca unidecode é possível remover os acentos dos caracteres da variável secret.
    return unidecode(texto).upper()


def informacao_jogo(tracos, alfabeto, letras_usadas, erros):            #Esta função apresenta todas as informações que são necessárias para se realizar o jogo
    print("\nErros: ", erros)                                           #E para ajudar o utilizador.
    boneco(erros)
    print("\nPalavra: ", tracos)
    print("Letras disponíveis:{}".format(alfabeto))
    print("Letras usadas:{}".format(list(letras_usadas)))


def input_utilizador(letras_usadas, alfabeto):                          #Esta função evita que o utilizador repita as letras que decide apostar
    aposta = remover_acentos(input("Aposta:"))                          #E que coloque apostas que não são aceitas para a execução do jogo.
    while aposta in letras_usadas:
        print("Você já usou esta letra. Tente outra.")
        aposta = remover_acentos(input("Aposta:"))
    while aposta not in alfabeto :
        print("Resposta inválida, tente novamente.")
        aposta = remover_acentos(input("Aposta:"))
    return aposta


def atualizar_dados(alfabeto, aposta, letras_usadas, erros, tracos, character):        #Esta função contém a informação que vai ser atualizada a cada nova aposta.    
    letras_usadas.add(aposta)
    erros = numero_erros(aposta, character, erros)
    tracos = substituicao(aposta, character, tracos)
    letras_disponiveis(aposta, alfabeto)
    return letras_usadas, erros, tracos, alfabeto, character


def main():
    from wordlist import words1, words2
    words = words1 + words2

    import sys
    if len(sys.argv) > 1:
        words = sys.argv[1:]

    secret = random.choice(words).upper()
    tracos = len(secret) * ("_")
    alfabeto = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U",
                "V", "W", "X", "Y", "Z"]
    character = list(secret)


    print("Bem-vindo ao jogo da forca!")
    print("Tente adivinhar a palavra!")
    letras_usadas = set()                       #Utiliza-se set para garantir que não apareça mais do que uma vez a letra usada como aposta.
    erros = 0

    while erros < 7 and tracos != secret:
        informacao_jogo(tracos, alfabeto, letras_usadas, erros)
        aposta = input_utilizador(letras_usadas, alfabeto)
        letras_usadas, erros, tracos, alfabeto, character = atualizar_dados(alfabeto, aposta, letras_usadas, erros, tracos, character)          #As variáveis são atualizadas recorrendo à função referida.

    if erros == 7:
        print("\nErros: ", erros)
        boneco(erros)
        print("\nPerdeu!")
        print("A palavra era: ", secret)

    else:
        print("\nGanhou!")
        print("A palavra era: ", secret)


if __name__ == "__main__":
    main()
