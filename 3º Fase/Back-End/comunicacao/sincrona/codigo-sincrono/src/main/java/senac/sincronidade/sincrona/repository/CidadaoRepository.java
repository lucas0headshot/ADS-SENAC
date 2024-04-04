package senac.sincronidade.sincrona.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import senac.sincronidade.sincrona.model.Cidadao;
import java.util.UUID;



@Repository
public interface CidadaoRepository extends JpaRepository<Cidadao, UUID> {
}