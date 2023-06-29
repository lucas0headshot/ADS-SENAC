package EstruturaSelecao;

import java.util.Scanner;

public class Num_2 {
    
    public static void main(String[] args) {
       Scanner read = new Scanner(System.in);
       
       char turno;
        
       System.out.print("Em qual turno você estuda(M, V ou N)? ");
            turno = read.next().charAt(0);
            turno = Character.toUpperCase(turno);       
             
        switch (turno) {
            case 'M' -> System.out.println("Opa, então bom dia para você!");
            case 'V' -> System.out.println("Opa, então boa tarde para você!");
            case 'N' -> System.out.println("Opa, então boa noite para você!");
            default -> System.out.println("Turno inválido...");
        }
    }   
}
