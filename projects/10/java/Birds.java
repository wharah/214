/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 *********************************************************/

public class Birds {
  
  	public static void main(String[] args) {
      	System.out.println("\nWelcome to the Bird Park!\n");

      	// Bird bird0 = new Bird();

    	FlyingBird bird1 = new FlyingBird("Hawkeye");
	    bird1.print();

	    Duck bird2 = new Duck("Donald");
	    bird2.print();

	    Goose bird3 = new Goose("Mother");
	    bird3.print();

	    Owl bird4 = new Owl("Woodsey");
	    bird4.print();

	    Penguin bird5 = new Penguin("Pingu");
	    bird5.print();

	    Ostrich bird6 = new Ostrich("Orla");
	    bird6.print();

	    Kiwi bird7 = new Kiwi("Kellie");
	    bird7.print();

	    System.out.println();
    }
}

