# Testa se um número é narcisista (quando a soma dos seus dígitos elevados à potência do número de dígitos é igual ao próprio número)
# Exemplo: 371 é narcisista porque 3 ** 3 + 7 ** 3 + 1 ** 3 = 371
def narcissistic(value):
    value_string = str(value)
    numero_digitos = len(value_string)

    total = 0
    for number in value_string:
        total += int(number) ** numero_digitos
    
    if total == value:
        return True
    else:
        return False

def main():
    assert(narcissistic(7) == True)
    assert(narcissistic(371) == True)
    assert(narcissistic(122) == False)
    assert(narcissistic(4887) == False)
    assert(narcissistic(1634) == True)
    assert(narcissistic(8208) == True)
    assert(narcissistic(9474) == True)
    assert(narcissistic(54748) == True)
    print("All tests passed!")

if __name__ == "__main__":
    main()

