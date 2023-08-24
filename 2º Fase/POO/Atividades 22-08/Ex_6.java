import javax.swing.*;
import java.util.ArrayList;

public class Ex_6 {
    public static void main(String[] args) {
        ArrayList<Integer> arrayNumeros = new ArrayList<>();
        ArrayList<Integer> arrayNumerosPares = new ArrayList<>();

        int maiorNumero = Integer.MIN_VALUE;
        int menorNumero = Integer.MAX_VALUE;
        int media = 0;

        int continuar = 1;


        //Preencher array
        for (int i = 0; continuar != JOptionPane.NO_OPTION; i++){
            int numero = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o " + (i + 1) + "º número", "Números", JOptionPane.INFORMATION_MESSAGE));
            arrayNumeros.add(numero);

            if(numero % 2 == 0) {
                arrayNumerosPares.add(numero);
            }

            if(numero > maiorNumero) {
                maiorNumero = numero;
            }

            if(numero < menorNumero) {
                menorNumero = numero;
            }

            media += numero;

            continuar = JOptionPane.showOptionDialog(null, "Deseja continuar?", "Continuar digitando", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, new String[]{"Sim", "Não"}, "Sim");
        }


        //Calcular média
        media /= arrayNumeros.size();


        System.out.println("Números: " + arrayNumeros);
        System.out.println("Maior: " + maiorNumero);
        System.out.println("Menor: " + menorNumero);
        System.out.println("Media: " + media);
        System.out.println("Números pares: " + arrayNumerosPares);
    }
}