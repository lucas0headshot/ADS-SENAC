package crud.produto.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import crud.produto.model.ProdutoEntity;

@Repository
public interface ProdutoRepository 
extends JpaRepository <ProdutoEntity,Long> {}