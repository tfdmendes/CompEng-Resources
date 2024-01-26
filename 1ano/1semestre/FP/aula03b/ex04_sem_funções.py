# Variáveis para  a idade de cada membro da família
idade_1 = int(input("Idade do primeiro membro da familia: "))
idade_2 = int(input("Idade do segundo membro da familia: "))
idade_3 = int(input("Idade do terceiro membro da familia: "))
idade_4 = int(input("Idade do quarto membro da familia: "))

#Preço tabela
preço_inferior_a_6 = 0
preço_entre_6_e_12 = 2.5
preço_entre_13_e_65 = 5
preço_mais_65 = 2.5

# dar cada preço a uma idadde espeifica
preço_1 = preço_inferior_a_6 if idade_1 < 6 else preço_entre_6_e_12 if idade_1 < 13 else preço_entre_13_e_65 if idade_1 < 65 else preço_mais_65
preço_2 = preço_inferior_a_6 if idade_2 < 6 else preço_entre_6_e_12 if idade_2 < 13 else preço_entre_13_e_65 if idade_2 < 65 else preço_mais_65
preço_3 = preço_inferior_a_6 if idade_3 < 6 else preço_entre_6_e_12 if idade_3 < 13 else preço_entre_13_e_65 if idade_3 < 65 else preço_mais_65
preço_4 = preço_inferior_a_6 if idade_4 < 6 else preço_entre_6_e_12 if idade_4 < 13 else preço_entre_13_e_65 if idade_4 < 65 else preço_mais_65

# Cálculo do preço total
preço_total = preço_1 + preço_2 + preço_3 + preço_4

print(f"O preço total é de {preço_total}€")