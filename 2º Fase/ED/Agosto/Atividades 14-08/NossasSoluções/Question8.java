import java.util.HashMap;
import java.util.ArrayList;
import java.util.Scanner;

public class Question8
{
    public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
        HashMap<Integer, ArrayList<Object>> employee = new HashMap<>();

        String employeeName;
        float employeeSalary;
        float employeeNewSalary;

        for(int i = 0; i < 20; i++)
        {
            ArrayList<Object> employeeDatas = new ArrayList<>();

            System.out.print("Type the name of employee \n-> ");
            employeeName = scan.nextLine();

            System.out.print("Type the salary of " + employeeName+"\n-> ");
            employeeSalary = scan.nextFloat();

            scan.nextLine(); //for not bug a nextFloat

            employeeNewSalary = (float) (0.08 * employeeSalary) + employeeSalary;

            employeeDatas.add(employeeName);
            employeeDatas.add(employeeNewSalary);

            employee.put(i, employeeDatas);
        }
        scan.close();

        for (int i = 0; i < employee.size(); i++)
        {
            System.out.println(employee.get(i));
        }
    }
}
