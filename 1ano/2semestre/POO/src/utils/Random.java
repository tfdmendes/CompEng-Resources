package utils;

import java.lang.Math;

public class Random {
    public static int randomNumber(int min, int max){
        return (min + (int)(Math.random() * ((max - min) + 1)));
    }
}
