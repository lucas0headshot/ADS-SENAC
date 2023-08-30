package Aluno;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {
    public static void main(String[] args) {
        Aluno aluno1 = new Aluno();
        Map<String, List<Integer>> disciplinas = new HashMap<>();
        List<Integer> notasMatematica = new ArrayList<>();
        List<Integer> notasPortugues = new ArrayList<>();


        aluno1.codigo = 123456;
        aluno1.matricula = "123@abc";
        aluno1.sexo = "Masculino";
        aluno1.curso = "Análise e Desenvolvimento de Sistemas";
        aluno1.instituicao = "SENAC";
        aluno1.frequencia = 99.9;
        aluno1.email = "lucas.ronchi1@alunos.sc.senac.br";
        aluno1.nome = "Lucas";
        aluno1.dataNascimento = LocalDate.of(2005, 5, 26);
        aluno1.endereco = "Rua 123";
        aluno1.telefone = "48 123456789";


        notasMatematica.add(10);
        notasMatematica.add(9);
        disciplinas.put("Matematica", notasMatematica);

        notasPortugues.add(7);
        notasPortugues.add(6);
        disciplinas.put("Portugues", notasPortugues);

        aluno1.notasDisciplinas = disciplinas;



        aluno1.getDados();
        aluno1.getMediaMateria();
        aluno1.getMedia();
    }
}