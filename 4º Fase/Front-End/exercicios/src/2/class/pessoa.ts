import { iPessoa } from "../interface/iPessoa";

export class Pessoa implements iPessoa {
    nome!: string;
    idade!: number;
    cidade!: string;

    constructor(nome: string, idade: number, cidade: string) {
        this.setNome(nome);
        this.setIdade(idade);
        this.setCidade(cidade);
    }

    setNome(nome: string) {
        this.nome = nome;
    }

    getNome(): string {
        return this.nome;
    }

    setIdade(idade: number) {
        this.idade = idade;
    }

    getIdade(): number {
        return this.idade;
    }

    setCidade(cidade: string) {
        this.cidade = cidade;
    }

    getCidade(): string {
        return this.cidade;
    }

    exibirDados(): string {
        return `Nome: ${this.getNome()}, Idade: ${this.getIdade()} e Cidade: ${this.getCidade()}`;
    };

    verificarIdade(): string {
        if (this.idade < 18) {
            return "Menor de idade";
        } else {
            return "Maior de idade";
        }
    };
};