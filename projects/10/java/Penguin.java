/* Penguin.java provides a Penguin subclass of Bird.
 *
 * By: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

public class Penguin extends WalkingBird 
{
	/* default constructor */
	public Penguin() {
		super();
	}
    
	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */
	public Penguin(String name)
	{
		super(name);
	}

	/* A Penguin's Call
	 * Return: a penguin-call ("Huh-huhh!").
	 */
	public String call()
	{
		return "Huh-huhh!";
	}
}

