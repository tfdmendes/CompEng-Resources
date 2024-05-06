package aula06;
import aula05.DateYMD;

public class Bolseiro extends Aluno {

    private int montanteBolsa;
    private Professor orientador;

    public Bolseiro(String nome, int cc, DateYMD dataNasc, Professor orientador, int montanteBolsa){
        super(nome, cc, dataNasc);
        this.montanteBolsa = montanteBolsa;
        this.orientador = orientador;
    }

    public void setBolsa(int montanteBolsa){
        this.montanteBolsa = montanteBolsa;
    }

    public int getBolsa(){
        return this.montanteBolsa;
    }

    public String getOrientador(){
        return orientador.getName();
    }

    @Override
    public String toString(){
        return super.toString() + ", Bolsa: " + montanteBolsa + ", Orientador: " + orientador;
    }

}
