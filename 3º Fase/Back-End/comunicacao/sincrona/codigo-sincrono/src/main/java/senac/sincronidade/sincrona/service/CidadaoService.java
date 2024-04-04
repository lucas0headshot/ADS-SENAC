package senac.sincronidade.sincrona.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import senac.sincronidade.sincrona.model.Cidadao;
import senac.sincronidade.sincrona.repository.CidadaoRepository;

import java.util.List;
import java.util.UUID;



@Service
public class CidadaoService {
    @Autowired
    private CidadaoRepository repository;



    public Cidadao post(Cidadao entity) {
        return repository.save(entity);
    }



    public Cidadao getById(UUID id) {
        return  repository.findById(id).orElse(null);
    }

    public List<Cidadao> get() {
        return repository.findAll();
    }
}