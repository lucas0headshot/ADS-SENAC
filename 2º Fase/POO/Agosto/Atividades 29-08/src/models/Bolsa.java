package models;

import java.time.LocalDate;

public class Bolsa {
    private String descricao;
    private LocalDate dataInicial;
    private LocalDate dataFinal;



    public Bolsa(String descricao, LocalDate dataInicial, LocalDate dataFinal) {
        this.descricao = descricao;
        this.dataInicial = dataInicial;
        this.dataFinal = dataFinal;
    }
}