# Preencha a lista com os números mecanográficos dos autores.
#P4I
#[120459]
#[119527]

#Biliotecas necessárias para o trabalho
import random
import os

def menu():          #Introdção ao jogo
    print('*'*30)
    print(' '*7, 'Jogo da Forca')
    print('*'*30)

def mostrarPalavra(secreta, letras_certas):      #Função que mostra os traços ou letras já acertadas da palavra secreta
    palavra_mostrada = ''
    for i in secreta:
        if i in letras_certas:
            palavra_mostrada += i + ' '
        else:
            palavra_mostrada += '_ '
    print(palavra_mostrada)

def boneco(contador):        #Funcão onde o é criada a figura da forca
  if contador==0:
    print("_________")
    print("|      |")
    print("|")
    print("|")
    print("|")
    print("|")
    print("|___________")
  elif contador==1:
   print("_________")
   print("|      |")
   print("|      O")
   print("|")
   print("|")
   print("|")
   print("|___________")
  elif contador==2:
   print("________")
   print("|      |")
   print("|      O")
   print("|      |")
   print("|")
   print("|")
   print("|___________")
  elif contador==3:
   print("________")
   print("|      |")
   print("|      O")
   print("|     /|")
   print("|")
   print("|")
   print("|___________")
  elif contador==4:
   print("________")
   print("|      |")
   print("|      O")
   print("|     /|\\")
   print("|")
   print("|")
   print("|___________")
  elif contador==5:
   print("________")
   print("|      |")
   print("|      O")
   print("|     /|\\")
   print("|     /")
   print("|")
   print("|___________")
  elif contador==6:
   print("________")
   print("|      |")
   print("|      O")
   print("|     /|\\")
   print("|     / \\")
   print("|")
   print("|___________")

def Pergunta(lista, contador, tentativas, secreta):  #Aqui é dado print na figura consuante os erros já feito
    boneco(contador)                                 #Perunta-se a aposta do jogador e verifica-se vários erros
    print(f'Tens {contador} erros')                  
    for i in range(len(lista)):
        print(lista[i], end=' ')
    tenta = input(f'\nAposta: ').upper()
    while tenta.isdigit()==True:
        print('Erro, Digite algo válido')
        tenta = input(f'\nAposta: ').upper()
    secreta1 = secreta.upper()
    for i in secreta1:
        if (i == 'Ç') and tenta == 'C':
            tenta = 'Ç'
        elif (i == 'É') and tenta == 'E':
            tenta = 'É'
        elif (i == 'Á') and tenta == 'A':
            tenta = 'Á'
        elif i == 'À' and tenta == 'A':
            tenta = 'À'
        elif i == 'Ã' and tenta =='A':
            tenta = 'Ã'
        elif i == 'Ó' and tenta == 'O':
            tenta = 'Ó'
        elif i == 'Õ' and tenta == 'O':
            tenta = 'Õ'
        elif i == 'Ú' and tenta == 'U':
            tenta = 'Ú'
        elif i == 'Í' and tenta == 'I':
            tenta = 'Í'
    tentativas.append(tenta)
    return tenta, tentativas

def modlista(lista, tenta, letras_certas, contador, certo_cont):  #Substituição das letras certas e erradas na lista
    if tenta in lista:
        if tenta in letras_certas:
           certo_cont+=1
           index = lista.index(tenta)
           lista[index] = '+'
        else:
            contador += 1
            index = lista.index(tenta)
            lista[index] = '-'
    else:
        print(f'Já tentaste a letra {tenta}.')


    return lista, certo_cont, contador

def verificar(tentativas, letras_certas, lista, secreta):  #Verifica-se se a aposta do jogador está na palavra secreta
    for i in secreta:
        if i in tentativas:
            letras_certas.append(i)
    return letras_certas


def main():
    lista = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U',
             'V', 'W', 'X', 'Y', 'Z']
    letras_certas = []      #Definição de todas as variáveis utilizadas durante todo o programa
    tentativas = []
    certo_cont = 0
    contador = 0
    from wordlist import words1, words2
    words = words1 + words2    # palavras de ambos os tipos
    import sys                  # INCLUA estas 3 linhas para permitir
    if len(sys.argv) > 1:       # correr o programa com palavras dadas:
         words = sys.argv[1:]    #   python3 forca.py duas palavras
    # Escolhe palavra aleatoriamente
    secreta = random.choice(words).upper()
    while True:
      os.system('cls')   #Utilizado para limpar a tela a cada repitição
      menu()  
      mostrarPalavra(secreta, letras_certas)
      tenta, tentativas = Pergunta(lista, contador, tentativas, secreta)
      letras_certas = verificar(tentativas, letras_certas, lista, secreta)
      lista, certo_cont, contador = modlista(lista, tenta, letras_certas, contador, certo_cont)
      if set(secreta) == set(letras_certas):        #Código para verificar o final do jogo
        os.system('cls')
        mostrarPalavra(secreta, letras_certas)
        print('Correto! A palavra era:', secreta)
        break
      elif contador == 6:
        os.system('cls')
        boneco(contador)
        mostrarPalavra(secreta, letras_certas)
        print('Errado! A palavra era:', secreta)
        break

if __name__ == "__main__":
    main()