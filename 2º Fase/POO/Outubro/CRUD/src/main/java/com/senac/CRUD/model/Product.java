package com.senac.CRUD.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Product extends EntityId {
    @Column(name = "name", nullable = true)
    private String name;

    @Column(name = "value", nullable = true)
    private Double value;



    public String getName() {
        return name;
    }

    public Double getValue() {
        return value;
    }


    public void setName(String name) {
        this.name = name;
    }

    public void setValue(Double value) {
        this.value = value;
    }
}