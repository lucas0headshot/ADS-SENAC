package com.senac.Especification.model;

import org.springframework.data.jpa.domain.Specification;

public abstract class CompositeSpecification<T> implements Specification<T> {
    public Specification<T> and(Specification<T> other) {
        return new AndSpecification<>(this, other);
    }

    public Specification<T> or(Specification<T> other) {
        return new OrSpecification<>(this, other);
    }



    public Specification<T> not(Specification<T> other) {
        return new NotSpecification<>(this);
    }
}
