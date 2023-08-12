//Read register of two courses, check registers that are multiplied

import java.util.ArrayList;
import java.util.Scanner;

public class Question10 {
    public static void main(String[] args) {
        ArrayList<Integer> arrayOfProgramationCourse = new ArrayList<>();
        ArrayList<Integer> arrayOfLogicCourse = new ArrayList<>();
        ArrayList<Integer> arrayOfRegistersMultiplied = new ArrayList<>();

        Scanner scan = new Scanner(System.in);


        char userContinue = 'Y';
        //Read registers of Logic Course
        for(int i = 0; userContinue != 'N'; i++) {
            System.out.println("Type the register " + (i + 1) + "º of Logic course: ");
            arrayOfLogicCourse.add(scan.nextInt());

            System.out.println("Continue(Y/N)? ");
            userContinue = scan.next().toUpperCase().charAt(0);

            scan.nextLine();
        }

        //Read registers of Programation course
        for(int i = 0; userContinue != 'N'; i++) {
            System.out.println("Type the register " + (i + 1) + "º of Programation course: ");
            arrayOfProgramationCourse.add(scan.nextInt());

            System.out.println("Continue(Y/N)? ");
            userContinue = scan.next().toUpperCase().charAt(0);

            scan.nextLine();
        }


        int sizeOfArrays = arrayOfLogicCourse.size() + arrayOfProgramationCourse.size();
        //Read arrays and find regisgters multiplied
        for(int i = 0; i < sizeOfArrays; i++) {
            if(arrayOfLogicCourse.contains(arrayOfProgramationCourse.get(i))) {
                arrayOfRegistersMultiplied.add(arrayOfLogicCourse.get(i));
            }
        }

        System.out.println("Registers multiplied: " + arrayOfRegistersMultiplied);


        scan.close();
    }
}