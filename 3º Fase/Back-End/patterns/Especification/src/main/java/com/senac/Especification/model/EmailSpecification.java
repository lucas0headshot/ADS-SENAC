package com.senac.Especification.model;

import org.springframework.data.jpa.domain.Specification;

public class EmailSpecification implements Specification<User> {
    @Override
    public ValidationResult isSatisfiedBy(User user) {
        if (user.getEmail() != null && user.getEmail().contains("@")) {
            return  ValidationResult.valid();
        } else {
            return ValidationResult.invalid("Email is not valid");
        }
    }
}
