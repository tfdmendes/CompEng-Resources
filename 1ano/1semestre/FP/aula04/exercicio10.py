def isPrime(n):
    for numero in range(2, int(n/2)):
        if n % numero == 0:
            #print("O número não é primo")
            return False
        else:
            #print("O número é primo")
            return True
isPrime(17)
