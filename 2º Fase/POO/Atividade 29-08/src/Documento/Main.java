package Documento;

public class Main {
    public static void main(String[] args) {
        Documento doc1 = new Documento();
        doc1.nome = "Lucas";

        Documento doc2 = doc1;
        doc2.nome = "Raphael";


        System.out.println(doc1);
        System.out.println(doc2);
    }
}