import requests
from requests.structures import CaseInsensitiveDict
import sys
# Função para obter as categorias a partir de um arquivo
def obter_categorias():
    try:
        with open("/Users/tiago/Documents/Universidade/FP/proj2/Outros Grupos/TurmaP12G05/categories.txt.txt", 'r') as file:
            # Lê cada linha do arquivo e remove espaços em branco no início e no final
            categorias = [linha.strip() for linha in file]
        return categorias
    except FileNotFoundError:
        print("Por favor, certifique-se de que o arquivo existe e forneça o caminho correto.")
        sys.exit()
        
# Função para obter a latitude, garantindo que a mesma esteja entre os valores pretendidos
def obter_latitude():
    while True:
        try:    
            # Solicita a entrada do usuário para a latitude
            latitude = float(input("Digite a latitude de partida: "))
            # Verifica se a latitude está no intervalo válido (-90 a 90)
            if -90 < latitude < 90:
                return latitude
            else:
                print("Por favor, introduza um valor numérico entre -90 e 90 para a latitude.")
        except ValueError:
            print("Por favor, introduza um valor numérico entre -90 e 90 para a latitude.")
        
# Função para obter a longitude, garantindo que a mesma esteja entre os valores pretendidos
def obter_longitude():
    while True:
        try:
            # Solicita a entrada do usuário para a longitude
            longitude = float(input("Digite a longitude de partida: "))
            # Verifica se a longitude está no intervalo válido (-180 a 180)
            if -180 < longitude < 180:
                return longitude
            else:
                print("Por favor, introduza um valor numérico entre -180 e 180 para a longitude.")
        except:
            print("Por favor, introduza um valor numérico entre -180 e 180 para a longitude.")

# Função para obter a distância, garantindo que a mesma seja maior que 0
def obter_distancia():
    while True:
        try:
            # Solicita a entrada do usuário para a distância
            distancia = float(input("Digite a distância desejada em quilómetros: "))
            # Verifica se a distância é maior que zero
            if distancia > 0:
                return distancia
            else:
                # Se a distância for menor ou igual que zero exibe mensagem de erro.
                print("Por favor, introduza um valor numérico maior que zero.")
        except:
            print("Por favor, introduza um valor numérico maior que zero.")

# Função para obter informações da viagem
def obter_informacoes_viagem():
    # Chama as funções para obter latitude, longitude e distância
    partida_lat = obter_latitude()
    partida_lon = obter_longitude()
    distancia = obter_distancia()

    # Chama a função para obter categorias disponíveis a partir de um arquivo
    categorias_disponiveis = obter_categorias()
    print("Categorias disponíveis:", categorias_disponiveis)

    while True:
        # Solicita a entrada do usuário para as categorias desejadas
        categorias_escolhidas = input("Digite as categorias desejadas separadas por vírgula: ").split(',')
        # Remove espaços em branco e verifica se todas as categorias escolhidas são válidas
        categorias_escolhidas = [categoria.strip() for categoria in categorias_escolhidas]
        
        if all(categoria in categorias_disponiveis for categoria in categorias_escolhidas):
            return partida_lat, partida_lon, distancia, categorias_escolhidas
        else:
            print("Por favor, insira categorias válidas.")

# Função para obter atrações usando a API Geoapify
def obter_atracoes(partida_lat, partida_lon, distancia, categorias):
    # Chave de API para acesso à Geoapify
    api_key = '3f7ed7762b094511a94dc69a30ef1af4'
    # Constrói a URL para a consulta da API com base nos parâmetros fornecidos
    url = f'https://api.geoapify.com/v2/places?lat={partida_lat}&lon={partida_lon}&radius={distancia * 1000}&categories={",".join(categorias)}&apiKey={api_key}'

    # Configura os cabeçalhos da solicitação HTTP
    headers = CaseInsensitiveDict()
    headers["Accept"] = "application/json"
   
    try:
        # Realiza a solicitação GET à API Geoapify
        resp = requests.get(url, headers=headers)
        resp.raise_for_status()
        # Converte a resposta JSON em um dicionário Python
        dados_atracoes = resp.json()
        return dados_atracoes

    except requests.exceptions.HTTPError as errh:
        print(f"HTTP Error: {errh}")
    except requests.exceptions.ConnectionError as errc:
        print(f"Error Connecting: {errc}")
    except requests.exceptions.Timeout as errt:
        print(f"Timeout Error: {errt}")
    except requests.exceptions.RequestException as err:
        print(f"Error: {err}")

# Função para calcular estatísticas das atrações
# Função para calcular estatísticas das atrações
def calcular_estatisticas(atracoes_exibidas):
    # Obtém o número de atrações
    num_atracoes = len(atracoes_exibidas)
    
    # Verifica se há atrações para calcular estatísticas
    if num_atracoes == 0:
        print("\nNenhuma atração encontrada para exibição.")
        return
    
    # Calcula a distância média das atrações
    distancia_media = sum([atracao.get('properties', {}).get('distance', 0) for atracao in atracoes_exibidas]) / num_atracoes
    
    # Exibe estatísticas básicas
    print(f"\nEstatísticas Básicas:\nNúmero de Atrações: {num_atracoes}\nDistância Média: {distancia_media:.2f} metros\n{'='*75}")
        
# Função principal
def main():
    # Obtém informações da viagem chamando a função correspondente
    partida_lat, partida_lon, distancia, categorias_escolhidas = obter_informacoes_viagem()
    # Obtém atrações usando a API Geoapify chamando a função correspondente
    atracoes = obter_atracoes(partida_lat, partida_lon, distancia, categorias_escolhidas)

    atracoes_exibidas = []
    # Exibe informações para cada atração
    for atracao in atracoes.get('features', []):
        nome = atracao.get('properties', {}).get('name')
        distancia_atracao = atracao.get('properties', {}).get('distance', 0)

        # Verifica se a distância até a atração é menor ou igual à distância desejada
        if distancia_atracao <= distancia * 1000:
            nome = atracao.get('properties', {}).get('name')
            
            # Verifica se o nome existe
            if nome is None :
                continue

            pais_atracao = atracao.get('properties', {}).get('country', 'N/A')
            cidade = atracao.get('properties', {}).get('city', 'N/A')
            adereco = atracao.get('properties', {}).get('formatted', 'N/A')
            lat = atracao.get('properties', {}).get('lat', 'N/A')
            lon = atracao.get('properties', {}).get('lon', 'N/A')
            categorias = atracao.get('properties', {}).get('categories', 'N/A')
            atracoes_exibidas.append(atracao)
            
            # Exibe informações detalhadas sobre a atração
            print(f"\nNome: {nome}\nPaís: {pais_atracao}\nCidade: {cidade}\nEndereço: {adereco}\nLatitude: {lat}\nLongitude: {lon}\nDistância: {distancia_atracao} metros\nCategorias: {categorias}\n\n{'='*75}")

    # Calcula e exibe estatísticas das atrações
    calcular_estatisticas(atracoes_exibidas)



# Executa o programa
if __name__ == "__main__":
    main()