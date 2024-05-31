package aula10.Ex02;

import aula10.Ex01.*;
import utils.ParseToString;
import java.util.LinkedList;
import java.util.Map;
import java.util.TreeMap;

import utils.Random;

public class OrderedBookshelf {
    static Map<String, LinkedList<Book>> bookshelf = new TreeMap<>();

    public static void main(String[] args) {
        bookshelf.put("Selfhelp", new LinkedList<Book>());
        bookshelf.put("Fiction", new LinkedList<Book>());
        bookshelf.put("Novel", new LinkedList<Book>());
        bookshelf.put("Non-fiction", new LinkedList<Book>());
        bookshelf.put("Mystery", new LinkedList<Book>());

        bookshelf.get("Selfhelp").add(new Book("Atomic Habits", "James Clear", 2018));
        bookshelf.get("Fiction").add(new Book("The Great Gatsby", "F. Scott", 1925));
        bookshelf.get("Novel").add(new Book("The Outsider", "Stephen King", 2022));
        bookshelf.get("Non-fiction").add(new Book("Sapiens: A Brief History of Humankind", "Yuval Noah Harari", 2011));
        bookshelf.get("Mystery").add(new Book("Shutter Island", "Dennis Lehane", 2003));

        bookshelf.get("Selfhelp").add(new Book("Who Moved My Cheese", "Spencer Johnson", 1998));
        bookshelf.get("Fiction").add(new Book("The Hunger Games", "Suzanne Collins", 2008));

        System.out.println("\nGenres:");
        for (String genre : bookshelf.keySet()) {
            System.out.println(genre);
        }

        System.out.println(ParseToString.parseMap(bookshelf));


        // Removing a book from the linkedlist
        // bookshelf.get("Selfhelp").remove(1);

        System.out.println(ParseToString.parseMap(bookshelf));

        removeRandomBook("Selfhelp");

        System.out.println(ParseToString.parseMap(bookshelf));
    }

    public static void removeRandomBook(String genre){
        bookshelf.get(genre).remove(Random.randomNumber(0, bookshelf.get(genre).size()-1));
    }
}
