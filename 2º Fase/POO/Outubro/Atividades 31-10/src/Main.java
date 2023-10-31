import models.escola.Aluno;
import models.escola.*;

public class Main {
    public static void main(String[] args) {
        Aluno alunoFundamental = new AlunoFundamental("Lucas Fundamental", 10.00, 10.00, 10.00, 10.00);

        Aluno alunoMedio = new AlunoMedio("Lucas Médio", 10.00, 10.00, 10.00);

        Aluno alunoFaculdade = new AlunoFaculdade("Lucas Faculdade" ,10.00, 10.00, 10.00);

        Aluno alunoPosGraduacao = new AlunoPosGraduacao("Lucas Pós-Graduação", 10.0, 10.00, 10.00, 10.00, 10.00);

        Aluno alunoMestrado = new AlunoPosGraduacao("Lucas Mestrado", 10.0, 10.00, 10.00, 10.00, 10.00);


        Boletim boletimFundamental = new Boletim(alunoFundamental);
        boletimFundamental.imprimir();

        Boletim boletimMedio = new Boletim(alunoMedio);
        boletimMedio.imprimir();

        Boletim boletimFaculdade = new Boletim(alunoFaculdade);
        boletimFaculdade.imprimir();

        Boletim boletimPosGraduacao = new Boletim(alunoPosGraduacao);
        boletimPosGraduacao.imprimir();

        Boletim boletimMestrado = new Boletim(alunoMestrado);
        boletimMestrado.imprimir();
    }
}