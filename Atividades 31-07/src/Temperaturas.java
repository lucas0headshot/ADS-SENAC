import java.util.Scanner;

public class Temperaturas {
    public static void main (String [] args) {
        double[] temperaturas = new double[366];

        Scanner read = new Scanner(System.in);

        for (int i = 0; i <= 365; i++) {
            System.out.println("Dia: " + i);
            temperaturas[i] = read.nextDouble();
        }
    }
}