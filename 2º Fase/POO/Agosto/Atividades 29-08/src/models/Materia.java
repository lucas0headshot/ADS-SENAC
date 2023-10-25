package models;

public class Materia {
    private String nome;
    private String descricao;
    private String indicadorEssencial;
    private String indicadores;
    private String conteudo;
    private String planoDeAula;



    public Materia(String nome, String descricao) {
        this(nome, descricao, null);
    }

    public Materia(String nome, String descricao, String indicadorEssencial) {
        this(nome, descricao, indicadorEssencial, null);
    }

    public Materia(String nome, String descricao, String indicadorEssencial, String indicadores) {
        this(nome, descricao, indicadorEssencial, indicadores, null);
    }

    public Materia(String nome, String descricao, String indicadorEssencial, String indicadores, String conteudo) {
        this(nome, descricao, indicadorEssencial, indicadores, conteudo, null);
    }

    public Materia(String nome, String descricao, String indicadorEssencial, String indicadores, String conteudo, String planoDeAula) {
        this.nome = nome;
        this.descricao = descricao;
        this.indicadorEssencial = indicadorEssencial;
        this.indicadores = indicadores;
        this.conteudo = conteudo;
        this.planoDeAula = planoDeAula;
    }


    public String getNome() {
        return nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public String getIndicadorEssencial() {
        return indicadorEssencial;
    }

    public String getIndicadores() {
        return indicadores;
    }

    public String getConteudo() {
        return conteudo;
    }

    public String getPlanoDeAula() {
        return planoDeAula;
    }


    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public void setIndicadorEssencial(String indicadorEssencial) {
        this.indicadorEssencial = indicadorEssencial;
    }

    public void setIndicadores(String indicadores) {
        this.indicadores = indicadores;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public void setPlanoDeAula(String planoDeAula) {
        this.planoDeAula = planoDeAula;
    }
}