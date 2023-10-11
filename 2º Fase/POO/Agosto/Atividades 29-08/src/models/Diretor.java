package models;

public class Diretor extends Funcionario {
    private Double salarioContratual;
    private Double bonusFaturamento;
    private Double salarioFamilia;
    private Double comissao;



    public Diretor(String nome, String matricula, Double salarioContratual, Double bonusFaturamento, Double salarioFamilia, Double comissao){
        super.setNome(nome);
        super.setMatricula(matricula);
        this.setSalarioContratual(salarioContratual);
        this.setBonusFaturamento(bonusFaturamento);
        this.setSalarioFamilia(salarioFamilia);
        this.setComissao(comissao);
    }


    public Double getSalarioContratual() {
        return salarioContratual;
    }

    public Double getBonusFaturamento() {
        return bonusFaturamento;
    }

    public Double getSalarioFamilia() {
        return salarioFamilia;
    }

    public Double getComissao() {
        return comissao;
    }


    public void setSalarioContratual(Double salarioContratual) {
        this.salarioContratual = salarioContratual;
    }

    public void setBonusFaturamento(Double bonusFaturamento) {
        this.bonusFaturamento = bonusFaturamento;
    }

    public void setSalarioFamilia(Double salarioFamilia) {
        this.salarioFamilia = salarioFamilia;
    }

    public void setComissao(Double comissao) {
        this.comissao = comissao;
    }


    @Override
    public String toString() {
        return "Diretor{" +
                "salarioContratual=" + salarioContratual +
                ", bonusFaturamento=" + bonusFaturamento +
                ", salarioFamilia=" + salarioFamilia +
                ", comissao=" + comissao +
                '}';
    }

    @Override
    public Double getSalario(){
        return (salarioContratual + bonusFaturamento + salarioFamilia + comissao);
    }
}