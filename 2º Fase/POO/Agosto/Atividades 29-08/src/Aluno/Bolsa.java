package Aluno;

import java.time.LocalDate;

public class Bolsa {
    String descricao;
    LocalDate dataInicial;
    LocalDate dataFinal;



    public Bolsa(String descricao, LocalDate dataInicial, LocalDate dataFinal) {
        this.descricao = descricao;
        this.dataInicial = dataInicial;
        this.dataFinal = dataFinal;
    }
}