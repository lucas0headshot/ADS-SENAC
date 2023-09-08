import java.util.Scanner;
import java.util.ArrayList;

public class Question2
{
    public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
                
        ArrayList<Integer> A = new ArrayList<>();
        
        int num;

        for(int i = 0; i < 5; i++)
        {
            System.out.print("Type the Number \n-> ");
            num = scan.nextInt();

            num = num*3;

            A.add(num);
        }
        scan.close();

        System.out.println(A);
    }

}
