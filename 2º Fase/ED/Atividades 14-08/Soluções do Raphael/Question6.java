import java.util.ArrayList;
import java.util.Scanner;

public class Question6 
{
    public static void main(String[] args)
    {
        ArrayList<Integer> A = new ArrayList<>();
        Scanner scan = new Scanner(System.in);
        int num;
        int position = 10;

        A.add(7);
        A.add(21);
        A.add(15);
        A.add(12);
        A.add(82);

        System.out.print("Type a number, but now only once\n-> ");
        num = scan.nextInt();

        scan.close();
        
        for (int i = 0; i < A.size(); i++)
        {
            if (A.get(i) == num)
            {
                position = i;
                break;
            }
        }

        if (A.contains(num)) 
        {
            System.out.println("This number "+num+" are in "+position+" position");
        }
        else
        {
            System.out.println("Element not find");
        }
    }    
}
