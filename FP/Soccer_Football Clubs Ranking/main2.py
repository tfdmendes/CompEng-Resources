ranking, name, country, points, change, pps, symbol = 0,1,2,3,4,5,6
RANK, CLUB, COUNTRY, SCORE, VAR, PSCORE, UP = 0, 1, 2, 3, 4, 5, 6


def load_file():
    path = "/Users/tiago/Documents/Universidade/FP/Soccer_Football Clubs Ranking/Soccer_Football Clubs Ranking.csv"
    tupple_list = []
    with open(path, 'r') as file:
        header = file.readline()
        if not header.startswith("ranking"):
            raise Exception("Wrong file format")
        
        for line in file:
            new_line = line.strip()
            tpl = tuple(new_line.split(","))
            tpl = (int(tpl[0]), tpl[1], tpl[2], int(tpl[3]), int(tpl[4]), int(tpl[5]), tpl[6] )
            tupple_list.append(tpl)
    
    return tupple_list



# def load_file():
#     fname = "/Users/tiago/Documents/Universidade/FP/Soccer_Football Clubs Ranking/Soccer_Football Clubs Ranking.csv"
#     lst = []
#     with open(fname, encoding="utf8") as f:
#         head = f.readline()
#         if not head.startswith("ranking,"):
#             raise Exception("Wrong file format")
#         for line in f:
#             line = line.strip()
#             parts = line.split(",")
#             # Codificar a variação como inteiro com sinal
#             #var = int(parts[UP] + parts[VAR])  # Funciona se o sinal for + ou - apenas
#             var = int(parts[VAR])
#             if parts[UP] == '-':
#                 var = -var
#             tup = (int(parts[0]), parts[1], parts[2],
#                    int(parts[3]), var, int(parts[5]))
#             lst.append(tup)

#     return lst

#* 2
def clubs_from_country(countryname, list):
    for info in list:
        if countryname in info:
            write_file(clubs_from_country,f"Ranking: {info[0]}\nNome: {info[1]}\nPontos: {info[3]}\n\n")


                
#* 3
def write_file(fname,message):
    path = f"/Users/tiago/Documents/Universidade/FP/Soccer_Football Clubs Ranking/{fname}.txt"
    with open(path, 'a') as file:
        file.write(message)


#* 4
def clubs_of_country(list):
    dic = {}
    for info in list:
        country_name = info[2]
        
        if country_name not in dic:
            dic[country_name] = [info[1]]
        else:
            dic[country_name].append(info[1])
    print(dic)
    return dic 


#* 5
def biggest_climb(list):
    melhor = list[0]
    for tuplo in list:
        if tuplo[-3] > melhor[-3]:
            melhor = tuplo
    print(melhor)

#* 6 
def displayinfo(cname, clubs_list):
    for info in clubs_list:
        if cname in info:
            print(f"Ranking: {info[0]}\nCountry: {info[2]}\nPoint Score: {info[3]}\nYear change: {info[4]}\nPrevious point Scored: {info[5]} ")
            return
    print(f"Club {cname} not found")   

#* 7
def average_ranking(list):
    dic = {}
    for info in list:
        ranking = info[0]
        country_name = info[2]

        if country_name not in dic:
            dic[country_name] = [ranking]
        else:
            dic[country_name].append(ranking)
    
    dic_ranking = {}
    for key in dic:
        dic_ranking[key] = sum(dic[key])

    print(dic_ranking)
    print("#################################")
    #print(sorted(dic_ranking.items(), key= lambda pair: pair[1]))


def sort(dic):
    return 
        









def main():
    clubs_list = load_file()
    #clubs_from_country("Portugal", clubs_list)
    #clubs_of_country(clubs_list)
    
    #biggest_climb(clubs_list)
    #displayinfo("Arouca", clubs_list)
    average_ranking(clubs_list)

    


if __name__ == "__main__":
    main()