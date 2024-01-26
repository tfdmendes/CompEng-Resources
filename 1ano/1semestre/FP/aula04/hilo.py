# Complete the code to make the HiLo game...

import random

def main():
    # Pick a random number between 1 and 100, inclusive
    secret = random.randrange(1, 101);
    print("Can you guess my secret?")
    # put your code here

    # Testar codigo
    # print(f"A solução é {secret}")

    guess = 0
    tentativas = []
    while guess != secret:
        guess = int(input("Try to guess my secret: "))
        
        # tentativas introduzidas pelo utilizador
        tentativas.append(guess)


        #Debug caso guess <0:
        if guess < 0:
            print("Escolha um numero positivo")

        # distância entre os numeros
        distancia = abs(secret - guess)

        # Distancia Absoluta entre os numeros que indica se o resultado está muito frio, frio, quente muito quente, ou a ferver
        if distancia < 5:
            print("Ferver")
        elif distancia < 15:
            print("Muito quente")
        elif distancia < 35:
            print("Quente")

        elif distancia > 50:
            print("Muito frio")
        elif distancia >= 35:
            print("Frio")
        
    
    if guess == secret:
        print(f"Muito bem, o número correto era: {secret}")
        print(f"As tuas tentativas foram: {tentativas} ou seja, foram preciso {len(tentativas)} tentativas")



main()
