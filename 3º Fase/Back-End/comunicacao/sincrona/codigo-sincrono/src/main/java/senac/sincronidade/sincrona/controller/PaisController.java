package senac.sincronidade.sincrona.controller;



import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import senac.sincronidade.sincrona.model.Pais;
import senac.sincronidade.sincrona.repository.PaisRepository;

import java.util.UUID;


@RestController
@RequestMapping("/api/paises")
public class PaisController {
    @Autowired
    private PaisRepository repository;

    @Autowired
    private RestTemplate restTemplate;



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
        repository.save(entity);

        ResponseEntity<String> responseEntity = restTemplate
                .postForEntity(
                        "http://localhost:8088/api/paises-replica",
                        entity,
                        String.class);

        System.out.println(responseEntity.getStatusCode());

        return ResponseEntity.ok().body(entity);
    }
}