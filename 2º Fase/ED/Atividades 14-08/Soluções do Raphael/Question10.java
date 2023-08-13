import java.util.ArrayList;

public class Question10 
{
     public static void main(String[] args) 
     {
         ArrayList<Integer> developCourse = new ArrayList<>();
         ArrayList<Integer> same = new ArrayList<>();
         ArrayList<Integer> logicCourse = new ArrayList<>();

        int[] logicRegisters = 
        {
            2513, 2134, 5412, 
            4217, 2121, 3749, 
            4012, 5122, 2387, 
            3888, 3122, 5551, 
            5432, 2122, 2098
        };
        
        int[] developRegisters = 
        {
            3444, 2121, 4331, 
            2387, 5551, 4335, 
            2766, 2098, 4775, 
            3749
        };

        for (int register : developRegisters) 
        {
            developCourse.add(register);
        }
        
        for (int register : logicRegisters) 
        {
            logicCourse.add(register);
        }

        for(int register : developCourse) 
        {
            if(logicCourse.contains(register)) 
            {
                same.add(register);
            }
        }

        System.out.println("Registers multiplied: " + same);
    }
}    

