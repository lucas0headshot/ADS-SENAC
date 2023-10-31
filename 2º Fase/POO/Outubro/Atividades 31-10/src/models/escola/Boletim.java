package models.escola;

public class Boletim {
    private Aluno aluno;



    public Boletim(Aluno aluno) {
        this.aluno = aluno;
    }


    public void imprimir() {
        System.out.println("Média de " + aluno.getNome() + " = " + aluno.calculaMediaGeral());
    }
}