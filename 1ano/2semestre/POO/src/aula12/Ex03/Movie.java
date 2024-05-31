package aula12.Ex03;

public class Movie {
    private String name;
    private double score;
    private String rating;
    private String genre;
    private int runningTime;

    public Movie(String name, double score, String rating, String genre, int runningTime) {
        this.name = name;
        this.score = score;
        this.rating = rating;
        this.genre = genre;
        this.runningTime = runningTime;
    }

    public String getName() {
        return name;
    }

    public double getScore() {
        return score;
    }

    public String getRating() {
        return rating;
    }

    public String getGenre() {
        return genre;
    }

    public int getRunningTime() {
        return runningTime;
    }

    @Override
    public String toString() {
        return name + "\t" + score + "\t" + rating + "\t" + genre + "\t" + runningTime;
    }

    // Método para criar uma string formatada com campos alinhados
    public String toFormattedString() {
        return String.format("%-30s %-10.1f %-10s %-15s %-15d", name, score, rating, genre, runningTime);
    }
}
