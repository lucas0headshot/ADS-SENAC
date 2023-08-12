package EstruturaSelecao;

import java.util.Scanner;

public class Num_1 {
    
    public static void main(String[] args) {
       Scanner read = new Scanner(System.in);
       
       char sexo;
        
       System.out.print("Digite um sexo(M ou F): ");
            sexo = read.next().charAt(0);
            sexo = Character.toUpperCase(sexo); 
       
        switch (sexo) {
            case 'M' -> System.out.println(sexo + " = Masculino");
            case 'F' -> System.out.println(sexo + " = Feminino");
            default -> System.out.println("Sexo inválido...");
        }
    }
}