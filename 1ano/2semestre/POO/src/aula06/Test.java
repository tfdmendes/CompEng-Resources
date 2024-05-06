package aula06;
import aula05.*;



public class Test {
    public static void main(String[] args) {
        Aluno al = new Aluno("Andreia Melo", 9855678, new DateYMD(1990, 7, 18), new DateYMD(2019, 9, 1));
        Professor p1 = new Professor("Jorge Almeida", 3467225, new DateYMD(1967, 3, 13), "Associado", "Informática");
        Bolseiro bls = new Bolseiro("Igor Santos", 8976543, new DateYMD(1985, 5, 11), p1, 900);
        bls.setBolsa(1050);

        System.out.println("Aluno: " + al.getName());

        System.out.println(al);

        System.out.println("Bolseiro: " + bls.getName() + ", NMec: " + bls.getNMec() + ", Bolsa: " + bls.getBolsa() + ", Orientador: " + bls.getOrientador());

        System.out.println(bls);

        // System.out.println(Contacto.validPhoneNumber(100000000));
        // System.out.println(Contacto.validPhoneNumber(926207180));

        // System.out.println(Contacto.validEmail("tfdmendes@gmail.com"));
        // System.out.println(Contacto.validEmail(".pt@tfdmendes@gmail.com"));
        // System.out.println(Contacto.validEmail("email.pt"));

    }
}
