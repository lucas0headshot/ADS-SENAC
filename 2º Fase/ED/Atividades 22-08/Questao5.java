//Verificar se uma palavra é um palíndromo

import java.util.Scanner;
import java.util.Stack;

public class Questao5 {
    public static void main(String[] args) {
        Stack<Integer> pilhaCaracter = new Stack<>();

        Scanner scan = new Scanner(System.in);

        String palavra;

        StringBuilder palavraInvertida = new StringBuilder();


        //Ler palavra
        System.out.println("Digite uma palavra: ");
        palavra = scan.nextLine();

        // Transformar a palavra em um array de caracteres
        char[] caracteres = palavra.toCharArray();

        // Preencher a pilha com os caracteres da palavra
        for(char c : caracteres){
            palavraInvertida.append(c);
        }

        // Inverter a palavra usando o StringBuilder
        palavraInvertida.reverse();

        // Verificar se a palavra é um palíndromo
        if(palavra.equals(palavraInvertida.toString())) {
            System.out.println(palavra + " é um palíndromo.");
        }else{
            System.out.println(palavra + " não é um palíndromo.");
        }
    }
}