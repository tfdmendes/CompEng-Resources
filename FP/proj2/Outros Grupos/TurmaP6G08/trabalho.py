import math 
import json
import requests


def deslocamento(lat1, lon1, lat2, lon2): #n sabiamos que o bias na url da API calculava automaticamente a distancia
                                          #entao usamos a funcao haversine para calcular a distancia num globo a partir
                                          #das coordenadas dos dois pontos 
     raioTerra = 6371
     Conv = math.pi / 180 
     
     newlat1 = float(lat1) 
     newlat2 = float(lat2)
     ConvDiffLats = Conv * (newlat2 - newlat1)
     ConvDiffLons = Conv * (float(lon2) - float(lon1))
     #f�rmula de distancia entre coordenadas (ver funcao haversine, erro maximo de 0.5% da distancia real)
     length = 2 * raioTerra * math.asin(math.sqrt((math.sin((ConvDiffLats) /2))**2 + math.cos(newlat2) * math.cos(newlat1) * (math.sin((ConvDiffLons) /2))**2))  
     return length

def escolherCategorias(path, final):                            #esta funcao e enorme mas e basicamente 5 blocos quase identicos
                                                                #podia ter sido resolvido com recursividade mas como so havia no maximo 
                                                                #sub-sub-sub-categorias fizemos a mao
                                                                
    b = True
    while b:

        with open(path, 'r') as f:
    
            categorias = ""

            for line in f:
                a = line[:-1]
                a = a.split(".")
                a = a[0]
                categorias += a + " "                           #cria uma string enorme com as varias categorias de atracoes turisticas
    
            categoriasSet = set(categorias.strip().split())     #separa a string pelos espa�os e retira duplicados
            categoriasLista = sorted(list(categoriasSet))       #transforma o set numa lista e ordena as categorias alfabeticamente 

            if len(categoriasLista)%2 == 1:                     #queremos dar print as categorias em duas colunas para caberem no terminal
                                                                #por isso se a lista tiver um numero impar de elementos adicionamos um elemento vazio para ficar
               categoriasLista.append("")
   
            d = int(len(categoriasLista)/2)                     #esta variavel determina o tamanho das colunas das categorias que vao ser displayed no terminal

            print("CATEGORIAS")
            print("------------------------------------------------------------------")

            for n in range(d):
                print("{:<20} {:<20}".format(categoriasLista[n], categoriasLista[d+n]))

            print("------------------------------------------------------------------")
    
        with open(path, 'r') as f:
            
            if final != "":
                print("Acabe a selecao dando Enter sem escrever")
                print()
                
            categoriaInput = input("Selecione categoria: ") 
    
            while categoriaInput == "" and final == "":                                 #se a selecao final esta vazia o utilizador nao pode introduzir a categoria vazia
                  categoriaInput = input("Selecione pelo menos uma categoria: ")
                  
            while categoriaInput not in categoriasLista and categoriaInput != "":       #se a categoria introduzida nao estiver na lista e for diferente de vazio o prompt
                                                                                        #continua ate ser introduzida uma categoria valida
                print("Categoria invalida!")
                categoriaInput = input("Selecione categoria: ") 

            if categoriaInput == "" and final != "":                                    #Se ja temos categorias prontas para procurar e introduzimos a categoria vazia estamos
                                                                                        # a declarar que ja temos todas as categorias que queremos procurar
                b = False
                break
        
            elif categoriaInput != "":                                                  #ao introduzir uma categoria valida queremos dar display as sub-categorias dessa categoria
                                                                                        #este elif trata disso ao processar o ficheiro categorias
        
                subcategorias = ""
        
                for line in f:
                    a = line[:-1]
                    a = a.split(".")
                    if len(a) > 1:
                        if a[0] == categoriaInput:
                           subcategorias += a[1] + " "
        
                if subcategorias == "":                     # se o input e vazio entao nao queremos explicitar subcategorias (i.e. ao inves de pesquisar accommodation.hotel)
                                                            # pesquisamos tudo que tenha accommodation (os blocos seguintes tambem tem esta opcao)
                    final += categoriaInput + ","
                    print(final)
                    continue
            
                else:     
                    subcategoriasSet = set(subcategorias.strip().split())
    
                    subcategoriasLista = sorted(list(subcategoriasSet)) 
    
                    if len(subcategoriasLista)%2 == 1:
                       subcategoriasLista.append("")
       
                    e = int(len(subcategoriasLista)/2)
    
                    print()
                    print(f"SUB-CATEGORIAS ({categoriaInput})")
                    print("------------------------------------------------------------------")
    
                    for n in range(e):
                        print("{:<20} {:<20}".format(subcategoriasLista[n], subcategoriasLista[e+n]))
    
                    print("------------------------------------------------------------------")

        with open(path, 'r') as f:                                                             #este with open e semelhante ao anterior mas ao inves de tratar de categorias trata
                                                                                               #de sub-categorias
            print("Acabe a selecao dando Enter sem escrever")
            print()
            
            subcategoriaInput = input("Selecione subcategoria: ") 
            
            while subcategoriaInput not in subcategoriasLista and subcategoriaInput != "":
                print("subcategoria invalida!")
                subcategoriaInput = input("Selecione subcategoria: ")

            if subcategoriaInput == "":
                final += categoriaInput + ","
                print(final)
                continue
        
            elif subcategoriaInput != "":
        
                sub2categorias = ""
        
                for line in f:
                    a = line[:-1]
                    a = a.split(".")
                    if len(a) > 2:
                        if a[1] == subcategoriaInput:
                           sub2categorias += a[2] + " "
                   
                if sub2categorias == "":
                    final += categoriaInput + "." + subcategoriaInput + ","
                    print(final)
                    continue
            
                else:
                    sub2categoriasSet = set(sub2categorias.strip().split())
    
                    sub2categoriasLista = sorted(list(sub2categoriasSet)) 
    
                    if len(sub2categoriasLista)%2 == 1:
                       sub2categoriasLista.append("")
       
                    e = int(len(sub2categoriasLista)/2)
    
                    print()
                    print(f"SUB-SUB-CATEGORIAS ({categoriaInput}.{subcategoriaInput})")
                    print("------------------------------------------------------------------")
    
                    for n in range(e):
                        print("{:<20} {:<20}".format(sub2categoriasLista[n], sub2categoriasLista[e+n]))
    
                    print("------------------------------------------------------------------")
            
        with open(path, 'r') as f:                                                                 #trata de sub-sub-categorias
    
            print("Acabe a selecao dando Enter sem escrever")
            print()
            
            sub2categoriaInput = input("Selecione sub-sub-categoria: ") 
            
            while sub2categoriaInput not in sub2categoriasLista and sub2categoriaInput != "":
                print("sub-sub-categoria invalida!")
                sub2categoriaInput = input("Selecione sub-sub-categoria: ")

            if sub2categoriaInput == "":
                final += categoriaInput + "." + subcategoriaInput + ","
                print(final)
                continue
        
            elif sub2categoriaInput != "":
        
                sub3categorias = ""
        
                for line in f:
                    a = line[:-1]
                    a = a.split(".")
                    if len(a) > 3:
                        if a[2] == sub2categoriaInput:
                           sub3categorias += a[3] + " "
                   
                if sub3categorias == "":
                    final += categoriaInput + "." + subcategoriaInput + "." + sub2categoriaInput + ","
                    print(final)
                    continue
            
                else:
                    sub3categoriasSet = set(sub3categorias.strip().split())
    
                    sub3categoriasLista = sorted(list(sub3categoriasSet)) 
    
                    if len(sub3categoriasLista)%2 == 1:
                       sub3categoriasLista.append("")
       
                    e = int(len(sub3categoriasLista)/2)
    
                    print()
                    print(f"SUB-SUB-CATEGORIAS ({categoriaInput}.{subcategoriaInput}.{sub2categoriaInput})")
                    print("------------------------------------------------------------------")
    
                    for n in range(e):
                        print("{:<20} {:<20}".format(sub3categoriasLista[n], sub3categoriasLista[e+n]))
    
                    print("------------------------------------------------------------------")
            
        with open(path, 'r') as f:                                                                 #trata de sub-sub-sub-categorias
    
            print("Acabe a selecao dando Enter sem escrever")
            print()
            
            sub3categoriaInput = input("selecione sub-sub-sub-categoria: ")
            
            while sub3categoriaInput not in sub3categoriasLista and sub3categoriaInput != "":
                print("sub-sub-sub-categoria invalida!")
                sub3categoriaInput = input("Selecione sub-sub-sub-categoria: ")
    
            final += categoriaInput + "." + subcategoriaInput + "." + sub2categoriaInput + "." + sub3categoriaInput + ","
            print(final)
            continue
        
    categorias = final[:-1]       #a string final para a url tem uma virgula a mais no fim por isso retiramo-la
    
    print(categorias)
    
    return categorias

