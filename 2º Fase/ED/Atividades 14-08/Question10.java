//Read the name and average grade of 7 students, return the larger grade
//If the grade is < 7, return the amount needed to be approved

import java.util.ArrayList;
import java.util.Scanner;

public class Question10 {
    public static void main(String[] args) {
        ArrayList<String> arrayOfName = new ArrayList<>();
        ArrayList<Double> arrayOfGrade = new ArrayList<>();

        Scanner scan = new Scanner(System.in);

        double largerGrade = 0.00;
        int indexLargerGrade = 0;


        //Read 7 names and their average grade
        for(int i = 0; i < 7; i++) {
            System.out.println("----------");

            System.out.println("Type the " + (i + 1) + "º student name: ");
            String name = scan.next();
            arrayOfName.add(name);

            System.out.println("Type " + name + "'s average grade: ");
            double grade = scan.nextDouble();
            arrayOfGrade.add(grade);

            //Verify grade > largerGrade
            if(grade > largerGrade) {
                largerGrade = grade;
                indexLargerGrade = i;
            }
        }


        //Return student's name with larger grade
        System.out.println("*----------* " + arrayOfName.get(indexLargerGrade) + " has the larger grade! *----------*");

        //Return student's name and if their not approved
        for(int i = 0; i < 7; i++) {
            System.out.println("----------");

            System.out.println("Student: " + arrayOfName.get(i));

            double grade = arrayOfGrade.get(i);
            System.out.println("Average grade: " + grade);
            System.out.println((grade < 7.00) ? "And isn't approved, need " + ((5 * 2) - grade) + " on final exam!" : "And is approved!");
        }


        scan.close();
    }
}