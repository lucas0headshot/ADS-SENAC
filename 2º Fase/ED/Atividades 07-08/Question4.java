//Read 5 numbers and return the first negative

import java.util.Scanner;
import java.util.ArrayList;

public class Question4 {
    public static void main(String[] args) {
        ArrayList<Integer> arrayOfInt = new ArrayList<>();
        
        Scanner scan = new Scanner(System.in);

        int indexOfNegativeNumber = 0;
        boolean hasNegative = false;

        
        //Read 5 numbers and indicates a negativa number
        for(int i = 0; i < 5; i++) {
            System.out.println("Type the " + (i + 1) + "º number: ");
            arrayOfInt.add(scan.nextInt());

            if((arrayOfInt.get(i) < 0) && (hasNegative != true)) {
                hasNegative = true;
                indexOfNegativeNumber = i;
            }
        }

        if(hasNegative == true) {
            System.out.println("Index of negative number: " + indexOfNegativeNumber + "(Also know as " + arrayOfInt.get(indexOfNegativeNumber) +")");
        } else {
            System.out.println("Haven't negative number in array...");
        }


        scan.close();
    }
}