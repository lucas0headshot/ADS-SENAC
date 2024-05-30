package com.senac.Especification.model;

import org.springframework.data.jpa.domain.Specification;

public class AgeSpecification implements Specification<User> {
    private int minAge;

    public AgeSpecification(int minAge) {
        this.minAge = minAge;
    }

    @Override
    public ValidationResult isSatisfiedBy(User user) {
        if (user.getAge() >= minAge) {
            return ValidationResult.valid();
        } else {
            return ValidationResult.invalid("Age must be at least" + minAge);
        }
    }
}
