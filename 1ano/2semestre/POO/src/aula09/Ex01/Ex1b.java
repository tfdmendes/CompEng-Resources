package aula09.Ex01;
import java.util.HashSet;
import java.util.Set;

import aula05.DateYMD;
import aula06.*;

public class Ex1b {
    public static void main(String[] args) {
        Set<Pessoa> c3 = new HashSet<>();

        DateYMD b1 = new DateYMD(2004, 9, 16);
        Pessoa p1 = new Pessoa("Tiago Mendes", 232312, b1);
        c3.add(p1);
        DateYMD b2 = new DateYMD(2004, 1, 30);
        Pessoa p2 = new Pessoa("João", 6789, b2);
        c3.add(p2);
        DateYMD b3 = new DateYMD(2004, 5, 6);
        Pessoa p3 = new Pessoa("Paulo", 4567890, b3);
        c3.add(p3);
        DateYMD b4 = new DateYMD(2004, 2, 25);
        Pessoa p4 = new Pessoa("Miguel", 9876, b4);
        c3.add(p4);
        DateYMD b5 = new DateYMD(2004, 11, 23);
        Pessoa p5 = new Pessoa("Rodrigo", 345678, b5);
        c3.add(p5);
        c3.add(p5);

        for(Pessoa p : c3){
            System.out.println(p);
        }
    }
}
