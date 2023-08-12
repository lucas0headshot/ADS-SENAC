//Read 5 numbers and verify that a number typed by user is on array

import java.util.ArrayList;
import java.util.Scanner;

public class Question5 {
    public static void main(String[] args) {
        ArrayList<Integer> arrayOfInt = new ArrayList<>();

        Scanner scan = new Scanner(System.in);


        //Read 5 numbers
        for(int i = 0; i < 5; i++) {
            System.out.println("Type the " + (i + 1) + "º number: ");
            arrayOfInt.add(scan.nextInt());
        }

        //Loop and verify number typed by user
        char userContinue = 'Y';
        while(userContinue != 'N') {
            System.out.println("Type an number, to locate it on the array: ");
            int number = scan.nextInt();

            //Verify number typed by user
            if(arrayOfInt.contains(number)) {
                System.out.println("That number are in array! And are in " + arrayOfInt.indexOf(number) + "º position");
            } else {
                System.out.println("That number aren't at array...");
            }

            System.out.println("Continue(Y/N)? ");
            userContinue = scan.next().toUpperCase().charAt(0);

            scan.nextLine();
        }


        scan.close();
    }
}