package _05_netflix;

public class runner {
	public static void main(String[] args) {
		Movie sports = new Movie("Sports", 3);
		Movie dinosaur = new Movie("Dinosaur", 0);
		Movie coding = new Movie("Coding", 1000);
		Movie sleep = new Movie("Sleep", 5);
		Movie science = new Movie("Science", 10);
		
		System.out.println(coding.getTicketPrice());
		
		NetflixQueue net = new NetflixQueue();
		
		net.addMovie(sports);
		net.addMovie(dinosaur);
		net.addMovie(coding);
		net.addMovie(sleep);
		net.addMovie(science);
		
		net.printMovies();
		
		System.out.println("The best movie is " + net.getBestMovie() + "!");
		
		System.out.println("The second best movie is " + net.movies.get(1));
	}
}
