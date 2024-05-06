package aula09.Ex03;

import java.util.Scanner;

public class PlaneTester {
    private static PlaneManager manager = new PlaneManager();
    private static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        while (true) {
            System.out.println("\n*** Plane Manager ***");
            System.out.println("1. Adicionar avião");
            System.out.println("2. Remover avião");
            System.out.println("3. Procurar avião");
            System.out.println("4. Listar todos os aviões");
            System.out.println("5. Listar aviões comerciais");
            System.out.println("6. Listar aviões militares");
            System.out.println("7. Exibir avião mais rápido");
            System.out.println("0. Sair");
            System.out.print("> R: ");

            int choice = sc.nextInt();
            switch (choice) {
                case 1:
                    addPlaneMenu();
                    break;
                case 2:
                    removePlaneMenu();
                    break;
                case 3:
                    searchPlaneMenu();
                    break;
                case 4:
                    manager.printAllPlanes();
                    break;
                case 5:
                    printCommercialPlanes();
                    break;
                case 6:
                    printMilitaryPlanes();
                    break;
                case 7:
                    printFastestPlane();
                    break;
                case 0:
                    System.out.println("A encerrar o gestor de aviões");
                    System.exit(0);
                default:
                    System.out.println("Opção inválida. Tenta novamente");
            }
        }
    }

    private static void addPlaneMenu() {
        System.out.println("Escolha o tipo de avião para adicionar:");
        System.out.println("1. Avião Comercial");
        System.out.println("2. Avião Militar");
        System.out.print("Opção: ");
        int type = sc.nextInt();
        sc.nextLine(); // Consume the newline
    
        System.out.print("Insira o ID do avião: ");
        String id = sc.nextLine();
    
        System.out.print("Insira o fabricante: ");
        String manufacturer = sc.nextLine();
    
        System.out.print("Insira o modelo: ");
        String model = sc.nextLine();
    
        System.out.print("Insira o ano de produção: ");
        int prodYear = sc.nextInt();
    
        System.out.print("Insira o número máximo de passageiros: ");
        int maxPassengers = sc.nextInt();
    
        System.out.print("Insira a velocidade máxima: ");
        int maxSpeed = sc.nextInt();
    
        Plane plane;
        if (type == 1) {
            System.out.print("Insira o número de tripulantes: ");
            int crewNumber = sc.nextInt();
            plane = new CommercialPlane(id, manufacturer, model, prodYear, maxPassengers, maxSpeed, crewNumber);
        } else if (type == 2) {
            System.out.print("Insira a quantidade de munição: ");
            int ammo = sc.nextInt();
            plane = new MilitaryPlane(id, manufacturer, model, prodYear, maxPassengers, maxSpeed, ammo);
        } else {
            System.out.println("Tipo de avião inválido.");
            return;
        }

        manager.addPlane(plane);
        System.out.println("Avião adicionado com sucesso!");
    }
    

    private static void removePlaneMenu() {
        System.out.print("Digite o ID do avião para remover: ");
        String id = sc.next();
        manager.removePlane(id);
    }

    private static void searchPlaneMenu() {
        System.out.print("Digita o ID do avião para procurar: ");
        String id = sc.next();
        Plane plane = manager.searchPlane(id);
        if (plane != null) {
            System.out.println(plane);
        } else {
            System.out.println("Avião não encontrado.");
        }
    }

    private static void printCommercialPlanes() {
        for (Plane plane : manager.getCommercialPlanes()) {
            System.out.println(plane);
        }
    }

    private static void printMilitaryPlanes() {
        for (Plane plane : manager.getMilitaryPlanes()) {
            System.out.println(plane);
        }
    }

    private static void printFastestPlane() {
        Plane fastestPlane = manager.getFastestPlane();
        if (fastestPlane != null) {
            System.out.println("O avião mais rápido é: " + fastestPlane);
        } else {
            System.out.println("Não há aviões na lista.");
        }
    }
}
