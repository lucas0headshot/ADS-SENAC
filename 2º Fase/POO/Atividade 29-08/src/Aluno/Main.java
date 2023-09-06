package Aluno;

import java.lang.management.BufferPoolMXBean;
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
        List<Boolean> frequenciasAluno = new ArrayList<>();
        Boletim boletim = new Boletim();


        aluno1.codigo = 123456;
        aluno1.matricula = "123@abc";
        aluno1.sexo = "Masculino";
        aluno1.curso = "Análise e Desenvolvimento de Sistemas";
        aluno1.instituicao = "SENAC";
        aluno1.email = "lucas.ronchi1@alunos.sc.senac.br";
        aluno1.nome = "Lucas";
        aluno1.dataNascimento = LocalDate.of(2005, 5, 26);
        aluno1.endereco = "Rua 123";
        aluno1.telefone = "48 123456789";


        frequenciasAluno.add(true);
        frequenciasAluno.add(true);
        frequenciasAluno.add(true);
        frequenciasAluno.add(true);
        frequenciasAluno.add(true);

        aluno1.frequencias = frequenciasAluno;

        notasMatematica.add(10);
        notasMatematica.add(9);
        disciplinas.put("Matematica", notasMatematica);

        notasPortugues.add(7);
        notasPortugues.add(6);
        disciplinas.put("Portugues", notasPortugues);

        aluno1.notasDisciplinas = disciplinas;

        System.out.println(aluno1.calcularFrequencia());

        System.out.println(boletim.verificaAprovacaoAluno(aluno1.nome, aluno1.calcularMediaGeral(), aluno1.calcularFrequencia()));
    }
}