package com.senac.CRUD.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Client extends Person {
    @Column(name = "cpf", nullable = true)
    private String cpf;

    @Column(name = "credit_limit", nullable = true)
    private Double creditLimit;



    public Client() {
        super();
    }


    public String getCpf() {
        return cpf;
    }

    public Double getCreditLimit() {
        return creditLimit;
    }


    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setCreditLimit(Double creditLimit) {
        this.creditLimit = creditLimit;
    }
}