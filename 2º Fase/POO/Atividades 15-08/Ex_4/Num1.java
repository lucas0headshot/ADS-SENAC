//Receber um nome e sobrenome, concatena-los e informar ao usuário

import javax.swing.*;

public class Num1 {
    public static void main(String[] args) {
        String nome = JOptionPane.showInputDialog(null, "Digite seu nome:", "Informe", JOptionPane.INFORMATION_MESSAGE);

        String sobrenome = JOptionPane.showInputDialog(null, "Digite seu sobrenome:", "Informe", JOptionPane.INFORMATION_MESSAGE);

        String nomeCompleto = nome + " " + sobrenome;
        JOptionPane.showMessageDialog(null, "Seu nome completo é " + nomeCompleto, "Nome completo", JOptionPane.INFORMATION_MESSAGE);
    }
}