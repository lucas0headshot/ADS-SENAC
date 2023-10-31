package models.escola;

public class AlunoMestrado extends Aluno {
    private Double notaProva01;
    private Double notaProva02;
    private Double notaProva03;
    private Double notaProva04;
    private Double notaProva05;



    public AlunoMestrado(String nome, Double notaProva01, Double notaProva02, Double notaProva03, Double notaProva04, Double notaProva05) {
        super.setNome(nome);
        this.notaProva01 = notaProva01;
        this.notaProva02 = notaProva02;
        this.notaProva03 = notaProva03;
        this.notaProva04 = notaProva04;
        this.notaProva05 = notaProva05;
    }


    @Override
    public Double calculaMediaGeral() {
        return (notaProva01 * 0.25) + (notaProva02 * 0.35) + (notaProva03 * 0.40);
    }
}