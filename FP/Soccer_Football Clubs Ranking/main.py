#1
def ficheiro_tupulo(nome_ficheiro):
   with open(nome_ficheiro, "r", encoding="UTF-8") as file:
      lista_informacoes = []
      for line in file:
         if line.startswith("ranking") == True:
            continue
         line_formatted = line.strip()
         club = line_formatted.split(",")
         lista_informacoes.append(tuple(club))
      return lista_informacoes



#* 2
def pais_club(nome_pais, lista_clubes):
   print(f"Clubs de {nome_pais}")
   for info in lista_clubes:
      club = info[1]
      ranking = info[0]
      pontos = info[3]
      pais = info[2]
      if nome_pais == pais:
         mensagem = f"Club: {club}; Ranking: {ranking}; Pontos: {pontos}"
         print(mensagem)
         output("output", mensagem)


#* 3
def output(nome_ficheiro, out):
   path = f"/Users/tiago/Documents/Universidade/FP/Soccer_Football Clubs Ranking/{nome_ficheiro}.txt"
   with open(path, "a", encoding="UTF-8") as file:
      file.write(f"{out}\n")


#* 4
def dicionario_club(lista_clubes):
   """Uma função que receba a lista de túpulos e que devolva um dicionário em que a chave é o país sede dos clubes e o valor correspondente deverá ser uma lista com o nome de todos os clubes desse país"""
   pais_club = {}
   for info in lista_clubes:
      pais = info[2]
      club = info[1]
      if pais not in pais_club:
         pais_club[pais] = [club]
      else:
         pais_club[pais].append(club)

   return pais_club


#* 5
def maior_subida_ranking(lista_clubes):
   """Uma função que receba a lista de túpulos e devolva o túpulo correspondente ao clube que mais subiu no ranking."""
   maior_subida_ranking = 0
   for info in lista_clubes:
      diferenca_posicoes = int(info[4])
      if diferenca_posicoes > maior_subida_ranking:
         maior_subida_ranking = diferenca_posicoes
         club_tuplo = info
   return club_tuplo


#*6
def informacoes_club(nome, lista_clubes):
   print(f"Informações sobre {nome}")
   for info in lista_clubes:
      ranking = info[0]
      club = info[1]
      pais = info[2]
      pontos = info[3]
      diferenca_posicoes = info[4]
      score_ano_anterior = info[5]
      subida_descida = ""
      if info[6] == "+":
         subida_descida = "Subiu no ranking"
      else:
         subida_descida = "Desceu no ranking"

      if nome == club:
         print(f"Ranking: {ranking}; Pais: {pais}; Pontos: {pontos}; Número de posições que subiu/desceu: {diferenca_posicoes}; Score ano anterior: {score_ano_anterior}; {subida_descida}")
         return
   print(f"ERRO, não existe club com o nome {nome}")


#* 7 e 8
def ranking_medio(dicionario, clubes):
   dicionario_ranking_medios = {}
   for pais in dicionario:
      numero_clubs = len(dicionario[pais])

      ranking_total = 0
      
      for info in clubes:
         ranking = int(info[0])
         pais_club = info[2]
         if pais == pais_club:
            ranking_total += ranking

      ranking_medio = round(ranking_total / numero_clubs)
      dicionario_ranking_medios[pais] = ranking_medio

   dicSorted = sorted(dicionario_ranking_medios.items(), key=lambda x:x[1])

   for x in dicSorted:
      print(f"Ranking médio de {x[0]} é {x[1]}")
   
   
def main():
   nome_ficheiro = "/Users/tiago/Documents/Universidade/FP/Soccer_Football Clubs Ranking/Soccer_Football Clubs Ranking.csv"
   lista_clubes = ficheiro_tupulo(nome_ficheiro)
   # clubes_pais("Nigeria", lista_clubes)
   dicionario = dicionario_club(lista_clubes)
   #club_maior_subida_ranking = maior_subida_ranking(lista_clubes)
   #informacoes_club("AC Horsens", lista_clubes)
   ranking_medio(dicionario, lista_clubes)


if __name__ == "__main__":
    main()