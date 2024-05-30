package com.senac.Especification.model;

import org.springframework.data.jpa.domain.Specification;

public class OrSpecification<T> extends CompositeSpecification<T> {
    private Specification<T> spec1;
    private Specification<T> spec2;

    public OrSpecification(Specification<T> spec1, Specification<T> spec2) {
        this.spec1 = spec1;
        this.spec2 = spec2;
    }

    @Override
    public ValidationResult isSatisfiedBy(T candidate) {
        ValidationResult result1 = spec1.isSatisfiedBy(candidate);
        ValidationResult result2 = spec2.isSatisfiedBy(candidate);

        if (result1.isValid() || result2.isValid()) {
            return ValidationResult.valid();
        } else if (!result1.isValid()) {
            return result1;
        } else {
            return result2;
        }
    }
}
