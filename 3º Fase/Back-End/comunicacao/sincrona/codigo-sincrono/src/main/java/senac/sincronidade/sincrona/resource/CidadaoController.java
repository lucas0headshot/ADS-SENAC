package senac.sincronidade.sincrona.resource;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import senac.sincronidade.sincrona.model.Cidadao;
import senac.sincronidade.sincrona.service.CidadaoService;

import java.net.URI;
import java.util.UUID;



@RestController
@RequestMapping("/api/cidadoes")
public class CidadaoController {
    @Autowired
    private CidadaoService service;

    @Autowired
    private RestTemplate restTemplate;




    @GetMapping
    public ResponseEntity get() {
        return ResponseEntity.ok().body(service.get());
    }

    @GetMapping("/{id}")
    public ResponseEntity getById(@RequestParam("id") UUID id) {
        return ResponseEntity.ok().body(service.getById(id));
    }



    @PostMapping
    public ResponseEntity post(@RequestBody Cidadao entity) {
        //service.post(entity);

        try {
            ResponseEntity<String> response = restTemplate
                    .postForEntity(
                            "http://localhost:8088/api/populacoes",
                            entity,
                            String.class
                    );
        } catch(Exception e) {
            System.out.println(e.getMessage());
        }

        return ResponseEntity.created(URI.create("/api/cidadoes/" + entity.getId())).body(entity);
    }
}