import java.util.ArrayList;
import java.util.Scanner;

public class Question3 
{
    public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
        ArrayList<Integer> x = new ArrayList<>();

        int num;

        for (int i = 0; i < 10; i++)
        {
            System.out.print("Type a number \n-> ");
            num = scan.nextInt();

            x.add(num);
        }

        scan.close();

        int largest = x.get(0);
        int largestPosition = 0;
        int smallest = x.get(0);
        int smallestPosition = 0;

        for (int i = 1; i < 10; i++)
        {
            int value = x.get(i);

            if(value > largest)
            {
                largest = value;
                largestPosition = i;
            }

            if (value < smallest)
            {
                smallest = value;
                smallestPosition = i;
            }
        }

        System.out.println("Smallest: " + smallest + " at position: " + smallestPosition);
        System.out.println("Largest: " + largest + " at position: " + largestPosition);
    }    
}
