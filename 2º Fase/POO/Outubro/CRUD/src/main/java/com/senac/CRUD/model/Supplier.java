package com.senac.CRUD.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Supplier extends Person {
    @Column(name = "cnpj", nullable = true)
    private String cnpj;

    @Column(name = "social_name", nullable = true)
    private String socialName;



    public Supplier() {
        super();
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