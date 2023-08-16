//Calculadora simples com JOptionPane

import javax.swing.JOptionPane;

public class Num1 {
    public static void main(String[] args) {
        Integer num1 = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o primeiro número:", "Calculadora", JOptionPane.INFORMATION_MESSAGE));

        Integer num2 = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o segundo número:", "Calculadora", JOptionPane.INFORMATION_MESSAGE));


        Integer soma = num1 + num2;
        JOptionPane.showMessageDialog(null, num1 + " + " + num2 + " = " + soma, "Calculadora", JOptionPane.INFORMATION_MESSAGE);
    }
}