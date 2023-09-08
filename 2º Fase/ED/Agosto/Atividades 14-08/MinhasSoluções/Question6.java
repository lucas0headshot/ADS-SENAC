package MinhasSoluções;//Read 5 numbers and return a new array with inverted positions

import java.util.ArrayList;
import java.util.Scanner;

public class Question6 {
    public static void main(String[] args) {
        ArrayList<Integer> arrayOfInt = new ArrayList<>();
        ArrayList<Integer> arrayOfIntInverted = new ArrayList<>();
        Scanner scan = new Scanner(System.in);


        //Read 5 numbers
        for(int i = 0; i < 5; i++) {
            System.out.println("Type the " + (i + 1) + "º number: ");
            arrayOfInt.add(scan.nextInt());

            //Add the actual number to the first position, pushing the following to the end and creating an inverted array
            arrayOfIntInverted.add(0, arrayOfInt.get(i));
        }

        System.out.println("Original array: " + arrayOfInt);
        System.out.println("Inverted: " + arrayOfIntInverted);


        scan.close();
    }
}