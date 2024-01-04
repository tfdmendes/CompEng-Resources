def encriptar(palavra):
    nova_palavra = ""
    numero = 1
    for letra in palavra:
        nova_palavra += chr(ord(letra) + numero)
        numero += 1
    print(nova_palavra)

encriptar("abcd") # we expect "bdfh"