package senac.workertest.workersincrono.resource;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import senac.workertest.workersincrono.model.Cidadao;
import senac.workertest.workersincrono.model.Pais;
import senac.workertest.workersincrono.repository.PaisRepository;

import java.util.Optional;


@RestController
@RequestMapping("/api/populacoes")
public class populacoesController {
    @Autowired
    private PaisRepository paisRepository;

    @Autowired
    private RestTemplate restTemplate;



    @PostMapping
    public ResponseEntity post(@RequestBody Cidadao entity) {
        Optional<Pais> paisOptional = paisRepository.findById(entity.getNacionalidade().getId());

        if (paisOptional.isPresent()) {
            Pais pais = paisOptional.get();
            pais.incrementarPopulacao();
            paisRepository.save(pais);
        }

        return ResponseEntity.ok().build();
    }
}