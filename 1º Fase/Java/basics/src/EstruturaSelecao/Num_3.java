package EstruturaSelecao;

import java.util.Scanner;

public class Num_3 {
    
    public static void main(String[] args) {
       Scanner read = new Scanner(System.in);
       
       double[] precos = new double[3];
       
       for (int i = 0; i < 3; i++){
           System.out.print("Digite o preço do " + (i + 1) + "º produto: ");
                precos[i] = read.nextDouble();
       }
       
       int iMenorPreco = 0;
       for (int i = 0; i < 3; i++){
           if (precos[i] < precos[iMenorPreco]){
               iMenorPreco = i;
           }
       }
       
       System.out.println("O " + (iMenorPreco + 1) + "º produto custa " + precos[iMenorPreco] + "R$ e é o mais barato!");
    }
}