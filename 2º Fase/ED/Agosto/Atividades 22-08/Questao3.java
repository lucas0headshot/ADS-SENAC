//Testar se duas pilhas são exatamente iguais

import java.util.Scanner;
import java.util.Stack;

public class Questao3 {
    public static void main(String[] args) {
        Stack<Integer> pilha1 = new Stack<>();
        Stack<Integer> pilha2 = new Stack<>();

        Scanner scan = new Scanner(System.in);

        char continuar = 'S';
        boolean ehIgual = true;


        //Preencher pilha1
        for(int i = 0; continuar != 'N'; i++){
            System.out.println("Digite o " + (i + 1) + "º número da 1º pilha: ");
            pilha1.push(scan.nextInt());

            System.out.println("Deseja continuar(S/N)? ");
            continuar = scan.next().toUpperCase().charAt(0);
        }

        System.out.println("1º pilha preenchida! Agora, preencha a 2º");

        //Preencher pilha2
        continuar = 'S';
        for(int i = 0; continuar != 'N'; i++){
            System.out.println("Digite o " + (i + 1) + "º número da 2º pilha: ");
            pilha1.push(scan.nextInt());

            System.out.println("Deseja continuar(S/N)? ");
            continuar = scan.next().toUpperCase().charAt(0);
        }


        //Comparar pilhas
        if(pilha1.size() != pilha2.size()){
            ehIgual = false;
        }else{
            while(!pilha1.isEmpty()){
                if(pilha1.peek() == pilha2.peek()){
                    pilha1.pop();
                    pilha2.pop();
                }else{
                    ehIgual = false;
                    break;
                }
            }
        }


        System.out.println("1º e 2º pilha são exatamente iguais? " + (ehIgual == true ? "Sim!" : "Não..."));
    }
}