def displayLocais(dadosJSON, latInicial, lonInicial):           #print da tabela
    try:
        dadosJSON['features']
        
        print("{:<50} {:9} {:8} {:8} {:4} {:15} {:15} {:20}".format("Nome", "Pais", "Longitude", "Latitude", "Distancia", "Distrito", "Cidade", "Rua"))            
        print("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------")

        for n in range(len(dadosJSON['features'])-1):                                       
            
            nome = dadosJSON['features'][n]['properties']['name']                                                   
            pais = dadosJSON['features'][n]['properties']['country']
            lonLocal = float(round(dadosJSON['features'][n]['properties']['lon'] , 4))
            latLocal = float(round(dadosJSON['features'][n]['properties']['lat'] , 4))
            county = dadosJSON['features'][n]['properties']['county']   
            city = dadosJSON['features'][n]['properties']['city']
            street = dadosJSON['features'][n]['properties']['street']
            medida = int(round(deslocamento(latInicial, lonInicial, latLocal, lonLocal), 3) * 1000)
            print("{:<50} {:9} {:9} {:8} {:9} {:15} {:15} {:20}".format(nome, pais, lonLocal, latLocal, medida, county, city, street))
 
        print("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------")
    
    except KeyError:                             #so para o caso de dar erro ao inves de quebrar o terminal avisamos o utilizador
        print("Sem localizacoes de interesse.") 

def main():
    
    raioTerra = 6371         #variaveis que poderiam ser globais mas se forem locais e mais rapido
    Conv = math.pi / 180     #constante de conversao de graus para radianos para poder usar a funcao matematica haversine na funcao que chamamos de deslocamento
    
    lonInicial =  input("Insira longitude: ")
    latInicial = input("Insira latitude: ")
    distancia = int(input("distancia maxima (em km): ")) * 1000
    file = "/Users/tiago/Documents/Universidade/FP/proj2/Outros Grupos/TurmaP6G08/categories.txt"
    

    categorias = []
    filtroLista = []
    final = ""
    
    categorias = escolherCategorias(file, final)
    
    url = "https://api.geoapify.com/v2/places?categories=" + categorias + "&apiKey=87801082b2ff402c95695cec9073a0a6"

    url=url+"&filter=circle:{},{},{}".format(lonInicial,latInicial,distancia)

    dados = requests.get(url)
    dadosJSON =json.loads(dados.text)
    
    displayLocais(dadosJSON, latInicial, lonInicial)


main()