package models;

import java.util.ArrayList;
import java.util.List;

public class Disciplina {
    private String nome;
    private String professor;
    private List<Integer> notas = new ArrayList<>();



    public Disciplina(String nome, List<Integer> notas) {
        this.nome = nome;
        this.notas = notas;
    }


    public void adicionaNota(Integer nota) {
        notas.add(nota);
    }


    public Integer calcularMediaDisciplina() {
        Integer somaNotas = 0;
        for (Integer nota : notas) {
            somaNotas = somaNotas + nota;
        }
        return somaNotas / notas.size();
    }
}