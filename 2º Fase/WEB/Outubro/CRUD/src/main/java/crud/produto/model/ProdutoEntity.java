package crud.produto.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity(name="produto")
@Table(name="produto")
@Getter
@Setter
public class ProdutoEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    public int id;
    public String nome;
    public double valor;

}
