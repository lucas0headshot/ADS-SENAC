package senac.sincronidade.sincrona.resource;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import senac.sincronidade.sincrona.model.Pais;
import senac.sincronidade.sincrona.repository.PaisRepository;
import senac.sincronidade.sincrona.service.PaisService;

import java.net.URI;
import java.util.UUID;


@RestController
@RequestMapping("/api/paises")
public class PaisController {
    @Autowired
    private PaisService service;

    @Autowired
    private RestTemplate restTemplate;



    @GetMapping
    public ResponseEntity get() {
        return ResponseEntity.ok().body(service.get());
    }

    @GetMapping("/{id}")
    public ResponseEntity getByUUID(@RequestParam("id") UUID id) {
        ResponseEntity<Pais> responseEntity = restTemplate
                .getForEntity(
                        "http://localhost:8088/api/paises-replica",
                        Pais.class,
                        id
                );

        return ResponseEntity.ok().body(responseEntity.getBody());
    }



    @PostMapping
    public ResponseEntity post(@RequestBody Pais entity) {
        service.post(entity);

        ResponseEntity<String> response = restTemplate
                .postForEntity(
                        "http://localhost:8088/api/paises-replica",
                        entity,
                        String.class);

        return ResponseEntity.created(URI.create("/api/paises/" + entity.getId())).body(entity);
    }
}