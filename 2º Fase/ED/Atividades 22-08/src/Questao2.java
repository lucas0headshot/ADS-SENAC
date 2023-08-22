//Ler elementos em uma pilha e copia-los para outra, imprimindo-as no final

import java.util.Scanner;
import java.util.Stack;

public class Questao2 {
    public static void main(String[] args) {
        Stack<Integer> pilha = new Stack();
        Stack<Integer> pilhaAuxiliar = new Stack();

        Scanner scan = new Scanner(System.in);


        //Preencher pilha
        Character continuar = 'S';
        for(int i = 0; continuar != 'N'; i++){
            System.out.println("Digite o " + (i + 1) + "º número: ");
            int numero = scan.nextInt();

            //Armazenar na pilha
            pilha.push(numero);

            //Armazenar numeroTopo
            int numeroTopo = pilha.pop();
            pilha.push(numeroTopo);

            System.out.println("Deseja continuar(S/N)? ");
            continuar = scan.next().toUpperCase().charAt(0);
        }

        System.out.println("Pilha invertida: " + pilha);
    }
}