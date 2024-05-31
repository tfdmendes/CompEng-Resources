package aula10.Ex01;

import java.util.HashMap;
import java.util.Map;

public class Bookshelf {

    //! https://www.w3schools.com/java/java_hashmap.asp

    public static void main(String[] args) {
        Map<String, Book> bookshelf =  new HashMap<>();

        bookshelf.put("Selfhelp", new Book("Atomic Habits", "James Clear", 2018));
        bookshelf.put("Fiction", new Book("The Great Gatsby", "F. Scott", 1925));
        bookshelf.put("Novel", new Book("The Outsider", "Stephen King", 2022));
        bookshelf.put("Non-fiction", new Book("Sapiens: A Brief History of Humankind", "Yuval Noah Harari", 2011));
        bookshelf.put("Mystery", new Book("Shutter Island", "Dennis Lehane", 2003));

        // bookshelf.get("Fiction");   

        System.out.println("\nGenres:");
        for (String genre : bookshelf.keySet()) {
            System.out.println(genre);
        }

        System.out.println("\nBooks:");
        for (Book book : bookshelf.values()){
            System.out.println(book);
        }

        System.out.println("\nAll genre books pairs:");
        // System.out.println(bookshelf);
        for(String i : bookshelf.keySet()){
            System.out.println("Genre: " + i + " -> Book: " + bookshelf.get(i));
        }

    }

}
