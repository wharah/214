/* PrintArray.java is a driver for function PrintArray().
 * Author: Sarah Whitten
 * Date: March 11, 2019
 ****************************************************************/

import java.util.*;

public class PrintArray {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
    	System.out.print("Enter the size of your array:\n");

    	int size = s.nextInt();
    	double ourArray[];
    	ourArray = new double [size];
    	ReadArray(ourArray, size, s);
    	PrintArray(ourArray, size);
	}


	public static void PrintArray(double[] anArray, int size) {
		System.out.println("Here are the contents of your array: ");
		for (int i = 0; i < size; i++) {
			System.out.println(anArray[i]);
		}
	}

	public static void ReadArray(double[] anArray, int size, Scanner scan) {
		System.out.println("Enter the contents of your array: ");
		for (int i = 0; i < size; i++) {
			anArray[i] = scan.nextDouble();
		}
	}
}
