package com.senac.Especification.model;

import org.springframework.data.jpa.domain.Specification;

public class NotSpecification<T> extends CompositeSpecification<T> {
    private Specification<T> spec;

    public NotSpecification(Specification<T> spec) {
        this.spec = spec;
    }

    @Override
    public ValidationResult isSatisfiedBy(T candidate) {
        if (!result.isValid()) {
            return ValidationResult.valid();
        } else {
            return ValidationResult.invalid("Not specificaiton failed");
        }
    }
}
