package EstruturaSelecao;

import java.util.Scanner;

public class Num_4 {
    
    public static void main(String[] args) {
       Scanner read = new Scanner(System.in);
       
       double num1, num2, resultado = 0;
       int operacao;
       
       System.out.print("Digite o 1º número: ");
            num1 = read.nextDouble();
       System.out.print("Digite o 2º número: ");
            num2 = read.nextDouble();
       System.out.print("O que você deseja fazer(1 = Somar, 2 = Subtrair, 3 = Multiplicar)? ");
            operacao = read.nextInt();
            
       switch (operacao){ 
           case 1: 
               resultado = num1 + num2;
               System.out.println(num1 + " + " + num2 + " = " + resultado);
           case 2:
               resultado = num1 - num2;
               System.out.println(num1 + " - " + num2 + " = " + resultado);
           case 3:
               resultado = num1 * num2;
               System.out.println(num1 + " * " + num2 + " = " + resultado);
           default: 
               System.out.println("Operação inválida...");
       }
       
       if (resultado % 2 == 0){
           System.out.println("E " + resultado + " é par!");
       } else {
           System.out.println("E " + resultado + " é ímpar!");
       }
    }
}