# Preencha a lista com os números mecanográficos dos autores.
AUTORES = [118736, 119405]

import random
import string               #Possibilita a criação de uma lista com o abecedário.
import os                   #Possibilita o codigo comunicar diretamente com o terminal durante o funcionamento deste
from time import sleep      #Possibilita que o código espere um certo tempo antes de executar a próxima linha
import re                   #Possibilita a remoção de acentos a palavras

# Defina funções aqui.
def board(errors, palavra_escondida, tamanho):
    #Esta função irá imprimir o tabuleiro de acordo com o número de erros com a variável local errors.
    print('--JOGO DA FORCA--                   Digite "exit" para sair')
    #Inicio do tabuleiro.
    print('____')
    
    #Tabuleiro que irá variar o aspeto dependendo da quantidade de erros.
    if errors > 0:
        print('|  |')
    else:
        print('|')
        
    if errors > 1:
        print('|  o')
    else:
        print('|')

    if errors < 3:
        print('|')
    elif errors == 3:
        print('|  |')
    elif errors == 4:
        print('| /|')
    else:
        print("| /|\ ")        
    
    if errors < 6:
        print('|')
    elif errors == 6:
        print('| /')
    else:
        print("| / \ ")
    
    #Final do tabuleiro
    print('|_____')
    print()
    
    print(palavra_escondida)
    print('Nº Letras:', tamanho)     #É apresentado o nº de letras da palavra para o jogador poder tentar adivinhar a palavra imediatamente
    
    #Irá indicar a quantidade de erros que o utilizador já fez, bem como as letras que já foram respondidas e as letras por utilizar
    print('ERROS:', errors)
        #Caso os erros sejam 6 é apresentado um sinal de perigo, pois mais um erro o jogo termina.
    if errors == 6:
        print('PERIGO!!!')
        
    print()
    
def letras(lettersnotthere, letterstouse):
    #É apresentado uma lista das letras que foram respondidas incorretamente, juntamente com aquelas que restam para responder.
    print('Letras não correspondentes:', lettersnotthere)
    print('Possíveis apostas:', letterstouse)
 
 
 
def jogada(errors, letterstouse, lettersnotthere, palavra_escondida, end, secret, tamanho):
#Esta função é responsável por receber o input do jogador, bem como verificar se foram atingidas condições para o jogo terminar

        while True:         #A jogada irá repetir-se até o jogador inserir um input válido
            play = input('\nPalpite: ').upper()     #'.upper()' converte a string para letras maiúsculas
            play = remover_acentos(play)          #Os acentos são removidos ao input para posteriormente se verificar se a jogada é válida
            print()
            
            if play == "EXIT":                  #O jogador tem a opção de interromper o jogo
                end = True
                break
                
            if len(play) == len(secret) and play.isalpha():        #É possivel tentar acertar a palavra completa, se for digitado um input com a mesma largura que a palavra secreta e apenas tiver letras
                if play == secret or play == remover_acentos(secret):   #O jogador pode dijitar a palavra sem nenhum acento e também é cantabilizado certo
                    end = True
                    palavra_escondida = secret     #A palavra_escondida é completamente revelada se o jogador acertar
                else:
                    errors += 1
                    print("Palavra errada")
                    if errors == 7:     #Condição para o jogo acabar
                        end = True
                    sleep(1)      #O programa irá esperar 1 segundo, para o utilizardor ler o feedback da sua jogada
                break
                
            elif len(play) != 1 or not play.isalpha():      #Uma condição verifica se o input utilizado não é apto para a jogada
                print('ERRO!!! Digite apenas uma letra ou uma palvra com {} letras!'.format(tamanho))      #Se não for é indicado uma messagem de erro e uma nova jogada é feita
        
            elif play in letterstouse:       #Jogada válida (caracteres acentuados não são válidos, sendo estes adicionardos à palavra posteriormente)
                letterstouse.remove(play)          #O valor do input será retirado da lista das letras a utilizar
        
                if play in remover_acentos(secret):                                    #É verificado se o input está presente à palavra secreta
                    print(play, 'faz parte da palavra secreta!')
                    palavra_escondida = palavra(play, palavra_escondida, secret, tamanho)   #'palavra_escondida' será atualizada

                else:
                    print('A letra não pertence à palavra!')      #Input não pertence à palavra, é adicionado a lettersnotthere e é adicionado 1 aos errors
                    lettersnotthere.append(play)
                    errors +=1

                if errors == 7 or '_' not in palavra_escondida:      #Condição para terminar o jogo
                        end = True
                
                sleep(1)
                break         #Termina a jogada

            elif play in lettersnotthere or play in remover_acentos(secret):
                print('Letra já digitada!')      #Ambas as condições anteriores serem falsas significa que a letra já foi digitada e é pedida uma nova jogada
            else:
                print('Insira uma possível aposta.')
        return (errors, letterstouse, lettersnotthere, palavra_escondida, end)


