package models.escola;

public class AlunoFundamental extends Aluno {

    private Double notaProva;
    private Double notaTrabalho;
    private Double notaParticipacao;
    private Double notaFrequencia;

    public AlunoFundamental(String nome, Double notaProva, Double notaTrabalho, Double notaParticipacao, Double notaFrequencia) {
        super.setNome(nome);
        this.notaProva = notaProva;
        this.notaTrabalho = notaTrabalho;
        this.notaParticipacao = notaParticipacao;
        this.notaFrequencia = notaFrequencia;
    }

    @Override
    public Double calculaMediaGeral() {
        return (notaProva * 0.30)+ (notaTrabalho * 0.25) + (notaParticipacao *0.15) + (notaFrequencia * 0.30);
    }
}
