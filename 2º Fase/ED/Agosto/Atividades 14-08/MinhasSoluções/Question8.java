package MinhasSoluções;//Read 6 numbers and return the evens and oddes, and their quantity

import java.util.ArrayList;
import java.util.Scanner;

public class Question8 {
    public static void main(String[] args) {
        ArrayList<Integer> arrayOfInt = new ArrayList<>();
        ArrayList<Integer> arrayOfEven = new ArrayList<>();
        ArrayList<Integer> arrayOfOdd = new ArrayList<>();

        Scanner scan = new Scanner(System.in);


        //Read 6 numbers
        for(int i = 0; i < 6; i++) {
            System.out.println("Type the " + (i + 1) + "º number: ");
            int number = scan.nextInt();

            arrayOfInt.add(number);

            //Verify even number, else... its a odd
            if(number % 2 == 0) {
                arrayOfEven.add(number);
            } else {
                arrayOfOdd.add(number);
            }
        }

        System.out.println("Numbers: " + arrayOfInt);
        System.out.println("Even numbers: " + arrayOfEven + "(" + arrayOfEven.size() + ")");
        System.out.println("Odd numbers: " + arrayOfOdd + "(" + arrayOfOdd.size() + ")");


        scan.close();
    }
}