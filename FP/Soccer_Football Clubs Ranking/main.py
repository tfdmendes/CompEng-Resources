import csv

def data():
    """Returns the header list and a list of tuples containing the information for each club"""

    path = "/Users/tiago/Documents/Universidade/FP/Soccer_Football Clubs Ranking/Soccer_Football Clubs Ranking.csv"
    with open(path, mode='r') as file:
        csvreader = csv.reader(file)
        # Lista de categorias (['ranking', 'club name ', 'country', 'point score', '1 year change', 'previous point scored', 'symbol change'])
        header = []
        header = next(csvreader)
        
        rows = []
        for row in csvreader:
            rows.append(row)
        
        tuple_list = []
        for line in rows:
            tuple_list.append(tuple(line))
        #print(tuple_list)

    return tuple_list, header

def country(country_name, clubs_info_list):
    """Gets the name of the country, and prints all club's names, respective ranking number, and current score. Returns dictionary of """

    for info in clubs_info_list:
        if country_name in info:
            out = f"Nome clube: {info[1]}\nNúmero ranking: {info[0]}\nScore atual: {info[3]}\n\n"
            output("saida", out)
    

def output(file_name, output):
    """ Writes to the output file ('file_name')"""

    path = f"/Users/tiago/Documents/Universidade/FP/Soccer_Football Clubs Ranking/{file_name}"
    with open(path, mode='a') as file:
        file.write(output)


def clubs_from_country(clubs_info_list):
    """Returns a dictionary which the key is the country and the value is a list with all the club names from that country."""

    dictionary = {}

    country_tpl = ()
    for info in clubs_info_list:
        country = info[2]
        country_tpl += (country,)

    for country_name in country_tpl:
        dictionary[country_name] = []
    
    for info in clubs_info_list:
        dictionary[info[2]].append(info[1])

    return dictionary
        

def rank_up(clubs_info_list):
    ... 

def main():
    # * Ranking, Name, Country, Points, 1Year Change, previous point scored, symbol change
    R, N, C, P, YC, PPS, C = 0, 1, 2, 3, 4, 5, 6

    clubs_info_list, header = data()
    #print(clubs_info_list)


    #country("Bulgaria", clubs_info_list)
    dictionary_of_clubs_from_country = clubs_from_country(clubs_info_list)


    

if __name__ == "__main__":
    main()