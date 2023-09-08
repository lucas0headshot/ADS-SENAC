//Controlar uma fila de espera em um Call Center

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class Ex_1 {
    public static void main(String[] args) {
        Queue<Integer> filaContato = new LinkedList<>();
        Queue<String> filaNome = new LinkedList<>();

        Scanner scan = new Scanner(System.in);

        int opcao = 0;


        //Esta parte do código foi realizada pelo Lucas
        do {
            System.out.println("1 - Inserir um contato \n 2 - Realizar chamada \n 9 - Encerrar \n Digite uma opção: ");
            opcao = scan.nextInt();

            switch (opcao) {
                case 1:
                    try {
                        System.out.println("Digite o nome: ");
                        String nome = scan.next();
                        filaNome.add(nome);

                        System.out.println("Digite o contato: ");
                        Integer contato = scan.nextInt();
                        filaContato.add(contato);
                    } catch(Exception e) {
                        System.out.println("Eita.. ocorreu um erro");
                    }
                    break;

            //Esta parte foi realizada pelo Erick
                case 2:
                    try {
                        System.out.println("Chamada atentida!");
                        System.out.println("Nome: " + filaNome.peek());
                        System.out.println("Contato:" + filaContato.peek());
                        filaNome.remove();
                        filaContato.remove();
                    } catch(Exception e) {
                        System.out.println("A lista está vazia...");
                    }
                    break;

                case 9:
                    break;

                default:
                    System.out.println("Opção invalida!!");
                    break;
            }
            scan.nextLine();
        } while (opcao != 9);
    }
}