//Receber um número de 1 a 7, retornar o dia da semana correspondente

import javax.swing.JOptionPane;

public class Num2 {
    public static void main (String[] args) {
        Integer numero = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite um número de 1 a 7", "Dia da semana", JOptionPane.INFORMATION_MESSAGE));
        
        String diaSemana = "";
        switch (numero) {
            case 1:
                diaSemana = "segunda-feira";
                break;
            
            case 2:
                diaSemana = "terça-feira";
                break;
            
            case 3:
                diaSemana = "quarta-feira";
                break;
            
            case 4:
                diaSemana = "quinta-feira";
                break;
            
            case 5:
                diaSemana = "sexta-feira";
                break;
            
            case 6:
                diaSemana = "sábado";
                break;
            
            case 7:
                diaSemana = "domingo";
                break;
            
            default:
                diaSemana = "inválido";
                break;
        }
        
        JOptionPane.showMessageDialog(null, numero + " = " + diaSemana, "Dia da semana", JOptionPane.INFORMATION_MESSAGE);
    }
}