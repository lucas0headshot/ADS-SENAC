//Ler dois número e realizar as 4 operações básicas

import javax.swing.JOptionPane;

public class Ex_5 {
    public static void main(String[] args) {
        int num1 = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o primeiro número", "Calculadora", JOptionPane.INFORMATION_MESSAGE));
        int num2 = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o segundo número", "Calculadora", JOptionPane.INFORMATION_MESSAGE));

        try {
            int resultadoAdicao = num1 + num2;
            int resultadoSubtracao = num1 - num2;
            int resultadoDivisao = num1 / num2;
            int resultadoMultiplicacao = num1 * num2;

            JOptionPane.showMessageDialog(null, num1 + " + " + num2 + " = " + resultadoAdicao, "Soma", JOptionPane.INFORMATION_MESSAGE);
            JOptionPane.showMessageDialog(null, num1 + " - " + num2 + " = " + resultadoSubtracao, "Subtração", JOptionPane.INFORMATION_MESSAGE);
            JOptionPane.showMessageDialog(null, num1 + " / " + num2 + " = " + resultadoDivisao, "Divisão", JOptionPane.INFORMATION_MESSAGE);
            JOptionPane.showMessageDialog(null, num1 + " * " + num2 + " = " + resultadoMultiplicacao, "Multiplicação", JOptionPane.INFORMATION_MESSAGE);
        } catch(Exception e) {
            JOptionPane.showMessageDialog(null, "Vish... " + e.getMessage(), "Exceção", JOptionPane.ERROR_MESSAGE);
        }
    }
}