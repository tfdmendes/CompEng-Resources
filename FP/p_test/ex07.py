# Transforma uma string dividida por hifens ou em snake case em camel case e retorna a string resultante
# Exemplo: "the_stealth_warrior" -> "TheStealthWarrior"
# Exemplo: "The-Stealth-Warrior" -> "TheStealthWarrior"
def to_camel_case(text):
    
    lista_palavras = text.replace("-", "_").split("_")

    capitalizado = []
    for palavras in lista_palavras:
        palavra_capitalizada = palavras.capitalize()
        capitalizado.append(palavra_capitalizada)
    return "".join(capitalizado)

def main():
    assert(to_camel_case("the_stealth_warrior") == "TheStealthWarrior")
    assert(to_camel_case("The-Stealth-Warrior") == "TheStealthWarrior")
    assert(to_camel_case("A-B-C") == "ABC")
    assert(to_camel_case("the-stealth-warrior") == "TheStealthWarrior")
    assert(to_camel_case("The_Stealth_Warrior") == "TheStealthWarrior")
    print("All tests passed!")

if __name__ == "__main__":
    main()