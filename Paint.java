package lab2;

import java.text.DecimalFormat;
//***************************************************************
//File: Paint.java
//
//Purpose: Determine how much paint is needed to paint the walls
//of a room given its length, width, and height
//***************************************************************
import java.util.Scanner;

public class Paint 
{
	public static void main(String[] args) 
	{
		final int COVERAGE = 350; // paint covers 350 sq ft/gal
		final int DOORS = 20, WINDOW = 15;
		//declare integers length, width, and height;
		int length, width, height, numDoors, numWindows;
		
		//declare double totalSqFt;
		//declare double paintNeeded;
		double totalSqFt, paintNeeded;
			
		//declare and initialize Scanner object
		Scanner scan = new Scanner(System.in);
		
		//Prompt for and read in the length of the room
		System.out.print("Enter the length of the room: ");
		length = scan.nextInt();
		
		//Prompt for and read in the width of the room
		System.out.print("Enter the width of the room: ");
		width = scan.nextInt();
		
		//Prompt for and read in the height of the room
		System.out.print("Enter the height of the room: ");
		height = scan.nextInt();
		
		//Ask for number of doors
		System.out.print("Enter number of doors: ");
		numDoors = scan.nextInt();
		
		//Ask for number of windows
		System.out.print("Enter number of windows: ");
		numWindows = scan.nextInt();
		
		//Compute the total square feet to be painted--think
		//about the dimensions of each wall
		totalSqFt = ((length * height + width * height) * 2) - (DOORS*numDoors) - (WINDOW * numWindows);
		
		//Compute the amount of paint needed
		paintNeeded = totalSqFt / COVERAGE;
		
		//Print the length, width, and height of the room and the
		//number of gallons of paint needed.
		System.out.println("Room Length: " + length);
		System.out.println("Room Width: " + width);
		System.out.println("Room Height: " + height);
		DecimalFormat fmt = new DecimalFormat("#0.00");
		System.out.println("You will need " + fmt.format(paintNeeded) + " gallons of paint.");
		
	}
}
