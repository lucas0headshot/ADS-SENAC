package com.senac.CRUD.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Client extends Person {
    @Column(name = "cpf", nullable = true)
    private String cpf;

    @Column(name = "credit_limit", nullable = true)
    private Double creditLimit;



    public Client(String name, String telephone, String address, String email, String cpf, Double creditLimit) {
        super(name, telephone, address, email);
        this.cpf = cpf;
        this.creditLimit = creditLimit;
    }


    public String getCpf() {
        return cpf;
    }

    public Double getCreditLimit() {
        return creditLimit;
    }
}