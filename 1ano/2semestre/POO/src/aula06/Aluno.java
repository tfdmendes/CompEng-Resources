package aula06;
import aula05.DateYMD;
import java.time.LocalDate;


public class Aluno extends Pessoa{
    private static int contadorNmec = 99;
    private final int nmec;
    private DateYMD dataInsc;
    private LocalDate dataAtual = LocalDate.now();

    // Construtor
    public Aluno(String name, int cc, DateYMD dataNasc, DateYMD dataInsc){
        super(name, cc, dataNasc);
        this.dataInsc = dataInsc;
        this.nmec = ++contadorNmec; // if a new object is created add a new nmec
    }

    // Constructor that gets the current day from LocalDate, and attributes it to DataInsc
    public Aluno(String name, int cc, DateYMD dataNasc){
        super(name, cc, dataNasc);
        this.dataInsc = new DateYMD(dataAtual.getYear(), dataAtual.getMonthValue() , dataAtual.getDayOfMonth());
        this.nmec = ++contadorNmec;
    }

    public int getNMec(){
        return nmec;
    }

    public String getName(){
        return super.getName();
    }

    @Override
    public String toString(){
        return super.toString() + "; NMec: " + nmec + "; Data De Inscrição: " + dataInsc;
    }
        

}
