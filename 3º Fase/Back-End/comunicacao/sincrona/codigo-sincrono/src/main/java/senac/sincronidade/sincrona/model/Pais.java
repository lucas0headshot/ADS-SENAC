package senac.sincronidade.sincrona.model;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;



@Entity
public class Pais extends EntityID {
    @Column
    private String nome;

    @Column
    private String sigla;

    @Column
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



    @Override
    public String toString() {
        return "Pais{" +
                "nome='" + nome + '\'' +
                ", sigla='" + sigla + '\'' +
                ", populacao='" + populacao + '\'' +
                '}';
    }
}