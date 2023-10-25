package models;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Aluno extends Pessoa {
    private String telefone;
    private String endereco;
    private List<Disciplina> disciplinas = new ArrayList<>();
    private List<Frequencia> frequencias = new ArrayList<>();
    private Integer mediaGeral = 0;
    private Filiacao filiacao;
    private Bolsa bolsa;



    public Aluno(String nome, Integer codigo, String telefone, String endereco){
        super.setNome(nome);
        super.setCodigo(codigo);
        this.telefone = telefone;
        this.endereco = endereco;
    }


    public void addDisciplina(Disciplina disciplina){
        this.disciplinas.add(disciplina);
    }

    public Integer calcularMediaGeral() {
        Integer somaMedias = 0;
        for (Disciplina disciplina : disciplinas) {
            somaMedias += disciplina.calcularMediaDisciplina();
        }
        mediaGeral = somaMedias / disciplinas.size();
        return mediaGeral;
    }


    public void setDadosAluno(Integer codigo, String nome){
        this.setDadosAluno(codigo, nome, null);
    }

    public void setDadosAluno(Integer codigo, String nome, LocalDate dataNascimento){
        this.setDadosAluno(codigo, nome, dataNascimento, null);
    }

    public void setDadosAluno(Integer codigo, String nome, LocalDate dataNascimento, Integer mediaGeral){
        this.setCodigo(codigo);
        this.setNome(nome);
        this.setDataNascimento(dataNascimento);
        this.setMediaGeral(mediaGeral);
    }


    public List<Disciplina> getDisciplinas() {
        return this.disciplinas;
    }

    public Integer getMediaGeral() {
        return this.mediaGeral;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public List<Frequencia> getFrequencias() {
        return frequencias;
    }

    public Filiacao getFiliacao() {
        return filiacao;
    }

    public Bolsa getBolsa() {
        return bolsa;
    }


    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public void setDisciplinas(List<Disciplina> disciplinas) {
        this.disciplinas = disciplinas;
    }

    public void setFrequencias(List<Frequencia> frequencias) {
        this.frequencias = frequencias;
    }

    public void setMediaGeral(Integer mediaGeral) {
        this.mediaGeral = mediaGeral;
    }

    public void setFiliacao(Filiacao filiacao) {
        this.filiacao = filiacao;
    }

    public void setBolsa(Bolsa bolsa) {
        this.bolsa = bolsa;
    }
}
