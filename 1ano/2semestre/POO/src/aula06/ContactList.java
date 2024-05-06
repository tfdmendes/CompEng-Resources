package aula06;
import java.util.Arrays;
import java.util.Scanner;
import aula05.DateYMD;
import utils.*;

public class ContactList {
    private static final Scanner sc = new Scanner(System.in);
    private static Contacto[] contactList = {};
    
    public static void main(String[] args) {
        boolean finished = false, contactHasBeenSet = false;
        int input = 0;

        while(!finished){
            System.out.println("\n1 - Inserir Contacto\n2 - Alterar Contacto\n3 - Apagar Contacto\n4 - Procurar Contacto\n5 - Listar Contactos\n0 - Sair");
            do {
                System.out.print("> R: ");
                try {
                    input = sc.nextInt();
                } catch (Exception e){
                    System.out.println("Não introduziste uma opção válida");
                    sc.nextLine(); // Consume the invalid input
                }

                // Check if any contact has been set before allowing to move on to other operations
                if (!contactHasBeenSet && input != 1 && input != 0)
                    System.out.println("Deverias inserir um contacto primeiro!");
                else
                    contactHasBeenSet = true; 
            } while(input < 0 || input > 5);

            switch(input){
                case 0:
                    sc.close();
                    finished = true;
                    break;
                case 1:
                    insertContact();
                    break;
                case 2:
                    changeContact();
                    break;

                case 3:
                    deleteContact();
                    break;

                case 4:
                    searchContact();
                    break;

                case 5:
                    listContact();
                    break;
            }
        }
    }

    private static void insertContact(){
        String name, email, phoneString;
        int cc, year, month, day, phoneNumber = 0;
        Contacto contact = null;

        name = UserInput.readString(sc, "\nNome: ");
        cc = UserInput.readIntClosed(sc, 1, 999999999, "Número Cartão Cidadão: ");
        year = UserInput.readIntClosed(sc, 1, 2024, "Ano de Nascimento: ");
        month = UserInput.readIntClosed(sc, 1, 12, "Mês de Nascimento: ");
        day = UserInput.readIntClosed(sc, 1, 31, "Dia de Nascimento: ");        
        sc.nextLine();

        do{
            System.out.print("Número de telemóvel (Pressiona Enter se não quiseres introduzir número de telemóvel): ");
            phoneString = sc.nextLine();

            // Checking if the user doesnt want to enter a phone number
            if(phoneString.isEmpty())
                phoneNumber = 0;
            else{
                try{
                    phoneNumber = Integer.parseInt(phoneString);
                } catch (IllegalArgumentException e) {
                    System.out.println("Input inválido. A colocar o número a 0");
                    phoneNumber = 0;
                }
            }

            System.out.print("Email (Pressiona Enter se não quiseres introduzir email): ");
            email = sc.nextLine();
            if (phoneNumber == 0 && email.equals(""))
                System.out.println("\n!! É necessário introduzir email ou o número de telemóvel !!\n");

        } while((phoneNumber == 0 && email.equals("")) || (!Contacto.validPhoneNumber(phoneNumber) && !Contacto.validEmail(email)));

        DateYMD birthday = new DateYMD(year, month, day);

        // Checking if the contact exists
        boolean exists = false;
        for (Contacto c : contactList) {
            if (c.getName().equalsIgnoreCase(name) || c.getCC() == cc) {
                System.out.println("Um contato com este nome ou CC já existe.");
                exists = true;
                break;
            }
        }
        
        if (exists) {
            System.out.print("Deseja inserir mesmo assim? (S/N): ");
            String response = sc.next();
            if (!response.equalsIgnoreCase("S"))
                return; // Cancel if user doesn't confirm
        }

        // Creating the object based on the choices from the user
        if(phoneNumber == 0)
            contact = new Contacto(name, cc, birthday, email);
        else if (email.equals(""))
            contact = new Contacto(name, cc, birthday, phoneNumber);
        else {
            contact = new Contacto(name, cc, birthday, phoneNumber, email);
        }

        // Updating the size of the array and adding the new contact
        contactList = Arrays.copyOf(contactList, contactList.length + 1);
        contactList[contactList.length-1] = contact; 
    }


