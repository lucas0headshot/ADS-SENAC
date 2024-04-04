package senac.workertest.workersincrono.model;



import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import java.util.UUID;



@MappedSuperclass
public class EntityID {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;



    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }



    @Override
    public String toString() {
        return "EntityID{" +
                "id=" + id +
                '}';
    }
}