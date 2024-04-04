package senac.sincronidade.sincrona.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import senac.sincronidade.sincrona.model.Pais;
import senac.sincronidade.sincrona.repository.PaisRepository;
import java.util.List;
import java.util.UUID;



@Service
public class PaisService {
    @Autowired
    private PaisRepository repository;



    public Pais post(Pais entity) {
        return repository.save(entity);
    }



    public Pais getById(UUID id) {
        return repository.findById(id).orElse(null);
    }

    public List<Pais> get() {
        return repository.findAll();
    }
}