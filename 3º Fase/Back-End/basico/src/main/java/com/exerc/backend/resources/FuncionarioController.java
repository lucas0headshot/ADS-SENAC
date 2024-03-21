package com.exerc.backend.resources;



import com.exerc.backend.dtos.FuncionarioDTO;
import com.exerc.backend.models.Funcionario;
import com.exerc.backend.repositories.FuncionarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;



@RestController
@RequestMapping("/api/funcionario")
public class FuncionarioController {
    @Autowired
    private FuncionarioRepository repository;



    @PostMapping
    public ResponseEntity post(@RequestBody Funcionario entity) {
        repository.save(entity);
        return ResponseEntity.ok().body(entity);
    }


    @GetMapping
    public ResponseEntity get(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "10") int size, @RequestParam(required = false) String filter) {
        PageRequest pageable = PageRequest.of(page, size);
        Page<Funcionario> funcionarioPage = repository.findAll(filter, Funcionario.class, pageable);
        Page<FuncionarioDTO> funcionarioDTOPage = funcionarioPage.map(FuncionarioDTO::fromEntity);
        return ResponseEntity.ok(funcionarioDTOPage);
    }
}