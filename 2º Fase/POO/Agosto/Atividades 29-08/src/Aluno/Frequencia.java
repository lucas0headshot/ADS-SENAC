package Aluno;

import java.time.LocalDate;

public class Frequencia {
    LocalDate dataAula;
    Boolean presenca;

    @Override
    public String toString() {
        return "Aluno.Frequencia{" +
                "dataAula=" + dataAula +
                ", presenca=" + presenca +
                '}';
    }
}