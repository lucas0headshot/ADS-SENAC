package NossasSoluções;//Read name and salary of 20 peoples, at the end return a ordered list with name and salary(With adjust of 8%)

import java.util.ArrayList;
import java.util.Scanner;

public class Question7 {
    public static void main(String[] args) {
        ArrayList<String> arrayOfName = new ArrayList<>();
        ArrayList<Double> arrayOfSalary = new ArrayList<>();
        ArrayList<Double> arrayOfNewSalary = new ArrayList<>();

        Scanner scan = new Scanner(System.in);

        char userContinue = 'Y';


        //Read name and salary of 20 peoples
        for(int i = 0; userContinue != 'N'; i++) {
            System.out.println("Type the name of " + (i + 1) + "º person: ");
            arrayOfName.add(scan.next());

            System.out.println("Type the salaray of " + arrayOfName.get(i) + ": ");
            arrayOfSalary.add(scan.nextDouble());

            //Calculate salaray w 0.8% more
            Double salary = arrayOfSalary.get(i);
            arrayOfNewSalary.add(salary *= 1.08);

            System.out.println("Continue(Y/N)? ");
            userContinue = scan.next().toUpperCase().charAt(0);

            scan.nextLine();
        }

        //Print name and new salary
        for(int i = 0; i < arrayOfName.size(); i++) {
            System.out.println((i + 1) + ": " + arrayOfName.get(i) + " has a new salary of $" + arrayOfNewSalary.get(i) + "(was " + arrayOfSalary.get(i) + ")");
        }


        scan.close();
    }
}