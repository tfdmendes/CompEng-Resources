# a
def menu():

    print("1) Registar chamada")
    print("2) Ler ficheiro")
    print("3) Listar clientes")
    print("4) Fatura")
    print("5) Terminar")

    opcao = ""

    while opcao not in [1,2,3,4,5]:
        opcao = input("Opção? ")

        if opcao.isalpha():
            opcao = input("Opção? ")
        elif opcao.isdigit():
            opcao = int(opcao)
        

    if opcao == 1:
        register_new_call()
    elif opcao == 2:
        ler_chamadas()
    elif opcao == 3:
        list_clients()


#* 2
def valid_phone_number(numero):
    if len(numero) < 3:
        return numero, False
    elif numero.startswith("+"):
        numero_stripped = numero.replace("+", "")
        if not numero_stripped.isdigit():
            return numero, False
    return numero, True 
    
    
 #* c        
def register_new_call():
    while True:        
        origem, validade = valid_phone_number(input("Telefone origem? "))
        if not validade:
            continue
        else: break

    while True:
        destino, validade = valid_phone_number(input("Telefone destino? "))
        if not validade:
            continue
        else: break

    while True: 
        duration = input("Duração (s)? ")
        if not duration.isdigit():
            continue
        else: break


#* d
def ler_chamadas():
    #nome = input("Ficheiro? ")
    nome = "chamadas1.txt"
    path = f"/Users/tiago/Documents/Universidade/FP/extra2/{nome}"

    lista_numeros = []
    with open(path, 'r') as ficheiro:
        for linha in ficheiro:
            linha_formatada = linha.strip().replace("\t", " ")
            lista_numeros.append(linha_formatada.split(" "))
    return lista_numeros


#* e
def list_clients():
    lista_numeros = ler_chamadas()
    numeros_origem = set()
    for info in lista_numeros:
         numeros_origem.add(info[0])
    numeros_origem_sorted = sorted(numeros_origem)
    print(f"Clientes: {' '.join(numeros_origem_sorted)}")


#* f


list_clients()