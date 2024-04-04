package senac.sincronidade.sincrona.model;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import java.time.LocalDate;



@Entity
public class Cidadao extends EntityID {
    @Column(nullable = false)
    private String nome;

    @Column(nullable = false)
    private LocalDate dataNasc;

    @ManyToOne
    private Pais nacionalidade;


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public LocalDate getDataNasc() {
        return dataNasc;
    }

    public void setDataNasc(LocalDate dataNasc) {
        this.dataNasc = dataNasc;
    }

    public Pais getNacionalidade() {
        return nacionalidade;
    }

    public void setNacionalidade(Pais nacionalidade) {
        this.nacionalidade = nacionalidade;
    }



    @Override
    public String toString() {
        return "Cidadao{" +
                "nome='" + nome + '\'' +
                ", dataNasc=" + dataNasc +
                ", nacionalidade=" + nacionalidade +
                '}';
    }
}