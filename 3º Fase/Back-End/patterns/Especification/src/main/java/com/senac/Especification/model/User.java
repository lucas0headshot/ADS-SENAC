package com.senac.Especification.model;

public class User extends EntityID {
    private int age;
    private String email;
    private String name;

    public User(int id, int age, String email, String name) {
        super(id);
        this.age = age;
        this.email = email;
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "User{" +
                "age=" + age +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
