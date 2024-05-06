package aula06;
import aula05.*;

public class Professor extends Pessoa {
    private String categoria;
    private String departamento;

    public Professor(String nome, int cc, DateYMD dataNasc, String categoria, String departamento){
        super(nome, cc, dataNasc);
        if (categoria == "Auxiliar" || categoria == "Associado" || categoria == "Catedrático")
            this.categoria = categoria;
        else 
            throw new IllegalArgumentException("Não foi introduzido uma categoria válida");

        this.departamento = departamento;
    }

    @Override
    public String toString(){
        return super.toString() + ", Categoria: " + categoria + ", Departamento: " + departamento;
    }

}