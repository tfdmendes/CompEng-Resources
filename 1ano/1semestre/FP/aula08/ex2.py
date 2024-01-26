def main():
    path = "/Users/tiago/Documents/Universidade/FP/aula08/names.txt"

    dic = {}
    with open(path, 'r') as file:
        for line in file:
            if line.startswith("Nome"):
                continue
            stripped_line = line.strip()
            lista = stripped_line.split(" ")
            
            ultimo_nome = lista[-1]
            primeiro_nome = lista[0]

            if ultimo_nome not in dic:
                dic[ultimo_nome] = [primeiro_nome]
            else:
                dic[ultimo_nome].append(primeiro_nome)

            

if __name__ == "__main__":
    main()
