import java.util.ArrayList;
import java.util.Scanner;

public class Question11
{
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);

        ArrayList<String> names = new ArrayList<>();
        ArrayList<Double> finalAverages = new ArrayList<>();

        for (int i = 0; i < 7; i++)
        {
            System.out.print("Enter the name of student " + (i + 1) + ": ");
            String name = scanner.nextLine();
            names.add(name);

            System.out.print("Enter the final average of student " + (i + 1) + ": ");
            double average = Double.parseDouble(scanner.nextLine());
            finalAverages.add(average);
        }

        double highestAverage = -1;
        String studentWithHighestAverage = "";
        ArrayList<String> failedStudents = new ArrayList<>();

        for (int i = 0; i < 7; i++)
        {
            if (finalAverages.get(i) > highestAverage)
            {
                highestAverage = finalAverages.get(i);
                studentWithHighestAverage = names.get(i);
            }

            if (finalAverages.get(i) < 7)
            {
                failedStudents.add(names.get(i));
            }
        }

        System.out.println("Student with the highest average: " + studentWithHighestAverage);

        for (String student : failedStudents) {
            double examScoreNeeded = 5 - finalAverages.get(names.indexOf(student));
            System.out.println("The student " + student + " needs to score " + examScoreNeeded + " on the final exam to pass.");
        }
    }
}
