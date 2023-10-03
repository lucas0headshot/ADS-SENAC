package Aluno;

import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        Aluno aluno = new Aluno();
        aluno.nome = "Lucas";

        Filiacao filiacao = new Filiacao("Robson", "Fabiane");

        Bolsa bolsa = new Bolsa("UNIEDU", LocalDate.of(2023, 1, 1), LocalDate.of(2023, 12, 31));

        Disciplina matematica = new Disciplina();
        matematica.adicionaNota(9);
        matematica.adicionaNota(7);

        Disciplina portugues = new Disciplina();
        portugues.adicionaNota(8);
        portugues.adicionaNota(8);

        Frequencia aula01 = new Frequencia();
        aula01.dataAula = LocalDate.of(2023, 9, 12);
        aula01.presenca = true;


        Professor professor = new Professor("Bruno", "1291829292", LocalDate.of(2023, 10, 03));
        System.out.println(professor);

        Professor professor2 = new Professor("Bruno 2", "1921929298", "129128922");
        System.out.println(professor2);

        Professor professor3 = new Professor("Bruno 2", "1921929298", LocalDate.of(2023, 10, 03),"SENAC");
        System.out.println(professor3);


        aluno.disciplinas.add(matematica);
        aluno.disciplinas.add(portugues);
        aluno.frequencias.add(aula01);
        aluno.filiacao = filiacao;
        aluno.bolsa = bolsa;



        System.out.println("O aluno " + aluno.nome + " está com a média de " + aluno.calcularMediaGeral());
    }
}