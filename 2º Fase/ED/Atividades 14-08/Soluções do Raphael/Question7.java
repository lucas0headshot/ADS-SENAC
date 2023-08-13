import java.util.ArrayList;
import java.util.Scanner;

public class Question7
{
    public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
                
        ArrayList<Integer> A = new ArrayList<>();
        ArrayList<Integer> B = new ArrayList<>();
        int num;

        for(int i = 0; i < 5; i++)
        {
            System.out.print("Type the Number \n-> ");
            num = scan.nextInt();

            A.add(num);
        }
        scan.close();
        
        for(int i = 4; i >= 0; i--)
        {   
            B.add(A.get(i));
        }

        System.out.println("A array "+A);
        System.out.println("B array "+B);

    }    
}
