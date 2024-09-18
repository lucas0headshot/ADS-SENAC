"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Carro = void 0;
class Carro {
    constructor(modelo, ano, qtd_rodas, cor) {
        this.setModelo(modelo);
        this.setAno(ano);
        this.setQtdRodas(qtd_rodas);
        this.setCor(cor);
    }
    ;
    setModelo(modelo) {
        this.modelo = modelo;
    }
    getModelo() {
        return this.modelo;
    }
    setAno(ano) {
        this.ano = ano;
    }
    getAno() {
        return this.ano;
    }
    setQtdRodas(qtd_rodas) {
        this.qtd_rodas = qtd_rodas;
    }
    getQtdRodas() {
        return this.qtd_rodas;
    }
    setCor(cor) {
        this.cor = cor;
    }
    getCor() {
        return this.cor;
    }
    exibirDados() {
        return `Modelo: ${this.getModelo()}, Ano: ${this.getAno()}, Quantidade de Rodas: ${this.getQtdRodas()}, Cor: ${this.getCor()}`;
    }
}
exports.Carro = Carro;
;
