"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Professor = void 0;
const listarGenerico_1 = require("../util/listarGenerico");
class Professor {
    constructor(nome, idade, cidade, email, telefone, materia, classe) {
        this.setNome(nome);
        this.setIdade(idade);
        this.setCidade(cidade);
        this.setEmail(email);
        this.setTelefone(telefone);
        this.setMateria(materia);
        this.setClasse(classe);
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
    setMateria(materia) {
        this.materia = materia;
    }
    getMateria() {
        return this.materia;
    }
    setClasse(classe) {
        this.classe = classe;
    }
    getClasse() {
        return this.classe;
    }
    listar() {
        return (0, listarGenerico_1.listarGenerico)(this) + `Materia: ${this.getMateria()} e Classe: ${this.getClasse()}`;
    }
}
exports.Professor = Professor;
;
