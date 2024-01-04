AUTORES = ["119378", "120202"]
# Autores: Tiago Mendes, Paulo Lacerda

import random

def normalize(l):
    # Transforma caracteres especiais especificos em caracteres normais especificos
    letras = {
        'Á': 'A',
        'À': 'A',
        'Â': 'A',
        'Ã': 'A',
        'É': 'E',
        'Ê': 'E',
        'Í': 'I',
        'Î': 'I',
        'Ó': 'O',
        'Ô': 'O',
        'Õ': 'O',
        'Ú': 'U',
        'Û': 'U',
        'Ç': 'C'
    }
    if l in letras:
        return letras[l]
    return l

def normalize_word(word):
    # Função para normalizar uma palavra (Remove caracteres especiais nela)
    normalized_word = ""
    for character in word:
        normalized_character = normalize(character)
        normalized_word += normalized_character 
    return normalized_word

def stage(n):
    # Devolve o estado do jogo consoante os erros do jogador
    from hangmanart import stages
    print(f"{stages[n]} Erros = {n}\n")

def game(word):

    word_length = len(word)
    end_of_game = False
    wrong_guesses = []
    erros = 0

    # Criar lista de "_" com o mesmo numero de letras da palavra selecionada
    display = []
    for _ in range(word_length):
        display += "_"

    while not end_of_game:
        guess = input("Adivinha uma letra: ").upper()
        guess = normalize(guess) # No caso de o utilizador introduzir uma letra especial como 'Á' ou 'Ç' o programa assume como 'A' ou 'C'
        
        # Verificar se o user submeteu um número ou mais do que 1 letra
        if not guess.isalpha() or len(guess) != 1: 
            print("Por favor, insere uma única letra não numérica.\n")
            continue

        # Se o utilizador já adivinhou uma letra correta, mostra a letra e avisa
        if guess in display:
            print(f"Já tinhas acertado a letra '{guess}'. Tenta outra letra.")
    
        # Verifica se a letra adivinhada está certa e substitui em display. 
        # ! Se o user escolher letra "C" e a palavra tiver "Ç" também substitui
        for position in range(word_length): 
            letter = word[position]
            letter_normalized = normalize(letter)
            if letter_normalized == guess:
                display[position] = letter

        # Caso o user esteja errado
        if guess in wrong_guesses:
            # Se o user tentar adivinhar a mesma letra errada novamente
            print(f"Já tentaste adivinhar '{guess}' e estava errada.")
        elif guess not in normalize_word(word):
            # Se o user adivinhar uma letra errada pela primeira vez
            print(f"A letra que adivinhaste '{guess}' não está na palavra.")
            wrong_guesses.append(guess)
                    
            #Contabilização do número de erros
            erros += 1
            if erros == 6:
                end_of_game = True
                print(f"Perdeste! A palavra era {word}")
        
        # Junta todos os elementos na lista e transforma-os numa String
        print(f"{' '.join(display)}")

        # Verifica se o user já acertou as letras todas
        if "_" not in display:
            end_of_game = True
            print("Parabéns! Acertaste a palavra!")
           
        stage(erros)    

def main():
    from hangmanart import logo
    from wordlist import words1, words2
    print(f"{logo}\n")

    print("""
    O jogo funciona da seguinte maneira:
    1 - Tens que adivinhar uma palavra
    2 - Apenas tens 6 tentativas!
    3 - Se a palavra tiver letras acentuadas como 'Á', 'Ç' ou 'É' não te preocupes, se apostares a letra base correspondente como 'A', 'E' ou 'C' também acertas
    """)
    
    words = words1 + words2 

    import sys 
    if len(sys.argv) > 1:
        words = sys.argv[1:]

    # Escolhe palavra aleatoriamente
    secret = random.choice(words).upper()

    # Para fins de debug
    #print(f"A solução é {secret}")
    game(secret)

if __name__ == "__main__":
    main()