package models;

import javax.annotation.processing.SupportedOptions;

public class Gerente extends Funcionario {
    private Double salarioContratual;
    private Double bonusVendaDepartamento;
    private Double salarioFamilia;
    private Double fatorMultiplicador;



    public Gerente(String nome, String matricula, Double salarioContratual, Double bonusVendaDepartamento, Double salarioFamilia, Double fatorMultiplicador){
        super.setNome(nome);
        super.setMatricula(matricula);
        this.setSalarioContratual(salarioContratual);
        this.setBonusVendaDepartamento(bonusVendaDepartamento);
        this.setSalarioFamilia(salarioFamilia);
        this.setFatorMultiplicador(fatorMultiplicador);
    }


    public Double getSalarioContratual() {
        return salarioContratual;
    }

    public Double getBonusVendaDepartamento() {
        return bonusVendaDepartamento;
    }

    public Double getSalarioFamilia() {
        return salarioFamilia;
    }

    public Double getFatorMultiplicador() {
        return fatorMultiplicador;
    }


    public void setSalarioContratual(Double salarioContratual) {
        this.salarioContratual = salarioContratual;
    }

    public void setBonusVendaDepartamento(Double bonusVendaDepartamento) {
        this.bonusVendaDepartamento = bonusVendaDepartamento;
    }

    public void setSalarioFamilia(Double salarioFamilia) {
        this.salarioFamilia = salarioFamilia;
    }

    public void setFatorMultiplicador(Double fatorMultiplicador) {
        this.fatorMultiplicador = fatorMultiplicador;
    }


    @Override
    public String toString() {
        return "Gerente{" +
                "salarioContratual=" + salarioContratual +
                ", bonusVendaDepartamento=" + bonusVendaDepartamento +
                ", salarioFamilia=" + salarioFamilia +
                ", fatorMultiplicador=" + fatorMultiplicador +
                '}';
    }

    @Override
    public Double getSalario(){
        return ((salarioContratual + salarioFamilia + bonusVendaDepartamento) * (fatorMultiplicador / 100.00));
    }
}