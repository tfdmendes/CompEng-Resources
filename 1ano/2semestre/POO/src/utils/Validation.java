package utils;

public class Validation {
    
    /**
     * Reads user inputted String and sees if it can be converted to Double
     * 
     * @param str The user inputted numeric String
     * @exception NumberFormatException if can't be converted to double.
     * @return True if it can be converted, otherwise false.
     */
    public static boolean isNumeric(String str){
        try{
            Double.parseDouble(str);
            return true;
        } catch (NumberFormatException e){
            return false;
        }
    }

    /**
     * Reads a user-inputted car plate. Types of plates validated with the method:<p>
     * <code>AA-00-00 | 00-00-AA | 00-AA-00 | AA-00-AA</code><p>
     * See <a href="https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html">Java Util Regex documentation</a>.
     * @param plate The string with the plate to be validated
     * @return True if the inputted string matches any of the formats, otherwise false.
     */
    public static boolean validPlate(String plate){
        return plate.matches("[A-Z]{2}-\\d{2}-\\d{2}|\\d{2}-\\d{2}-[A-Z]{2}|\\d{2}-[A-Z]{2}-\\d{2}|[A-Z]{2}-\\d{2}-[A-Z]{2}");
    }


    /**
     * Reads a user-inputted email. Types of emails validated with the method:<p>
     * <code>AAA.123@gmail.com | AAA.123@hotmail.com</code><p>
     * See <a href="https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html">Java Util Regex documentation</a>.
     * @param email The string with the email to be validated
     * @return True if the inputted string matches any of the formats, otherwise false.
     */
    public static boolean validEmail(String email){
        return email.matches("[a-zA-Z0-9._%+-]+@(gmail.com|hotmail.com|ua.pt)");
    }

    
    /**
     * Reads a user-inputted postal code. Type of postal code validated with the method:<p>
     * <code>0000-000</code> The first digit needs to be different from zero<p>
     * See <a href="https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html">Java Util Regex documentation</a>.
     * @param code The string with the code to be validated
     * @return True if the inputted string matches any of the formats, otherwise false.
     */
    public static boolean validPostalCode(String code){
        return code.matches("[1-9]{1}[0-9]{3}-[0-9]{3}");
    }


    // "teste-hoje" would return true because it contains a hyphen (`-`)    
    public static boolean containsNonAlphabeticCharacters(String str){
        return !str.matches("[a-zA-Z]+");
    }
}
