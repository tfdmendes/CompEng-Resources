# Grupo P8G02

import os
import platform 
import requests
from art import plane
from requests.structures import CaseInsensitiveDict
import csv


def clear_console_screen():
    """Clears the console screen based on the OS"""
    system = platform.system()
    if system == "Windows":
        os.system("cls") # Para Windows
    else:
        os.system("clear") # Para Linux e macOS


def categories_from_file():
    """Returns a list with ALL categories from the file 'categories.txt'"""

    #! **Muda o path conforme necessário**
    categories_path = "/Users/tiago/Documents/Universidade/FP/proj2/categories.txt"         # <----------------------------
    categories_list = []

    with open(categories_path, "r") as categories:
        categories_list = [line.strip() for line in categories]

    return categories_list



def trip_details():
    """Returns the details for the desired trip: longitude, latitude, distance."""

    valid_number = lambda input_str: input_str.replace(".", "", 1).lstrip('-').isdigit() # Verifica se a string pode ser convertida para float

    print("Preciso que me digas algumas coisas:\n- As coordenadas do sítios que gostarias de visitar.\n- Do sítio que escolheres, a distância que estás disposto a percorrer para visitares atrações turísticas.\n\n")
    
    while True:
        longitude = input("Longitude: ")
        latitude = input("Latitude: ")
        distance = input("Quantos *kilometros* é que estás disposto a viajar para visitar algumas atrações turísticas? ")

        # Se introduziu inputs válidos
        if len(longitude) == 0 or len(latitude) == 0 or len(distance) == 0:
            clear_console_screen()
            print("\n!!! Deixaste uma das opções por preencher. !!!\n")
            continue
        elif not (valid_number(longitude)) or not (valid_number(latitude)) or not (valid_number(distance)):
            clear_console_screen() 
            print("\n!!! Por favor, insere em todos as parâmetros um número. !!!\n PS: Assegura-te que escreveste o número decimal com um '.' \n")
            continue
        else:
            distance = float(distance)
            if distance.is_integer():
                distance = int(distance)
            break

    return longitude, latitude, distance



def check_user_choice(options_list):
    """Validates user's choice based on len of list."""

    while True:
        choice = input("Escolhe o número da opção: ")        
        if choice.isdigit():
            choice = int(choice)
            if 0 <= choice < len(options_list):
                return choice
        print("Opção inválida. Tente novamente.")



def category_selection():
    """Returns the category chosen by the user."""

    clear_console_screen()
    print("\nDeste conjunto de categorias, qual é a que te interessa mais?")
    category_list = categories_from_file()

    # Lista de categorias PRINCIPAIS
    ## Se a categoria não tiver um "." é uma categoria principal ("accomodation", "commercial", etc)
    list_main_categories = [
        category 
        for category in category_list  
        if "." not in category
    ]

    while True:
        print("\nCategorias principais:")
        number = 0

        # Print de todas as escolhas disponíveis precedida de um número correspondente
        for category in list_main_categories:  
            print(f"{number} - {category.title()}")
            number += 1
        choice = check_user_choice(list_main_categories) # Averigua se o user escolheu um número válido

        main_category = list_main_categories[choice]  # categoria principal escolhida pelo utilizador


        # Lista de categorias SECUNDARIAS
        ## é uma categoria secundaria se começar com a 'main_category'
        subcategories = [
            subcategory 
            for subcategory in category_list  
            if subcategory.startswith(main_category + ".")
        ]
        #print(subcategories)

        if subcategories == []:  # No caso de não existirem subcategorias para essa categoria principal
            print(f"\nSelecionaste: {main_category.title()}")
            return main_category


        print(f"\nSubcategorias de {main_category.title()}:")
        subnumber = 0
        clear_console_screen()

        # Apresentação de cada uma das subcategorias precedida do número correspondente 
        for subcategory in subcategories:
            print(f"{subnumber} - {subcategory.title()}")
            subnumber += 1
        print(f"{len(subcategories)} - VOLTAR ATRÁS") 
        print(f"{len(subcategories)+1} - CASO GERAL (Apenas '{main_category}')") # Possibilidade de o user escolher a categoria geral ('accomodation', 'commercial', etc)

        # Averiguar se o user escolher um número válido
        sub_number = check_user_choice(subcategories + ['VOLTAR ATRÁS', 'CASO GERAL']) 

        if sub_number == len(subcategories): # o user escolheu a opção de 'VOLTAR ATRÁS'
            clear_console_screen()
            continue
        elif sub_number == len(subcategories) + 1: # caso o user escolher a opção 'GERAL'
            print(f"\nSelecionaste: {main_category.title()}")
            return main_category

        selected_category = subcategories[sub_number]
        print(f"\nSelecionaste: {main_category.title()} -> {selected_category.title()}")
        return selected_category
        


