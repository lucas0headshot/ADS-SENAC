//Ler elementos em uma pilha e copia-los para outra, imprimindo-as no final

import java.util.Scanner;
import java.util.Stack;

public class Questao1 {
    public static void main(String[] args) {
        Stack<Integer> pilha1 = new Stack();
        Stack<Integer> pilha2 = new Stack();

        Scanner scan = new Scanner(System.in);


        //Preencher pilha
        Character continuar = 'S';
        for(int i = 0; continuar != 'N'; i++){
            System.out.println("Digite o " + (i + 1) + "º número: ");
            int numero = scan.nextInt();

            //Armazenar na pilha1
            pilha1.push(numero);

            //Armazenar na pilha2
            pilha2.push(numero);

            System.out.println("Deseja continuar(S/N)? ");
            continuar = scan.next().toUpperCase().charAt(0);
        }


        System.out.println("Pilha 1: " + pilha1);
        System.out.println("Pilha 2: " + pilha2);
    }
}