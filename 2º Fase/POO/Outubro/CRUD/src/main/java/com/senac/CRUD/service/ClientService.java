package com.senac.CRUD.service;

import com.senac.CRUD.model.Client;
import com.senac.CRUD.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ClientService {
    @Autowired
    private ClientRepository repository;



    public Client save(Client entity) {
        return repository.save(entity);
    }

    public List<Client> searchAll() {
        return repository.findAll();
    }

    public Client searchById(Long id) {
        return repository.findById(id).orElse(null);
    }

    public Client alter(Long id, Client entity) {
        Optional<Client> byId =  repository.findById(id);

        if (byId.isPresent()) {
            Client client = byId.get();

            client.setCpf(entity.getCpf());
            client.setCreditLimit(entity.getCreditLimit());
            client.setName(entity.getName());
            client.setAddress(entity.getAddress());
            client.setEmail(entity.getEmail());
            client.setTelephone(entity.getTelephone());

            return repository.save(client);
        }

        return null;
    }


    public void delete(Long id) {
        repository.deleteById(id);
    }
}