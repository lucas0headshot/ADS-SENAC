package models;

import java.time.LocalDate;

public class Professor extends Funcionario {
    private String matricula;
    private String telefone;
    private String endereco;
    private LocalDate dataContratacao;



    public Professor(String nome, Integer codigo, Double salario, String cargo, String matricula, String telefone, String endereco, LocalDate dataContratacao) {
        super(nome, codigo, salario, cargo);
        this.matricula = matricula;
        this.telefone = telefone;
        this.endereco = endereco;
        this.dataContratacao = dataContratacao;
    }


    public void setDadosProfessor(String nome, Integer codigo, Double salario, String cargo) {
        this.setDadosProfessor(nome, codigo, salario, cargo, null, null, null, null);
    }

    public void setDadosProfessor(String nome, Integer codigo, Double salario, String cargo, String matricula) {
        this.setDadosProfessor(nome, codigo, salario, cargo, matricula, null, null, null);
    }

    public void setDadosProfessor(String nome, Integer codigo, Double salario, String cargo, String matricula, String telefone) {
        this.setDadosProfessor(nome, codigo, salario, cargo, matricula, telefone, null, null);
    }

    public void setDadosProfessor(String nome, Integer codigo, Double salario, String cargo, String matricula, String telefone, String endereco) {
        this.setDadosProfessor(nome, codigo, salario, cargo, matricula, telefone, endereco, null);
    }

    public void setDadosProfessor(String nome, Integer codigo, Double salario, String cargo, String matricula, String telefone, String endereco, LocalDate dataContratacao) {
        this.matricula = matricula;
        this.telefone = telefone;
        this.endereco = endereco;
        this.dataContratacao = dataContratacao;
    }


    public String getMatricula() {
        return matricula;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public LocalDate getDataContratacao() {
        return dataContratacao;
    }


    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public void setDataContratacao(LocalDate dataContratacao) {
        this.dataContratacao = dataContratacao;
    }


    @Override
    public String toString() {
        return "Professor{" +
                "nome='" + super.getNome() + '\'' +
                ", matricula='" + matricula + '\'' +
                ", telefone='" + telefone + '\'' +
                ", endereco='" + endereco + '\'' +
                ", dataContratacao=" + dataContratacao +
                '}';
    }
}