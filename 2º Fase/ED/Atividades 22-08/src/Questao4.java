import java.util.Scanner;
import java.util.Stack;

public class Questao4 {
    public static void main(String[] args) {
        Stack<Character> pilhaCaracter = new Stack<>();

        StringBuilder stringInvertida = new StringBuilder();

        String frase = "";
        String fraseInvertida = "";

        Scanner scan = new Scanner(System.in);


        //Ler String
        System.out.println("Digite uma string: ");
        frase = scan.nextLine();


        //Percorrer string e adiciona-la a pilha
        for(int i = 0; i < frase.length(); i++){
            pilhaCaracter.push(frase.charAt(i));
        }

        //Percorrer pilha e adiciona-la a string
        while(!pilhaCaracter.isEmpty()){
            stringInvertida.append(pilhaCaracter.pop());
        }

        //Transformar stringInvertida em string de fato
        fraseInvertida = stringInvertida.toString();


        System.out.println("String: " + frase);
        System.out.println("String invertida: " + fraseInvertida);
    }
}