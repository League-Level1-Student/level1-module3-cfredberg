package _01_intro_to_static;

public class Athlete {
    static int nextBibNumber;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;

    Athlete (String name, int speed){
        this.name = name;
        this.speed = speed;
        bibNumber = nextBibNumber++;
    }

    public static void main(String[] args) {
        //create two athletes
        //print their names, bibNumbers, and the location of their race. 
    	raceLocation = "San Diego";
    	Athlete a1 = new Athlete("Bob", 10);
    	Athlete a2 = new Athlete("Bobby", 1000);
    	System.out.println(a1.name + ", " + a1.bibNumber + ", " + raceLocation);
    	System.out.println(a2.name + ", " + a2.bibNumber + ", " + raceLocation);
    }
}