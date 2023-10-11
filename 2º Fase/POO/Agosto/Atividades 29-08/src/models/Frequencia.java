package models;

import java.time.LocalDate;

public class Frequencia {
    LocalDate dataAula;
    Boolean presenca;

    @Override
    public String toString() {
        return "models.Frequencia{" +
                "dataAula=" + dataAula +
                ", presenca=" + presenca +
                '}';
    }
}