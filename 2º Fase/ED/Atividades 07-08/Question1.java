//Read 5 numbers and return the larger, smaller and calculate average

import java.util.ArrayList;
import java.util.Scanner;

public class Question1 {
    public static void main(String[] args) {
        ArrayList<Integer> arrayOfInt = new ArrayList<>();

        Scanner scan = new Scanner(System.in);

        double average = 0;
        int largerNumber = 0;
        int smallerNumber = Integer.MAX_VALUE;


        //Read 5 numbers
        for(int i = 0; i < 5; i++) {
            System.out.println("Type the " + (i + 1) + "º number: ");
            arrayOfInt.add(scan.nextInt());

            average += arrayOfInt.get(i);

            //Read the > number
            if(arrayOfInt.get(i) > largerNumber) {
                largerNumber = arrayOfInt.get(i);
            }

            //Read the < number
            if(arrayOfInt.get(i) < smallerNumber) {
                smallerNumber = arrayOfInt.get(i);
            }
        }

        //Calculate the average of the numbers
        average /= arrayOfInt.size();

        //Print the larger, smaller and avarege of the numbers
        System.out.println("Larger number: " + largerNumber);
        System.out.println("Smaller number: " + smallerNumber);
        System.out.println("Average in " + arrayOfInt + ": " + average);


        //Close Scanner
        scan.close();
    }
}