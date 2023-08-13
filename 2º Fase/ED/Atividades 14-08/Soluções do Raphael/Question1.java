import java.util.ArrayList;
import java.util.Scanner;

public class Question1 
{
    public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
        ArrayList<Integer> A = new ArrayList<>();
        int num;

        for (int i = 0; i < 5; i++) 
        {
            System.out.println("Type a number");
            num = scan.nextInt();
            A.add(num);
        }

        scan.close();

        int largest = A.get(0);
        int smallest = A.get(0);
        int sum = A.get(0);

        for (int i = 1; i < 5; i++) 
        {
            int value = A.get(i);

            if (value > largest) 
            {
                largest = value;
            }
            
            if (value < smallest) 
            {
                smallest = value;
            }

            sum += value;
        }

        double average = (double) sum / A.size();

      
        System.out.println(A);
        System.out.println("Largest value: " + largest);
        System.out.println("Smallest value: " + smallest);
        System.out.println("Average of values: " + average);



    }
}
