import math

# Existem 2 moradores por andar, ou seja, no total existem 8 moradores
# Cada morador sobe e desce 2 vezes por dia
# Cada andar tem uma altura de 3m

# Quantos KM percorre o ELEVADOR por ano?
def moradores():
    
    global numero_moradores
    global elevaodor

    numero_moradores = int(input("Quantos moradores existem no predio? "))
    if numero_moradores < 0:
        print("Não podem existir moradores negativos")
        exit(1)
    if numero_moradores == 0:
        print("Não existem moradores no prédio")
        exit(0)
    if numero_moradores > 0:
        andarRC()


def andarRC():
# Moradores  neste andar nao usam o elevador 
    RC = input("Quantos moradores vivem no RC?")


def andar1():
# Neste andar percorrem 6m por dia (CADA MORADOR)
# No total percorrem 12m
    moradores_piso1 = input("Quantos moradores vivem neste piso?")
    if moradores_piso1 > 0:








#def andar2():
# Neste andar percorrem 12m por dia (CADA MORADOR)
# No total percorrem 24m

#def andar3():
# Neste andar percorrem 18m por dia (CADA MORADOR)
# No total percorrem 36m 








