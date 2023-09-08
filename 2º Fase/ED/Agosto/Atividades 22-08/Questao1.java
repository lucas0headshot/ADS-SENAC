//Preencher pilha1, transferir para uma pilha temporária, transferir da pilha temporária para a pilha1 e pilha2

import java.util.Scanner;
import java.util.Stack;

public class Questao1 {
    public static void main(String[] args) {
        Stack<Integer> pilha1 = new Stack<>();
        Stack<Integer> pilhaTemp = new Stack<>();
        Stack<Integer> pilha2 = new Stack<>();

        Scanner scan = new Scanner(System.in);

        char continuar = 'S';


        //Preencher pilha1
        for(int i = 0; continuar != 'N'; i++){
            System.out.println("Digite o " + (i + 1) + "º número: ");
            pilha1.push(scan.nextInt());

            System.out.println("Deseja continuar(S/N)? ");
            continuar = scan.next().toUpperCase().charAt(0);
        }


        //Transferir da pilha1 pra pilhaTemp
        while(!pilha1.isEmpty()){
            pilhaTemp.push(pilha1.pop());
        }

        //Transferir da pilhaTemp para pilha1 e pilha2
        while(!pilhaTemp.isEmpty()){
            int elemento = pilhaTemp.pop();

            pilha1.push(elemento);
            pilha2.push(elemento);
        }


        System.out.println("Após transferir da pilha1 para pilhaTemp, da pilhaTemp pra pilha1 e pilha2...");
        System.out.println("Pilha 1: " + pilha1);
        System.out.println("Pilha 2: " + pilha2);
    }
}