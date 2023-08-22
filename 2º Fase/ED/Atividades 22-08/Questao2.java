//Preencher uma pilha, copia-la para outra, mas no sentido inverso, imprimindo-as no final

import java.util.Scanner;
import java.util.Stack;

public class Questao2 {
    public static void main(String[] args) {
        Stack<Integer> pilha = new Stack<>();

        Scanner scan = new Scanner(System.in);

        char continuar = 'S';


        //Preencher pilha
        for(int i = 0; continuar != 'N'; i++){
            System.out.println("Digite o " + (i + 1) + "º número: ");
            pilha.push(scan.nextInt());

            System.out.println("Deseja continuar(S/N)? ");
            continuar = scan.next().toUpperCase().charAt(0);
        }


        System.out.println("Pilha invertida: ");
        while(!pilha.isEmpty()){
            System.out.println(pilha.pop());
        }
    }
}