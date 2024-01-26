# tem no minimo 3 caracteres 
# contem apenas letras, digitos, pontos [A,Z,0,9,....]
# Não contem pontos seguidos
def uaMailChecker(str):
    assert "@ua.pt" in str
    valid_chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789."
    # Encontrar o recipient
    if "@" in str:
        index = str.index("@")
        recipient = str[:index]
        #print(recipient)
    
    # recipient tem no minimo 3 caracteres
    if len(recipient) < 3:
        return False

    # Verificar se o domain é valido
    for letter in recipient:
        # verifica se tem 2 pontos seguidos
        if ".." in recipient:
            return False
        elif letter not in valid_chars:
            return False
    return True     
        
isitUa= uaMailChecker(input("Diz-me o teu email "))
if isitUa == True:
    print("Sim é mail da UA")
else:
    print("Não é mail da UA")

