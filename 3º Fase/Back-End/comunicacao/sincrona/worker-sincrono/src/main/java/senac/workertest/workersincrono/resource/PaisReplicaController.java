package senac.workertest.workersincrono.resource;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import senac.workertest.workersincrono.model.Pais;
import senac.workertest.workersincrono.repository.PaisReplicaRepository;
import java.util.UUID;



@RestController
@RequestMapping("/api/paises-replica")
public class PaisReplicaController {
    @Autowired
    private PaisReplicaRepository repository;

    @Autowired
    private RestTemplate restTemplate;


    @GetMapping("/{id}")
    public ResponseEntity getByUUID(@RequestParam("id") UUID id) {
        return ResponseEntity.ok().body(repository.findByUUID(id));
    }



    @PostMapping
    public ResponseEntity post(@RequestBody Pais entity) {
        System.out.println("Integração que chegou no Worker");
        System.out.println(entity);

        return ResponseEntity.ok().build();
    }
}