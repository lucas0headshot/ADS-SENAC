import java.util.ArrayList;
import java.util.Scanner;

public class Array {
    public static void main (String [] args){
        ArrayList<Integer> array = new ArrayList<>();

        Scanner read = new Scanner (System.in);


        //Preencher vetor
        for (int i = 0; i < 3; i++){
            System.out.println("Digite o " + i + "º número: ");
            array.add(i, read.nextInt());
        }

        //Verificar se elemento existe
        System.out.println("Digite um número, para procura-lo no array: ");
        if (array.contains(read.nextInt())){
            System.out.println("Este número está no array!");
        } else {
            System.out.println("Este número não está no array!");
        }


        System.out.println(array);
    }
}