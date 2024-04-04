package senac.workertest.workersincrono.model;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;



@Entity
public class Pais extends EntityID {
    @Column(nullable = false)
    private String nome;

    @Column(nullable = false)
    private String sigla;

    @Column(nullable = false)
    private Integer populacao;



    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public Integer getPopulacao() {
        return populacao;
    }

    public void setPopulacao(Integer populacao) {
        this.populacao = populacao;
    }



    public void incrementarPopulacao() {
        this.populacao++;
    }



    @Override
    public String toString() {
        return "Pais{" +
                "nome='" + nome + '\'' +
                ", sigla='" + sigla + '\'' +
                ", populacao='" + populacao + '\'' +
                '}';
    }
}