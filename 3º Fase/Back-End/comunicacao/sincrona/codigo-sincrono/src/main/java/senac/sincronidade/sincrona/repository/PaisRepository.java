package senac.sincronidade.sincrona.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import senac.sincronidade.sincrona.model.Pais;
import java.util.UUID;



@Repository
public interface PaisRepository extends JpaRepository<Pais, UUID> {
}