def choose_new_categories(list_chosen_categories):
    """Allows the user to choose more categories."""

    all_categories_chosen = False
    while not all_categories_chosen:
        clear_console_screen()
        print(f"As tuas categorias atuais são: {list_chosen_categories}")

        another_category = input("Gostarias de selecionar uma outra categoria?\nEscreve 's' (sim) ou 'n' (não). \n").lower()

        while another_category not in ['s', 'n']:  # Obrigar o user a introduzir 's' ou 'n'
            clear_console_screen()
            print("!! Por favor escreve ou 's' ou 'n' !!")
            another_category = input("Gostarias de selecionar uma outra atração?\nEscreve 's' (sim) ou 'n' (não).").lower()

        if another_category == "s":  # Se quiser escolher mais categorias
            new_category = category_selection()
            if new_category in list_chosen_categories: # caso a atração escolhida já tenha sido escolhida previamente
                continue
            else:
                list_chosen_categories.append(new_category)
                continue
        elif another_category == "n":  # Se não quiser escolher mais categorias
            print(f"\nAs atrações que escolheste foram: {list_chosen_categories}")
            break



def list_attractions(category_list, longitude, latitude, radius, quantity_of_attractions):
    """Returns the list of attractions based on the details entered by the user: 'category_list', 'longitude', latitude', 'radius', 'quantity_of_attractions'"""
    
    categories = ",".join(category_list)
    url = f"https://api.geoapify.com/v2/places?categories={categories}&filter=circle:{longitude},{latitude},{radius*1000}&bias=proximity:{longitude},{latitude}&limit={quantity_of_attractions}&apiKey=08d87968d91e4293981926222020f83a"
    #print(url)

    headers = CaseInsensitiveDict()
    headers["Accept"] = "application/json"

    resp = requests.get(url, headers=headers)

    # Averiguar se a API está a funcionar 
    if resp.status_code == 200:
        url_feedback = resp.json()
        #print(url_feedback)
        data = {}
        data_list = []
        quantity_of_attractions_found = len(url_feedback["features"])
        quantity_of_attractions = min(quantity_of_attractions, quantity_of_attractions_found)

        # Organização do dicionário e lista dos dados obtidos 
        for index in range(int(quantity_of_attractions)):
            properties = url_feedback["features"][index]["properties"]
            name = properties.get("name")
            data = {
                "nome" : name if name is not None else "Não existe nome para esta atração",
                "pais" : properties.get("country"),
                "longitude": properties.get("lon"),
                "latitude": properties.get("lat"),
                "distancia": f"{properties.get('distance')}",
                "cidade": properties.get("city"),
                "codigo postal": properties.get("postcode"),
                "morada completa": properties.get("formatted"),
            }

            data_list.append(data)

        return data_list
    
    else:
        #print(resp.status_code)
        print("Ocorreu algum erro. Vou tentar de novo.")
        list_attractions(category_list, longitude, latitude, radius, quantity_of_attractions)
    


