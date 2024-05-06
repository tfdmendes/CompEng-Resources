package aula06;
import aula05.DateYMD;

public class Contacto extends Pessoa {
    private static int instanceCounter = 1;
    private int id;
    private String email = "";
    private int phoneNumber = 0;

    public Contacto(String name, int cc, DateYMD birthday, int phoneNumber, String email){
        super(name, cc, birthday);
        if (!validEmail(email))
            throw new IllegalArgumentException("Invalid Email Adress");
        if  (!validPhoneNumber(phoneNumber))
            throw new IllegalArgumentException("Invalid Phone Number");
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.id = instanceCounter;
        instanceCounter++;
    }

    // If no email is entered
    public Contacto(String name, int cc, DateYMD birthday, int phoneNumber){
        super(name, cc, birthday);
        if (!validPhoneNumber(phoneNumber))
            throw new IllegalArgumentException("Invalid Phone Number");
        this.phoneNumber = phoneNumber;
        this.id = instanceCounter;
        instanceCounter++;
    }

    // If no phone number is entered
    public Contacto(String name, int cc, DateYMD birthday, String email){
        super(name, cc, birthday);
        if(!validEmail(email))
            throw new IllegalArgumentException("Invalid Email");
        this.id = instanceCounter;
        this.email = email;
        instanceCounter++;
    }

    /**
     * Validates the phone number.
     * Checks if the phone number has 9 digits, and starts with the number 9
     * 
     * @param number the phone number to be validated
     * @return true if the phone number has 9 digits and starts with the number 9, otherwise false
     */
    public static boolean validPhoneNumber(int number){
        if (String.valueOf(number).length() == 9){
            while(number >= 10) {
                number /= 10;
            }
            return number == 9;
        } else{
            return false;
        }
    }

    /**
     * Validates the email.
     * Checks if the email contains the '@' character and if the domain part ends with '.pt' or '.com'.
     * 
     * @param email the email to be validated
     * @return true if the email contains '@' and ends with either '.pt' or '.com', otherwise false
     */
    public static boolean validEmail(String email){
        String[] parts;

        if (email.contains("@")){
            parts = email.split("@");
            if (parts.length == 2);
                if(parts[1].endsWith(".com") || parts[1].endsWith(".pt"))
                    return true;
        }
        return false;
    }


    public String getEmail(){
        return this.email;
    }

    public int getID(){
        return this.id;
    }

    public int getPhoneNumber(){
        return this.phoneNumber;
    }


    public void setEmail(String email){
        if(validEmail(email))
            this.email = email;
    }

    public void setPhoneNumber(int phoneNumber){
        if(validPhoneNumber(phoneNumber))
            this.phoneNumber = phoneNumber;
    }

    @Override
    public String toString(){
        if (this.email == "")
            return "ID: " + this.id + "; " + super.toString() + "; Número telemóvel: " + this.phoneNumber;
        else if (this.phoneNumber == 0)
            return "ID: " + this.id + "; " +  super.toString() + "; Email: " + this.email;
        else
            return "ID: " + this.id + "; " +  super.toString() + "; Número telemóvel: " + this.phoneNumber + "; Email: " + this.email;
    }
}