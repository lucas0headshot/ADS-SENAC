package com.senac.CRUD.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Supplier extends Person {
    @Column(name = "cnpj", nullable = true)
    private String cnpj;

    @Column(name = "social_name", nullable = true)
    private String socialName;



    public Supplier(String name, String telephone, String address, String email, String cnpj, String socialName) {
        super(name, telephone, address, email);
        this.cnpj = cnpj;
        this.socialName = socialName;
    }

    public String getCnpj() {
        return cnpj;
    }

    public String getSocialName() {
        return socialName;
    }


    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public void setSocialName(String socialName) {
        this.socialName = socialName;
    }
}