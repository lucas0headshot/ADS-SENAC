import java.util.ArrayList;
import java.util.Scanner;

public class Question5 
{
    public static void main(String[] args) 
    {
        ArrayList<Integer> arrayOfInt = new ArrayList<>();
        Scanner scan = new Scanner(System.in);

        for(int i = 0; i < 5; i++) 
        {
            System.out.println("Type the " + (i + 1) + "º number: ");
            arrayOfInt.add(scan.nextInt());
        }

        scan.close();
        
        for(int j = 0; j < arrayOfInt.size() - 1; j++) 
        {
            if(arrayOfInt.get(j) > arrayOfInt.get(j + 1)) 
            {
                int temp = arrayOfInt.get(j);
                arrayOfInt.set(j, arrayOfInt.get(j + 1));
                arrayOfInt.set(j + 1, temp);
            }
        }

        System.out.println("Ordered array w/ the numbers: " + arrayOfInt);

        
    }
}