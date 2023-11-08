package com.senac.CRUD.model;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class Person extends EntityId {
    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "telephone", nullable = false)
    private String telephone;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "email", nullable = false)
    private String email;



    public Person(String name, String telephone, String address, String email) {
        this.name = name;
        this.telephone = telephone;
        this.address = address;
        this.email = email;
    }


    public String getName() {
        return name;
    }

    public String getTelephone() {
        return telephone;
    }

    public String getAddress() {
        return address;
    }

    public String getEmail() {
        return email;
    }


    public void setName(String name) {
        this.name = name;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}