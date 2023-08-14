package MinhasSoluções;//Check registers that are multiplied in courses

import java.util.ArrayList;

public class Question9 {
    public static void main(String[] args) {
        ArrayList<Integer> arrayOfProgramationCourse = new ArrayList<>();
        ArrayList<Integer> arrayOfLogicCourse = new ArrayList<>();
        ArrayList<Integer> arrayOfRegistersMultiplied = new ArrayList<>();

        int[] logicRegisters = {2513, 2134, 5412, 4217, 2121, 3749, 4012, 5122, 2387, 3888, 3122, 5551, 5432, 2122, 2098};
        int[] programationRegisters = {3444, 2121, 4331, 2387, 5551, 4335, 2766, 2098, 4775, 3749};


        //Push registers on their arrays
        for (int register : programationRegisters) {
            arrayOfProgramationCourse.add(register);
        }
        for (int register : logicRegisters) {
            arrayOfLogicCourse.add(register);
        }

        //Verify registers present in both arrays
        for(int register : arrayOfProgramationCourse) {
            if(arrayOfLogicCourse.contains(register)) {
                arrayOfRegistersMultiplied.add(register);
            }
        }

        System.out.println("Registers multiplied: " + arrayOfRegistersMultiplied);
    }
}