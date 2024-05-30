package com.senac.Especification.model;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;

@MappedSuperclass
public class EntityID {
    @Id
    @GeneratedValue
    private int id;

    public EntityID(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return "EntityID{" +
                "id=" + id +
                '}';
    }
}
