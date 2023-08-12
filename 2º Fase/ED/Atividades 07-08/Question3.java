//Read 10 numbers and return the difference between larger and smaller, and their position on array

import java.util.ArrayList;
import java.util.Scanner;

public class Question3 {
    public static void main(String[] args) {
        ArrayList<Integer> arrayOfInt = new ArrayList<>();

        Scanner scan = new Scanner(System.in);

        int largerNumber = 0;
        int smallerNumber = Integer.MAX_VALUE;


        //Read 10 numbers
        for(int i = 0; i < 10; i++) {
            System.out.println("Type the " + (i + 1) + "º number: ");
            arrayOfInt.add(scan.nextInt());

            //Read the > number
            if(arrayOfInt.get(i) > largerNumber) {
                largerNumber = arrayOfInt.get(i);
            }

            //Read the < number
            if(arrayOfInt.get(i) < smallerNumber) {
                smallerNumber = arrayOfInt.get(i);
            }
        }

        System.out.println("Larger number: " + largerNumber + " and are in " + arrayOfInt.indexOf(largerNumber) + "º of array");
        System.out.println("Smaller number: " + smallerNumber + " and are in " + arrayOfInt.indexOf(smallerNumber) + "º of array");
        System.out.println("The difference between " + largerNumber + " and " + smallerNumber + " are " + (largerNumber - smallerNumber));


        scan.close();
    }
}