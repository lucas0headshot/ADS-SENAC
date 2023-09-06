package Aluno;

public class Boletim {
    String aluno;

    public String verificaAprovacaoAluno(String aluno, Integer media, Double frequencia) {
        if(media >= 7 && frequencia >= 70) {
            return aluno + " está aprovado";
        } else if(media >= 5 && frequencia >= 70) {
            return aluno + " está recuperação";
        } else {
            return aluno + " está reprovado";
        }
    }
}