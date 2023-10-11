package models;

public class Funcionario extends Pessoa {
    private String matricula;
    private Double salario;
    private String cargo;



    public Funcionario(){

    }

    public Funcionario(String nome, Integer codigo, Double salario, String cargo){
        super.setNome(nome);
        super.setCodigo(codigo);
        this.setSalario(salario);
        this.setCargo(cargo);
    }


    public Double getSalario() {
        return salario;
    }

    public String getCargo() {
        return cargo;
    }

    public String getMatricula() {
        return matricula;
    }


    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }
}