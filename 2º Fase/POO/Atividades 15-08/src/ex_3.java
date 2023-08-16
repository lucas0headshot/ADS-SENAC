public class ex_3 {
    public static void main(String[] args) {
        //Verificar tamanho de uma string e retornar se é uma frase longa ou curta
        String frase = "A vida é uma jornada de descobertas.";
        System.out.println("");

        if(frase.length() > 50) {
            System.out.println("'" + frase + "'" + " é uma frase longa!");
        } else {
            System.out.println("'" + frase + "'" + " é uma frase curta!");
        }
    }
}