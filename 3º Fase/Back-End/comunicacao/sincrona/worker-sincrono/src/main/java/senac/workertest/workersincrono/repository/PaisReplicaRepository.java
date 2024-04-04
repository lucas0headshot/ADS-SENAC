package senac.workertest.workersincrono.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import senac.workertest.workersincrono.model.Pais;
import java.util.Optional;
import java.util.UUID;



@Repository
public interface PaisReplicaRepository extends JpaRepository<Pais, UUID> {
    Optional<Pais> findByUUID(UUID id);
}