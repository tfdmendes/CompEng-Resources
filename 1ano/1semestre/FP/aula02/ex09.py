# Programa para calcular a nota final FP

# CPT nota minima 6.5 / vale 30%
# Calculo CTP = (15% ATP1 + 15% ATP2) / 30%

# CP nota minima 6.5 / vale 70%
# Calculo CP = (20% APx + 50% APF) / 70%.

CTP = float(input("Qual a nota da Componente Teorico-Pratica? "))
CP = float(input("Qual a nota da Componente-Pratica? "))

# Se CTP ou a CP for inferior a 6.5 o aluno chumba
if CTP < 6.5 or CP < 6.5:
    print("O Aluno chumbou")
    exit(0)

NF = round((0.3 * CTP) + (0.7 * CP))

# Aluno tem que ir a recurso se a nota final for inferior a 10
if NF < 10:
    print(f"A nota final do aluno foi {NF}. O Aluno tem que ir a recurso")
    ATPR = float(input("Nota do teste Teorico-Pratico feito em recurso? "))
    APR = float(input("Nota do teste Pratico feito em recurso? "))

    if ATPR > 6.5 and APR > 6.5:
        # Nota de recurso (NR) arredonda sempre às unidades 
        # Calculo Nota de recurso: NR = 30% max(CTP, ATPR) + 70% max(CP, APR)
        # A nota de recurso tem em conta a melhor nota entre CTP/ATPR e CP/APR
        NR = round((0.3 * max(CTP,ATPR)) + 0.7 *  max(CP,APR))
        print(f"O aluno passa a FP com {NR}")
    else:
        print("Aluno chumbou também ao recurso")
else:
    print(f"O aluno passa a FP com {NF}")