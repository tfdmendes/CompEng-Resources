    package aula09.Ex01;

    import java.util.Set;
    import java.util.TreeSet;
    import aula07.Ex02.*;

    //! https://docs.oracle.com/javase/8/docs/api/java/util/TreeSet.html

    public class Ex01c {
        public static void main(String[] args) {
            Set<Date> c4 = new TreeSet<>();

            DateYMD d1 = new DateYMD(2004, 9, 16);
            DateYMD d2 = new DateYMD(2000, 12, 12);
            DateYMD d3 = new DateYMD(2001, 1, 12);
            DateND d4 = new DateND(2004, 9, 6);
            DateND d5 = new DateND(2002, 4, 6);

            c4.add(d1);
            c4.add(d2);
            c4.add(d3);
            c4.add(d4);
            c4.add(d5);

            for(Date d : c4){
                System.out.println(d);
            }

            //* Getting an error due to not having the compareTo?

        }
    }   
