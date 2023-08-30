package Aluno;

import javax.swing.*;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public class Aluno {
    Integer codigo;
    String matricula;
    String sexo;
    String curso;
    String instituicao;
    Double frequencia;
    String email;
    String nome;
    LocalDate dataNascimento;
    String telefone;
    String endereco;
    Map<String, List<Integer>> notasDisciplinas;


    public void getDados() {
        System.out.println("Código: " + this.codigo + " | Nome: " + this.nome + " | Data de nascimento: " + this.dataNascimento);
    }

    public void getMediaMateria() {
        for (Map.Entry<String, List<Integer>> entry : notasDisciplinas.entrySet()) {
            String nomeDisciplina = entry.getKey();
            List<Integer> notas = entry.getValue();

            System.out.println("Disciplina: " + nomeDisciplina);
            Integer somaNotas = 0;
            for (Integer nota: notas) {
                somaNotas += nota;
            }

            System.out.println("Média: " + (somaNotas / notas.size()));
        }
    }

    public void getMedia() {
        Integer media = 0;

        for (Map.Entry<String, List<Integer>> entry : notasDisciplinas.entrySet()) {
            List<Integer> notas = entry.getValue();

            Integer somaNotas = 0;
            for (Integer nota: notas) {
                somaNotas += nota;
            }

            media += (somaNotas / notas.size()) / notasDisciplinas.size();
        }

        System.out.println("Média geral: " + media);
    }
}