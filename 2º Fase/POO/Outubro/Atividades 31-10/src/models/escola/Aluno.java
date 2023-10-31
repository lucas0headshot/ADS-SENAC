package models.escola;

import models.Pessoa;

public class Aluno extends Pessoa {

    private Double mediaGeral = 0.0;

    public Aluno() {
    }


    public Double calculaMediaGeral() {
        return mediaGeral;
    }
}