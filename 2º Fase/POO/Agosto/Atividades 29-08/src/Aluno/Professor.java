package Aluno;

import java.time.LocalDate;

public class Professor {
    String nome;
    String matricula;
    String telefone;
    String endereco;
    LocalDate dataContratacao;



    public Professor(String nome, String matricula, LocalDate dataContratacao){
        this.nome = nome;
        this.matricula = matricula;
        this.dataContratacao = dataContratacao;
    }

    public Professor(String nome, String matricula, String telefone){
        this.nome = nome;
        this.matricula = matricula;
        this.dataContratacao = dataContratacao;
        this.telefone = telefone;
    }

    public Professor(String nome, String matricula, LocalDate dataContratacao, String endereco){
        this.nome = nome;
        this.matricula = matricula;
        this.dataContratacao = dataContratacao;
        this.endereco = endereco;
    }


    @Override
    public String toString() {
        return "Professor{" +
                "nome='" + nome + '\'' +
                ", matricula='" + matricula + '\'' +
                ", telefone='" + telefone + '\'' +
                ", endereco='" + endereco + '\'' +
                ", dataContratacao=" + dataContratacao +
                '}';
    }
}