package com.senac.Especification.model;

import org.springframework.data.jpa.domain.Specification;

public interface Specificaton<T> {
    ValidationResult isSatisfiedBy(T candidate);

    default Specification<T> and(Specificaton<T> other) {
        return new AndSpecification(this, other);
    }

    default Specificaton<T> or(Specificaton<T> other) {
        return new OrSpecification(this, other);
    }

    default Specificaton<T> not() {
        return new NotSpecification<>(this);
    }
}
