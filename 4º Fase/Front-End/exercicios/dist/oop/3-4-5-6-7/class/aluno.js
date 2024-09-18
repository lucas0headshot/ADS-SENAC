"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Aluno = void 0;
const listarGenerico_1 = require("../util/listarGenerico");
class Aluno {
    constructor(nome, idade, cidade, email, telefone, nota1, nota2) {
        this.setNome(nome);
        this.setIdade(idade);
        this.setCidade(cidade);
        this.setEmail(email);
        this.setTelefone(telefone);
        this.setNota1(nota1);
        this.setNota2(nota2);
    }
    setNome(nome) {
        this.nome = nome;
    }
    getNome() {
        return this.nome;
    }
    setIdade(idade) {
        this.idade = idade;
    }
    getIdade() {
        return this.idade;
    }
    setCidade(cidade) {
        this.cidade = cidade;
    }
    getCidade() {
        return this.cidade;
    }
    setEmail(email) {
        this.email = email;
    }
    getEmail() {
        return this.email;
    }
    setTelefone(telefone) {
        this.telefone = telefone;
    }
    getTelefone() {
        return this.telefone;
    }
    setNota1(nota1) {
        this.nota1 = nota1;
    }
    getNota1() {
        return this.nota1;
    }
    setNota2(nota2) {
        this.nota2 = nota2;
    }
    getNota2() {
        return this.nota2;
    }
    getStatus() {
        if (this.getNota1() + this.getNota2() / 2 < 7) {
            return "aprovado";
        }
        else {
            return "reprovado";
        }
    }
    listar() {
        return `${(0, listarGenerico_1.listarGenerico)(this)} Nota 1: ${this.getNota1()},
                Nota 2: ${this.getNota2()} e Status: ${this.getStatus()}`;
    }
}
exports.Aluno = Aluno;
;
