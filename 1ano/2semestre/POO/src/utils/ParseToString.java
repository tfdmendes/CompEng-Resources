package utils;

import java.util.Map;

public class ParseToString {


    /**
     * Converts a map to its string representation.
     * <p>
     * This method takes a map with keys and values of any type and converts it to a string where
     * each key-value pair is represented as "key=value" on a new line. The `toString` methods of the
     * keys and values are used to generate the string representation.
     * </p>
     *
     * @param map the map to be converted to a string
     * @param <K> the type of the keys in the map
     * @param <V> the type of the values in the map
     * @return a string representation of the map
     * @throws NullPointerException if the map is null or if any key or value in the map is null
     */
    public static <K,V> String parseMap(Map<K,V> map){
        if (map == null)
            throw new NullPointerException("The map cannot be null");

        StringBuilder str = new StringBuilder();
        for(Map.Entry<K, V> entry : map.entrySet()){
            K key = entry.getKey();
            V value = entry.getValue();
            if (key == null || value == null)
                throw new NullPointerException("Neither the keys nor the values can be null");
            str.append(key.toString()).append("=").append(value.toString()).append("\n");
        }
        return str.toString();
    }
}
