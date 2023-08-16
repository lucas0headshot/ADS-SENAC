//Substituir a palavra "Desenvolvimento" por "Programação" e também transformar em maiúsculas
public class Num2 {
    public static void main (String[] args) {
        String frase = "Desenvolvimento é muito legal";
        
        frase = frase.replace("Desenvolvimento", "Programação");
        
        System.out.println(frase.toUpperCase());
    }
}