package com.exerc.backend.dtos;



import com.exerc.backend.models.Funcionario;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;



public class FuncionarioDTO {
    private UUID id;
    private String nome;
    private String matricula;

    private Double comissao;



    public FuncionarioDTO() {}

    public FuncionarioDTO(UUID id, String nome, String matricula, Double comissao) {
        this.id = id;
        this.nome = nome;
        this.matricula = matricula;
        this.comissao = comissao;
    }



    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public Double getComissao() {
        return comissao;
    }

    public void setComissao(Double comissao) {
        this.comissao = comissao;
    }

    public static FuncionarioDTO fromEntity(Funcionario entity) {
        return new FuncionarioDTO(
                entity.getId(),
                entity.getNome(),
                entity.getMatricula(),
                entity.getComissao()
        );
    }

    public static List<FuncionarioDTO> fromEntityList(List<Funcionario> entitys) {
        List<FuncionarioDTO> entityDTOList = new ArrayList<>();
        for (Funcionario funcionario : entitys) {
            entityDTOList.add(fromEntity(funcionario));
        }

        return entityDTOList;
    }


    public Funcionario toEntity() {
        Funcionario entity = new Funcionario();
        entity.setId(this.id);
        entity.setNome(this.nome);
        entity.setMatricula(this.matricula);
        entity.setComissao(this.comissao);

        return entity;
    }

    public static List<Funcionario> toEntityList(List<FuncionarioDTO> funcionarioDTOS) {
        List<Funcionario> funcionarios = new ArrayList<>();
        for (FuncionarioDTO funcionarioDTO : funcionarioDTOS) {
            funcionarios.add(funcionarioDTO.toEntity());
        }

        return funcionarios;
    }
}