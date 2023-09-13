package Aluno;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Aluno {
    Integer codigo;
    String nome;
    LocalDate dataNascimento;
    String telefone;
    String endereco;
    List<Disciplina> disciplinas = new ArrayList<>();
    List<Frequencia> frequencias = new ArrayList<>();
    Filiacao filiacao;
    Bolsa bolsa;



    public void imprimirDadosAluno() {
        System.out.println("Código: " + codigo + " Nome: " + nome + " Data nascimento:" + dataNascimento);
    }

    public Integer calcularMediaGeral() {
        Integer mediaGeral = 0;

        for(Disciplina disciplina : disciplinas) {
            mediaGeral += disciplina.calcularMediaDisciplina();
        }

        return mediaGeral / disciplinas.size();
    }

//    public Double calcularFrequencia() {
//        Integer presencas = 0;
//
//        for (Boolean frequencia : frequencias) {
//            if(frequencia == true) {
//                presencas++;
//            }
//        }
//
//        return ((presencas.doubleValue() / frequencias.size()) * 100.0);
//    }

//    public void nomeDoMetodo() {
//        // Corpo do método
//        // Aqui estão as instruções que o método executa
//    }
//
//    public void calcularIdade() {
//        LocalDate hoje = LocalDate.now();
//        Period periodo = Period.between(dataNascimento, hoje);
//        System.out.println(periodo.getYears());
//    }
//
//    public void imprimirDisciplinasMatriculadas() {
//        for (Map.Entry<String, List<Integer>> entry : disciplinas.entrySet()) {
//            String nomeDisciplina = entry.getKey();
//            System.out.println("Aluno.Disciplina: " + nomeDisciplina);
//        }
//    }
//
//    public void verificaAlunoAprovado() {
//        Integer mediaGeral = calcularMediaGeral();
//
//        if (mediaGeral >= 7) {
//            System.out.println("APROVADO");
//        } else if (mediaGeral >= 5) {
//            System.out.println("RECUPERACAO");
//        } else {
//            System.out.println("REPROVADO");
//        }
//    }
}
