package senac.workertest.workersincrono.resource;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import senac.workertest.workersincrono.model.Pais;
import senac.workertest.workersincrono.repository.PaisReplicaRepository;


@RestController
@RequestMapping("/api/paises-replica")
public class PaisReplicaController {
    @Autowired
    private PaisReplicaRepository repository;

    @Autowired
    private RestTemplate restTemplate;

    @PostMapping
    public ResponseEntity post(@RequestBody Pais entity) {
        System.out.println("Integração que chegou no Worker");
        System.out.println(entity);

        return ResponseEntity.ok().build();
    }
}