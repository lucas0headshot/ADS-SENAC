package com.senac.Builder.model;

public class User extends EntityID {
    private Integer age;
    private String email;
    private String name;

    public User(Integer id, Integer age, String email, String name) {
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

    public static class Builder {
        private String name;
        private Integer age;
        private String email;

        private Builder() {
        }

        public static Builder create() {
            return new Builder();
        }

        public static Builder from(User user) {
            Builder builder = new Builder();
            builder.name = user.name;
            builder.age = user.age;
            builder.email = user.email;
            return builder;
        }

        public Builder name(String name) {
            this.name = name;
            return this;
        }

        public Builder age(Integer age) {
            this.age = age;
            return this;
        }

        public Builder email(String email) {
            this.email = email;
            return this;
        }

        public User build() {
            return new User(name, age, email);
        }
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
