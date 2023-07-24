package lab2;

//***************************************************************
//Sales.java
//
//Reads in and stores sales for each of 5 salespeople. Displays
//sales entered by salesperson id and total sales for all salespeople.
//
//***************************************************************
import java.util.Scanner;

public class Sales {
	public static void main(String[] args) {
		// final int SALESPEOPLE = 5;
		int numSalesPeople = 0;
		Scanner scan = new Scanner(System.in);
		System.out.println("Enter number of salespeople: ");
		numSalesPeople = scan.nextInt();
		int[] sales = new int[numSalesPeople];
		int sum;
		double minSales = 0;

		for (int i = 0; i < sales.length; i++) {
			System.out.print("Enter sales for salesperson " + (i + 1) + ": ");
			sales[i] = scan.nextInt();
		}
		System.out.println("\nSalesperson Sales");
		System.out.println(" ------------------ ");
		sum = 0;
		int large = 0;
		int small = 999999;
		for (int i = 0; i < sales.length; i++) {
			System.out.println(" " + (i + 1) + " " + sales[i]);
			sum += sales[i];
			// reads the largest in array
			if (sales[i] > large)
				large = sales[i];

			// reads the smallest in array
			if (sales[i] < small)
				small = sales[1];
		}
		double average = sum / sales.length;
		System.out.println("\nTotal sales: " + sum);
		System.out.println("The average sales: " + average);
		for (int i = 0; i < sales.length; i++) {
			if (sales[i] == large)
				System.out.println("Salesperson " + (i + 1) + " had the highest sale with " + large + ".");
		}
		for (int i = 0; i < sales.length; i++) {
			if (sales[i] == small)
				System.out.println("Salesperson " + (i + 1) + " had the lowest sale with " + small + ".");
		}
		System.out.print("Enter minimum sales amount: ");
		double amount = scan.nextDouble();
		for (int i = 0; i < sales.length; i++) {
			if (sales[i] >= amount) {
				minSales ++;
				System.out.println("Salesperson " + (i + 1) + " has exceeded the minimum with " + sales[i]);
			}
		}
		System.out.println("The total number of salespeople who exceeded the minimum were " + minSales);
	}
}