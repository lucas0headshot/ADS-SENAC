import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Ex_6 {
    public static void main(String[] args) {
        List<Integer> numeros = new ArrayList<Integer>();

        Scanner scan = new Scanner(System.in);

        int maior = Integer.MIN_VALUE;
        int menor = Integer.MAX_VALUE;
        int media = 0;

        for (int i = 0; i < 3; i++){
            System.out.println("Informe o numero" + (i+1));
            numeros.add(scan.nextInt());
        }

        for (int i = 0; i < numeros.size();i++){
            if( numeros.get(i) > maior ){
                maior = numeros.get(i);
            }

            if (numeros.get(i) < menor){
                menor = numeros.get(i);
            }

            media += numeros.get(i);
        }

        media = media / numeros.size();

        System.out.println("Maior: " + maior);
        System.out.println("Menor: " + menor);
        System.out.println("Media: " + media);

    }
}