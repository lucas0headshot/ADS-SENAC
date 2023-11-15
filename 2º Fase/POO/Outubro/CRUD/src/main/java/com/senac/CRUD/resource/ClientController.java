package com.senac.CRUD.resource;


import com.senac.CRUD.model.Client;
import com.senac.CRUD.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/api/clients")
public class ClientController {
    @Autowired
    private ClientService service;



    @PostMapping
    public ResponseEntity create(@RequestBody Client entity) {
        return ResponseEntity.created(URI.create("/api/clients/" + entity.getId())).body(service.save(entity));
    }


    @GetMapping
    public ResponseEntity findAll() {
        List<Client> clients = service.searchAll();
        return ResponseEntity.ok(clients);
    }

    @GetMapping("/{id}")
    public ResponseEntity findById(@PathVariable("id") Long id) {
        return ResponseEntity.ok(service.searchById(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity update(@PathVariable("id") Long id, @RequestBody Client entity) {
        return ResponseEntity.ok().body(service.alter(id, entity));
    }


    @DeleteMapping("/{id}")
    public ResponseEntity remove(@PathVariable("id") Long id) {
        service.delete(id);
        return ResponseEntity.noContent().build();
    }
}