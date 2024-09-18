"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Pessoa = void 0;
class Pessoa {
    constructor(nome, idade, cidade) {
        this.setNome(nome);
        this.setIdade(idade);
        this.setCidade(cidade);
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
    exibirDados() {
        return `Nome: ${this.getNome()}, Idade: ${this.getIdade()} e Cidade: ${this.getCidade()}`;
    }
    ;
    verificarIdade() {
        if (this.idade < 18) {
            return "Menor de idade";
        }
        else {
            return "Maior de idade";
        }
    }
    ;
}
exports.Pessoa = Pessoa;
;
