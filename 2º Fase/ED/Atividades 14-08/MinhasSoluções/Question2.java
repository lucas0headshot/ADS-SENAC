package MinhasSoluções;//Read 5 numbers and return an array with tripled numbers

import java.util.Scanner;
import java.util.ArrayList;

public class Question2 {
    public static void main(String[] args) {
        ArrayList<Integer> arrayOfInt = new ArrayList<>();
        ArrayList<Integer> arrayOfIntTripled = new ArrayList<>();

        Scanner scan = new Scanner(System.in);
        

        //Read 5 numbers
        for(int i = 0; i < 5; i++) {
            System.out.println("Type the " + (i + 1) + "º number: ");
            arrayOfInt.add(scan.nextInt());

            arrayOfIntTripled.add(arrayOfInt.get(i) * 3);
        }

        System.out.println("Original array: " + arrayOfInt);
        System.out.println("Array w/ tripled numbers: " + arrayOfIntTripled);


        scan.close();
    }
}