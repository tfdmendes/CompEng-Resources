package aula04;
import java.util.Scanner;
import utils.*;

class Car {
    public String make;
    public String model;
    public int year;
    public int kms;

    public Car(String make, String model, int year, int kms) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
    }

    public void drive(int distance) {
        this.kms += distance;
    }

    public String getMake(){
        return this.make;
    }

    public String getModel(){
        return this.model;
    }

    public int getYear(){
        return this.year;
    }

    public int getKms(){
        return this.kms;
    }
}

public class CarDemo {
    static Scanner sc = new Scanner(System.in);
    static int registerCars(Car[] cars) {
        int numberCars = 0;
        String info;
        String[] arrayInfo;
        boolean endOfRegister = false;

        // pede dados dos carros ao utilizador e acrescenta ao vetor
        // registo de carros termina quando o utilizador inserir uma linha vazia 
        // devolve número de carros registados

        do {
            System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
            info = sc.nextLine();
            if (info.isEmpty())
                endOfRegister = true;
            else {
                // Criação de um novo array definido pelos elementos que continham um espaço entre si
                arrayInfo = info.split(" ");
                            
                if (isValidCarData(arrayInfo)){
                    String modelo = "";

                    for(int i = 1; i < arrayInfo.length-2; i++){
                        modelo += arrayInfo[i];
                    }

                    cars[numberCars++] = new Car(arrayInfo[0], modelo, (Integer.parseInt(arrayInfo[2])), (Integer.parseInt(arrayInfo[3])));
                    continue;
                }
                else{
                    System.out.println("Dados inseridos não são válidos\n");
                    continue;
                }
            }
        }while(!endOfRegister);
        return numberCars;
   }


    static boolean isValidCarData(String carInfo[]){
        // Verificar que o comprimento do array é pelo menos 4 
        if (carInfo.length < 4) 
            return false;  
            
        // Verificar se  ambos os últimos membros são numéricos (ano e kms)
        else if (!Validation.isNumeric(carInfo[carInfo.length-2]) || !Validation.isNumeric(carInfo[carInfo.length-1]))
            return false;
        else
            return true;
    }




    static void registerTrips(Car[] cars, int numCars) {
        // pede dados das viagens ao utilizador e atualiza informação do carro
        // registo de viagens termina quando o utilizador inserir uma linha vazia 
        
        while(true){
            System.out.print("\n\nRegiste uma viagem no formato \"carro:distância\": ");
            String line = sc.nextLine();
            if (line.isEmpty())
                break;
            // Assegurar que em ambos os lados do : existem caracteres num range de [0,9]
            else if (!line.matches("\\d+:\\d+")){
                System.out.println("Dados mal formatados\n");
                continue;
            }
            
            String[] parts = line.split(":");
            if (parts.length != 2 ){
                System.out.println("Dados mal introduzidos. Tenta novamente\n");
            }
            else {
                try {
                    int car = Integer.parseInt(parts[0]);
                    int distance = Integer.parseInt(parts[1]);

                    if (car < 0 || car >= numCars || distance <= 0) {
                        System.out.println("Dados mal formatados. Tente novamente.\n");
                    } 
                    else {
                        cars[car].drive(distance);
                    }
                } catch (NumberFormatException e) {
                    System.out.println("Dados mal formatados. Tente novamente.\n");
                }
            }
        }
    }

    static void listCars(Car[] cars) {
        System.out.println("\n\nCarros registados:");
        for (int i = 0; i < cars.length; i++){
            Car c = cars[i];
            if (c != null){
                System.out.print(c.getMake() + ", " + c.getModel() + ", " + c.getYear() + ", kms: " + c.getKms() + "\n");
            } 
        }
    }

    public static void main(String[] args) {
        Car[] cars = new Car[10];
        int numCars = registerCars(cars);
        if (numCars>0) {
            listCars(cars);
            registerTrips(cars, numCars);
            listCars(cars);
        }
        sc.close();
    }
}