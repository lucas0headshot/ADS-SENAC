package models;

import java.time.LocalDate;

public class Professor extends Funcionario {
    private String matricula;
    private String telefone;
    private String endereco;
    private LocalDate dataContratacao;



    public Professor(String nome, Integer codigo, String matricula, LocalDate dataContratacao){
        super.setNome(nome);
        super.setCodigo(codigo);
        this.matricula = matricula;
        this.dataContratacao = dataContratacao;
    }

    public Professor(String nome, Integer codigo,String matricula, String telefone){
        super.setNome(nome);
        super.setCodigo(codigo);
        this.matricula = matricula;
        this.telefone = telefone;
    }

    public Professor(String nome, Integer codigo,LocalDate dataContratacao, String endereco){
        super.setNome(nome);
        super.setCodigo(codigo);
        this.dataContratacao = dataContratacao;
        this.endereco = endereco;
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