def display_attractions_info(attractions):
    """Displays the attractions found. Shows the basic info of the country. Allows the user to sort attractions based on the existing keys."""

    clear_console_screen()
    number_attractions_found = len(attractions)

    # Caso não tenha encontrado atrações, permite ao user tentar de novo o programa
    if number_attractions_found == 0: 
        try_again = input("Não conseguimos encontrar numa atração. Queres tentar tudo de novo?\n's' - Sim\n'n' - Não (fechar o programa)\nR: ").lower()
        while try_again not in ['s', 'n']:
            clear_console_screen()
            print("!! Por favor, introduz ou 's' ou 'n' !!")
            try_again = input("Queres tentar tudo de novo?\n's' - Sim\n'n' - Não (fechar o programa)\nR: ").lower()

        if try_again == "s":
            clear_console_screen()
            main()
        else:
            exit(0)

    else:
        print(f"Consegui encontrar {number_attractions_found} atrações com base nos requisitos.\nDe que maneira é que gostarias que te ordenasse os resultados?")
    
    number = 0
    key_list = []
    # Print de todas as keys do dicionario.
    ## Permite ao user escolher de que maneira é que quer ver as atrações
    for key in attractions[number]:
        key_list.append(key)
        print(f"{number} - Por {key}")
        number += 1
    sort_type_choice = check_user_choice(key_list) # Numero correspondente à escolha feita pelo utilizador


    clear_console_screen()

    ###### Informações sobre o país ####
    country = attractions[0]['pais'].lower()

    url = f"https://restcountries.com/v3.1/name/{country}"
    resp = requests.get(url)

    # Se a API estiver operacional
    if resp.status_code == 200:
        print("#################################")
        data = resp.json()[0]
        print(f"Informações sobre '{country.title()}':")

        # Obtém moeda, fuso horário e língua maioritária
        time_zone = data.get('timezones')
        print(f"Fuso Horário: {time_zone[0]}")
        currencies =  data.get('currencies')
        
        # Informação sobre a moeda 
        if currencies:
            for key, value in currencies.items():
                print(f"Nome moeda: {value.get('name')}")
                print(f"Símbolo moeda: {value.get('symbol')}")

        # Informação da língua local
        language = data.get('languages')
        if language:
            for code, language in language.items():
                print(f"Língua: {language}")
        print("#################################\n")
    else: 
        print("Ocorreu um erro ao procurar informações sobre o país.")

    sorted_attractions = sorted(attractions, key=lambda x: x[key_list[sort_type_choice]])

    print("Atrações:\n")
    for data in sorted_attractions:
        print(f"Nome: {data['nome']}")
        print(f"País: {data['pais']}")
        print(f"Longitude: {data['longitude']}")
        print(f"Latitude: {data['latitude']}")
        print(f"Distancia face às coordenadas introduzidas: {data['distancia']}m")
        print(f"Cidade: {data['cidade']}")
        print(f"Codigo Postal: {data['codigo postal']}")
        print(f"Morada completa: {data['morada completa']}\n")
    
    # Escrever as atrações para um ficheiro csv
    csv_filename = "attractions_info.csv"
    with open(csv_filename, mode='w', newline='', encoding='utf-8') as csv_file:
        fieldnames = key_list
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)

        writer.writeheader()

        for data in sorted_attractions:
            writer.writerow(data)


def main():
    print(plane)

    longitude, latitude, distance = trip_details()
    list_chosen_categories = [category_selection()]
    choose_new_categories(list_chosen_categories)

    valid_number = lambda input_str: input_str.isdigit()
    quantity_of_attractions = input("\nDas categorias que escolheste, qual é a quantidade de atrações que gostarias que te mostrasse? ")

    while not valid_number(quantity_of_attractions):
        clear_console_screen()
        print(f"As categorias que escolheste foram: {list_chosen_categories}")
        print("!! Por favor, escreve um número (maior que 0) !!")
        quantity_of_attractions = input("\nDas categorias que escolheste, qual é a quantidade de atrações que gostarias que te mostrasse? ")

    attractions = list_attractions(list_chosen_categories, longitude, latitude, distance, int(quantity_of_attractions))
    display_attractions_info(attractions)


if __name__ == "__main__":
    main()