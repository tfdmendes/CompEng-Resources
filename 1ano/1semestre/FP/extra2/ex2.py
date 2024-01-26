# a
def lerFicheiro(saldo): 
    """Retorna o dicionario das jornadasd do ficheiro .csv"""

    path = "/Users/tiago/Documents/Universidade/FP/extra2/Jornadas.csv"
    dicionario_jornadas = {}
    with open(path, "r", encoding="UTF-8") as file:
        for line in file:
            formatted_line = line.strip()
            lista_jogo = formatted_line.split(",")

            numero_jornada = lista_jogo[0]
            equipa_1 = lista_jogo[1]
            equipa_2 = lista_jogo[2]
            if numero_jornada not in dicionario_jornadas:
                dicionario_jornadas[numero_jornada] = []            
            dicionario_jornadas[numero_jornada].append([equipa_1, equipa_2])
    return dicionario_jornadas





def interface(dicionario_jornadas,):

    path = "/Users/tiago/Documents/Universidade/FP/extra2/aposta_jornadas.csv"
    with open(path, "w") as file:
        numeros_jornada = [0]
        for numero in dicionario_jornadas:
            numeros_jornada.append(numero)

        print("Bem-vindo à interface")
        numero_jornada_escolhido = input("Jornada? ")
        while numero_jornada_escolhido not in numeros_jornada:
            print("Jornada inválida")
            numero_jornada_escolhido = input("Jornada? ")

        if numero_jornada_escolhido == 0:
            exit(0)
        else:
            saldo -= 0.4
            saldo = round(saldo,2)

        numero = 1
        informacoes_aposta = []
        opcao_aposta = ["1","2","X"]
        for jogo in dicionario_jornadas[numero_jornada_escolhido]:
            aposta = input(f"{numero} {jogo[0]} vs {jogo[1]}: ")
            while aposta not in opcao_aposta:
                print("Aposta inválida!")
                aposta = input(f"{numero} {jogo[0]} vs {jogo[1]}: ")
            informacoes_aposta.append([jogo,aposta])
            file.write(f"{numero}, {aposta}\n")
            numero += 1
    return informacoes_aposta, numero_jornada_escolhido, saldo
            
        



#* b / c
def resultados_jogos(informacoes_aposta, numero_jornada, saldo):

    print(f"\nJornada {numero_jornada}")

    #[[['Academica', 'Sp Lisbon'], '1'], [['Arouca', 'Estoril'], '2'], [['Benfica', 'Pacos Ferreira'], '1'], [['Gil Vicente', 'Guimaraes'], '2'], [['Nacional', 'Moreirense'], '1'], [['Penafiel', 'Belenenses'], '2'], [['Porto', 'Maritimo'], '1'], [['Rio Ave', 'Setubal'], '2'], [['Sp Braga', 'Boavista'], '1']]

    path = "/Users/tiago/Documents/Universidade/FP/extra2/Jogos.csv"
    with open(path, "r", encoding="UTF-8") as file:
        numero = 1
        numero_apostas_certas = 0
        for line in file:
            line_formatted = line.strip()
            informacoes_jogo = line_formatted.split(",")
            # [15/08/14, Porto, Maritimo, 2, 0]

            equipa_anfitria =  informacoes_jogo[1]
            equipa_visitante = informacoes_jogo[2]
            golos_anfitria = informacoes_jogo[3]
            golos_visitante = informacoes_jogo[4]

            for lista in informacoes_aposta:
                #[['Estoril', 'Rio Ave'], '1']
                resultado = ""
                aposta_feita = lista[1]

                if golos_anfitria > golos_visitante:
                    resultado = "1"
                elif golos_anfitria < golos_visitante:
                    resultado = "2"
                else:
                    resultado = "X"

                if lista[0][0] in informacoes_jogo and lista[0][1] in informacoes_jogo:
                    print(f"{numero} {equipa_anfitria:>15} {golos_anfitria}-{golos_visitante} {equipa_visitante:15} : {aposta_feita} {'(ERRADA)' if aposta_feita != resultado else '(CERTO)'}")
                    numero += 1
                    if aposta_feita == resultado:
                        numero_apostas_certas += 1
                
        #*c
        premio = ""
        if numero_apostas_certas == len(informacoes_aposta):
            premio = "1º"
            saldo += 5000
        elif numero_apostas_certas > 8:
            premio = "2º"
            saldo += 1000
        else:
            premio = "3º"
            saldo += 100

        print(f"TEM {numero_apostas_certas} CERTAS. {premio} PRÉMIO.")
        return saldo




def main():
    saldo = 0
    end_game = False
    while not end_game:
        dicionario_jornadas = lerFicheiro()
        informacoes_aposta, numero_jornada_escolhido, saldo = interface(dicionario_jornadas, saldo)
        saldo = resultados_jogos(informacoes_aposta, numero_jornada_escolhido, saldo)
        print(f"Saldo atual: {saldo}")

if __name__ == "__main__":
    main()