import requests
from requests.structures import CaseInsensitiveDict
import math
import csv


# Função para calcular a distância entre dois pontos
def calcularDistancia(lat1, lon1, lat2, lon2):

    # Conversão as coordenadas de graus para radianos
    lat1 = math.radians(lat1)
    lon1 = math.radians(lon1)
    lat2 = math.radians(lat2)
    lon2 = math.radians(lon2)

    # Calculao da diferença de longitudes e latitudes
    dlon = lon2 - lon1
    dlat = lat2 - lat1

    # Fórmula de Haversine
    a = math.sin(dlat/2)**2 + math.cos(lat1) * math.cos(lat2) * math.sin(dlon/2)**2
    c = 2 * math.atan2(math.sqrt(a), math.sqrt(1-a))

    # Distância em quilómetros
    distancia = 6371 * c 

    return distancia




# Função para validar as atrações dadas pelo usuário
def atracoesValidas(atracoes):
    listaAtracaoValidas = []
    with open("/Users/tiago/Documents/Universidade/FP/proj2/Outros Grupos/TurmaP1G01/categories.txt", "r") as file:
        for line in file:
            listaAtracaoValidas.append(line.strip())

    # Inicializa uma string vazia para armazenar as atrações válidas em formato de texto
    atracaoValidasTexto = ""


    # Percorre a lista de atrações fornecidas pelo usuário
    for i in range(len(atracoes)):
        tipoAtracao = atracoes[i]
        tipoAtracao = tipoAtracao.strip()

        # Verifica se a atração fornecida pelo usuário está na lista de atrações válidas
        if tipoAtracao not in listaAtracaoValidas:
            print(f"{tipoAtracao} não é válido, vai ser removido")
            atracoes.remove(tipoAtracao)
        else:
            # Se for válida, é adicionada à string de atrações válidas
            atracaoValidasTexto += tipoAtracao
            if i != len(atracoes) - 1:
                atracaoValidasTexto += ","

    # Se nenhuma atração válida foi encontrada, a função main é chamada novamente
    if atracaoValidasTexto == "":
        print("Não foi encontrada nenhuma atração válida.")
        main()
    else:
        return atracaoValidasTexto
    



# Função para fazer uma solicitação à API Geoapify
def apiRequest(op, listaAtracoes, latitude, longitude, distancia):

    # Se a operação é 1, solicita informações sobre atrações turísticas
    if op == 1:
        # Constrói a URL da solicitação
        url = f"https://api.geoapify.com/v2/places?categories={atracoesValidas(listaAtracoes)}&filter=circle:{longitude},{latitude},{distancia}&limit=20&apiKey=1b55da7072384a56a382d038afefc8ad"
        try:
            #Solicitação à API
            resp = requests.get(url)
        except:
            print("Erro a conectar à API. Verifique a conexão à internet.")
            main()

    # Se a operação é 2, solicita informações sobre a localização especificada       
    elif(op == 2):
        #Constrói a URL da solicitação
        url = f"https://api.geoapify.com/v1/geocode/reverse?lat={latitude}&lon={longitude}&apiKey=720873af859e44f199d6fbc0b7413f0c"
        headers = CaseInsensitiveDict()
        headers["Accept"] = "application/json"
        try:
            resp = requests.get(url, headers=headers)

        except:
            print("Erro a conectar à API. Verifique a conexão à internet.")
            main()

    # Se a operação não é nem 1 nem 2, imprime uma mensagem de erro e retorna um dicionário vazio          
    else:
        print("Opção inválida")
        return {}
    


    # Converte a resposta da API em um dicionário JSONR e retorna o dicionário
    dic = resp.json()
    return dic

# Função para converter uma lista em uma string
def listToText(lsita):
    texto = ""
    if lsita == None:
        return ""
    for i in range(len(lsita)):
        texto += lsita[i]
        if i != len(lsita) - 1:
            texto += ", "
    return texto




def main():

    # Solicita ao usuário a informações
    latitudeInicial = float(input("Latitude Inicial: "))
    longitudeInicial = float(input("Longitude Inicial: "))
    distanciaViagem = float(input("Distancia em kilometros: ")) * 1000
    tiposAtracoes = input("Tipos de atrações a visitar (separados por vírgulas): ").split(",")



    
    # Faz uma solicitação à API para obter as atrações
    atracoes = apiRequest(1,tiposAtracoes, latitudeInicial, longitudeInicial, distanciaViagem)["features"]


    # Ordena as atrações pela distância à localização inicial
    atracoes.sort(key=lambda x: calcularDistancia(latitudeInicial, longitudeInicial, x["geometry"]["coordinates"][1], x["geometry"]["coordinates"][0]))



   

    # Abre um arquivo CSV para escrita
    with open("atracoes.csv", "w", newline="", encoding="utf-8") as file:
        #writer = csv.writer(file, delimiter=";")
        writer = csv.writer(file)
        writer.writerow(["Nome","Categorias" ,"País", "Latitude", "Longitude", "Distância(KM)", "Morada","Fuso horário","Populariedade"])
        

        # Para cada atração
        for i, attraction in enumerate(atracoes):
            if "name" not in attraction["properties"].keys():
                nomeAtracao = "----------"
            else:
                nomeAtracao = attraction["properties"]["name"]

            if "categories" not in attraction["properties"].keys():
                categorias = None
            else:
                categorias = attraction["properties"]["categories"]
            
            if "country" not in attraction["properties"].keys():
                paisAtracao = "----------"
            else:
                paisAtracao = attraction["properties"]["country"]
            

            # Obtém a longitude e a latitude da atração
            longitudeAtracao = attraction["geometry"]["coordinates"][0]
            latitudeAtracao = attraction["geometry"]["coordinates"][1]

            # Calcula a distância da atração à localização inicial
            distanciaAtracao = round(calcularDistancia(latitudeInicial, longitudeInicial, latitudeAtracao, longitudeAtracao),2)
           
            
            # Se a atração não tem um endereço, usa uma string vazia
            if "address_line2" not in attraction["properties"].keys():
                moradaAtracao = ""
                
            else:
                # Caso contrário, usa o endereço da atração
                moradaAtracao = attraction["properties"]["address_line2"]

            # Faz uma solicitação à API para obter mais informações sobre a atração
            maisInfo = apiRequest(2,None, latitudeAtracao, longitudeAtracao,0)["features"]
            info = maisInfo[0]["properties"]
            horario = f"{info['timezone']['name']} (GMT{info['timezone']['offset_STD']})" 
            avaliacaoPopulariedade = info["rank"]["popularity"]

            # Escreve a linha da atração no arquivo CSV
            writer.writerow([nomeAtracao,listToText(categorias), paisAtracao, latitudeAtracao, longitudeAtracao, distanciaAtracao, moradaAtracao, horario, avaliacaoPopulariedade])
            
            # Imprime as informações da atração
            print(f"{i+1}.\n    Nome: {nomeAtracao} \n   categorias: {listToText(categorias)}\n   País: {paisAtracao}\n    Localização (latitude e longitude): ({latitudeAtracao}, {longitudeAtracao})\n    Distância à localização de partida(KM): {distanciaAtracao}\n    Morada: {moradaAtracao}\n    Fuso horário: {horario}\n    Populariedade: {avaliacaoPopulariedade}")
        
        
        



if __name__ == "__main__":
    main()