    private static void changeContact(){
        System.out.print("\nQual contacto é que gostarias de alterar? (Podes procurar por nome, email, ou numero de telemovel): ");
        String query = sc.next();
        Contacto contactBeingChanged;

        int[] indexesQuery = searchContactsIndex(query);
        if(indexesQuery.length == 0){
            System.out.println("Não foram encontrados contactos");
            return;
        }
        else
            contactBeingChanged = selectContact(indexesQuery);

        int input = UserInput.readIntClosed(sc, 0, 5, "\nSeleciona o que gostarias de alterar:\n1 - Nome\n2 - CC\n3 - Data de Nascimento\n4 - Número de Telemóvel\n5 - Email\n> R: ");

        switch(input){
            case 1:
                String newName = UserInput.readString(sc, "Novo nome: ");
                contactBeingChanged.setName(newName);
                break;

            case 2:
                int newCC = UserInput.readIntClosed(sc, 1, 999999999, "Número Cartão Cidadão: ");
                contactBeingChanged.setCC(newCC);
                break;

            case 3:
                int newYear = UserInput.readIntClosed(sc, 1, 2024, "Novo ano de Nascimento: ");
                int newMonth = UserInput.readIntClosed(sc, 1, 12, "Novo mês de Nascimento: ");
                int newDay = UserInput.readIntClosed(sc, 1, 31, "Novo dia de Nascimento: ");
                contactBeingChanged.setBirthday(newYear, newMonth, newDay);
                break;

            case 4:
                int newPhoneNumber;
                do {
                    System.out.print("Novo número de telemóvel: ");
                    newPhoneNumber = sc.nextInt();
                } while(!Contacto.validPhoneNumber(newPhoneNumber));
                contactBeingChanged.setPhoneNumber(newPhoneNumber);
                break;

            case 5:
                String newEmail;
                do {
                    System.out.print("Novo Email: ");
                    newEmail = sc.next();
                } while (!Contacto.validEmail(newEmail));
                contactBeingChanged.setEmail(newEmail);
                break;
        }
    }


    private static void deleteContact(){
        System.out.print("\nIndica o parâmetro por que queres procurar, para apagar. (Nome, Email, Numero Telemovel): ");
        String query = sc.next();
        int[] indexesQuery = searchContactsIndex(query);
        if(indexesQuery.length == 0)
            System.out.println("Não foram encontrados contactos");
        else{
            Contacto contactToBeDeleted = selectContact(indexesQuery);

            // Creating a new array without the deleted contact
            Contacto[] newContactList = new Contacto[contactList.length - 1];
            int newIndex = 0;
            for (int i = 0; i < contactList.length; i++) {
                if (!contactList[i].equals(contactToBeDeleted)) {
                    newContactList[newIndex++] = contactList[i];
                }
            }
            contactList = newContactList;
            System.out.println("Contacto apagado com sucesso.");
        }
    }        


    private static void searchContact(){
        System.out.print("Insere aquilo por que queres procurar (nome, email, ou numero de telemovel): ");
        String query = sc.next();
        int[] indexesQuery = searchContactsIndex(query);

        if (indexesQuery.length == 0)
            System.out.println("Não foram encontrados contactos");
        else{
            System.out.println("Número de contactos econtrados: " + indexesQuery.length);
            for(int index : indexesQuery){
                System.out.println(contactList[index]);
            }
        }   
    }
        
    private static void listContact(){
        System.out.println();
        for (int i = 0; i < contactList.length; i++ ){
            System.out.println(contactList[i]);
        }
        System.out.println();
    }

    //* Auxiliary methods
    // If there is any contacts that contains the query, return an Array of the Indexes
    private static int[] searchContactsIndex(String query) {
        int[] indexes = new int[contactList.length];
        int index = 0;
        for (int i = 0; i < contactList.length; i++) {
            if (contactList[i].getName().contains(query) || contactList[i].getEmail().contains(query) || String.valueOf(contactList[i].getPhoneNumber()).contains(query)) {
                indexes[index] = i;
                index++;
            }
        }
        return indexes;
    }

    // returns the id of the contact, null if there aren't any that match
    private static Contacto searchContactById(int id) {
        for (Contacto contact : contactList) {
            if (contact.getID() == id) 
            return contact;
        }
        return null;
    }

    private static Contacto selectContact(int[] indexes) {
        Contacto contactSelected;
        System.out.println("Foram encontrados os seguintes contactos com esse nome, email ou número de telemove. Seleciona um: ");
        for (int i : indexes)
            System.out.println(contactList[i]);
        do {
            System.out.print("Insira o ID do contacto que pretende alterar: ");
            int index = sc.nextInt();
            contactSelected = searchContactById(index);
        } while(contactSelected == null);
        return contactSelected;
    }
}