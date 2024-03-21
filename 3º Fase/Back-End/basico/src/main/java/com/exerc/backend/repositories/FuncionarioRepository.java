package com.exerc.backend.repositories;



import com.exerc.backend.enterprise.CustomQuerydslPredicateExecutor;
import com.exerc.backend.models.Funcionario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.UUID;



@Repository
public interface FuncionarioRepository extends JpaRepository<Funcionario, UUID>, CustomQuerydslPredicateExecutor<Funcionario> {
}