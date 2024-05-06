package aula06;

import aula05.DateYMD;

public class Pessoa {
    private String name;
    private int cc; 
    private DateYMD birthday;

    public Pessoa (String name, int cc, DateYMD birthday){
        if(validDetails(name, cc)){
            this.name = name;
            this.cc = cc;
        }
        this.birthday = birthday;
    }
    
    /**
     * Validates the Name and CC
     * @param name Name of the person
     * @param cc Number of the CC
     * @return true if all the details are valid, otherwise return false.
     */
    public boolean validDetails(String name, int cc){
        return name != " " && cc > 0;
    }


    public String getName(){
        return this.name;
    }

    public int getCC(){
        return this.cc;
    }



    public void setName(String name){
        this.name = name;
    }

    public void setCC(int cc){
        this.cc = cc;
    }

    public void setBirthday(int year, int month, int day){
        birthday.setDate(year, month, day);
    }




    @Override
    public String toString(){
        return "Nome: " + this.name + "; CC: " + this.cc + "; Data de Nascimento: " + birthday.getDay() + "/" + birthday.getMonth() + "/" + birthday.getYear();
    }



}