def palavra(play, palavra_escondida, secret, tamanho):
    #Função -> Atualiza a variável 'palavra_escondida' de para uma versão desta contendo as letras descobertas
    #L{} são listas com todos os acentos possíveis que podem aparecer em palavras portuguesas
    LC = ['C', 'Ç']
    LA = ['A', 'Á', 'À', 'Ã', 'Â'] 
    LE = ['E', 'É', 'Ê']             
    LI = ['I', 'Í']            
    LO = ['O', 'Ó', 'Õ', 'Ô'] 
    LU = ['U', 'Ú']
    acentos = [LC, LA, LE, LI, LO, LU]
    acentos_possiveis = ['C', 'A', 'E', 'I', 'O', 'U'] #letras em que é possível existir acentos
    
    #É verificardo se a letra digitada é uma letra onde pode existir acentos
    if play in acentos_possiveis:
        #Se for, é procurado qual a L{} da letra digitada
        for L in acentos:
            if play in L:
            #Verificação para todas as letras da palavra secreta
                for x in range(tamanho):
                    #Verificação para todos os tipo de acento dessa letra
                    for t in range(len(L)):
                        #Se o caracter for igual ao da palavra secreta, esse caracter é revelado na palavra escondida
                        if secret[x] == L[t]:
                            palavra_escondida = palavra_escondida[:x] + L[t] + palavra_escondida[x + 1:]
    else:
        #Para todos os caracteres da que não podem ter acentos
        for x in range(tamanho):     
            if secret[x] == play:
                palavra_escondida = palavra_escondida[:x] + play + palavra_escondida[x + 1:]
    return palavra_escondida   

def remover_acentos(raw_text):
#Função responsável por substituir caracteres acentuados pela sua versão não acentuada
    raw_text = re.sub(u"[ÀÁÃÂ]", 'A', raw_text)
    raw_text = re.sub(u"[ÉÊ]", 'E', raw_text)
    raw_text = re.sub(u"[Í]", 'I', raw_text)
    raw_text = re.sub(u"[ÓÕÔ]", 'O', raw_text)
    raw_text = re.sub(u"[Ú]", 'U', raw_text)
    raw_text = re.sub(u"[Ç]", 'C', raw_text)
    return raw_text
    
def main():
    from wordlist import words1, words2
    
    # Descomente a linha que interessar para testar
    #words = words1              # palavras sem acentos nem cedilhas.
    #words = words2             # palavras com acentos ou cedilhas.
    words = words1 + words2    # palavras de ambos os tipos
   
   
    import sys                  # INCLUA estas 3 linhas para permitir
    if len(sys.argv) > 1:       # correr o programa com palavras dadas:
        words = sys.argv[1:]    #   python3 forca.py duas palavras

    # Escolhe palavra aleatoriamente
    secret = random.choice(words).upper()

    # Complete o programa
    end = False                                        #Condição para acabar o jogo
    errors = 0                                         #Variável que conta o número de erros
    lettersnotthere = []                              #Variável que indica letras usadas em jogadas fracassadas
    letterstouse = list(string.ascii_uppercase)     #Variável que indica todas as possibilidades de jogada, que utiliza a função importada 'string'
    palavra_escondida = '_' * len(secret)               #Palavra secreta é transformada em '_' para o utilizador adivinhar
    tamanho = len(secret)
    os.system('cls')                                #Comunica ao terminar para limpar a tela.
    while not end:      #Este loop irá ocorrer enquanto a variavel end não for alterada na função 'jogada'
        board(errors, palavra_escondida, tamanho)
        letras(lettersnotthere, letterstouse)
        (errors, letterstouse, lettersnotthere, palavra_escondida, end) = jogada(errors, letterstouse, lettersnotthere, palavra_escondida, end, secret, tamanho)
        os.system('cls')                                #Limpa a tela para só haver um Board.
    
    #Quando o jogo terminar é impresso o Board, e é apresentada a palavra secreta e é verificado o resultado do jogo
    board(errors, palavra_escondida, tamanho)
    print('A palavra era', secret)
    if '_' not in palavra_escondida:                #Condição para vitoria
        print('\nVENCESTE! PARABÉNS!')
    elif errors == 7:                                 #Condição para derrota
        print('\nPERDESTE!')       
    else:
        print("\nJOGO INTERROMPIDO.")                   #Se nenhuma das condições acontecer, foi porque o jogo foi interrompido (foi digitado 'EXIT')
    print('\n--FIM DO JOGO!--')
    
if __name__ == "__main__":
    main()