import { iCarro } from "../interface/iCarro";

export class Carro implements iCarro {
    modelo!: string;
    ano!: number;
    qtd_rodas!: number;
    cor!: string;

    constructor(modelo: string, ano: number, qtd_rodas: number, cor: string) {
        this.setModelo(modelo);
        this.setAno(ano);
        this.setQtdRodas(qtd_rodas);
        this.setCor(cor);
    };

    setModelo(modelo: string) {
        this.modelo = modelo;
    }

    getModelo(): string {
        return this.modelo;
    }

    setAno(ano: number) {
        this.ano = ano;
    }

    getAno(): number {
        return this.ano;
    }

    setQtdRodas(qtd_rodas: number) {
        this.qtd_rodas = qtd_rodas;
    }

    getQtdRodas(): number {
        return this.qtd_rodas;
    }

    setCor(cor: string) {
        this.cor = cor;
    }

    getCor(): string {
        return this.cor;
    }

    exibirDados(): string {
        return `Modelo: ${this.getModelo()}, Ano: ${this.getAno()}, Quantidade de Rodas: ${this.getQtdRodas()}, Cor: ${this.getCor()}`;
    }
};