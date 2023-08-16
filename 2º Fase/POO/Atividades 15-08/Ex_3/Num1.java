//Contar a quantidade de caracteres de uma frase, retornar se é uma frase curta ou longa
public class Num1 {
    public static void main (String[] args) {
        String frase = "Uma frase qualquer";
        
        if(frase.length() < 50) {
            System.out.println("'" + frase + "'" + " é uma frase curta");
        } else {
            System.out.println("'" + frase + "'" + " é uma frase longa");
        }
    }
}