import { iPadrao } from "../interface/iPadrao";
import { listarGenerico } from "../util/listarGenerico";

export class Aluno implements iPadrao {
    nome!: string;
    idade!: number;
    cidade!: string;
    email!: string;
    telefone!: number;
    nota1!: number;
    nota2!: number;

    constructor(nome: string, idade: number, cidade: string, email: string, telefone: number, nota1: number, nota2: number) {
        this.setNome(nome);
        this.setIdade(idade);
        this.setCidade(cidade);
        this.setEmail(email);
        this.setTelefone(telefone);
        this.setNota1(nota1);
        this.setNota2(nota2);
    }

    setNome(nome: string) {
        this.nome = nome;
    }

    getNome(): string
    {
        return this.nome;
    }

    setIdade(idade: number) {
        this.idade = idade;
    }

    getIdade(): number
    {
        return this.idade;
    }

    setCidade(cidade: string) {
        this.cidade = cidade;
    }

    getCidade(): string
    {
        return this.cidade;
    }

    setEmail(email: string) {
        this.email = email;
    }

    getEmail(): string
    {
        return this.email;
    }

    setTelefone(telefone: number) {
        this.telefone = telefone;
    }

    getTelefone(): number
    {
        return this.telefone;
    }

    setNota1(nota1: number) {
        this.nota1 = nota1;
    }

    getNota1(): number
    {
        return this.nota1;
    }

    setNota2(nota2: number) {
        this.nota2 = nota2;
    }

    getNota2(): number
    {
        return this.nota2;
    }

    getStatus(): string {
        if (this.getNota1() + this.getNota2() / 2 > 7) {
            return "aprovado";
        } else {
            return "reprovado";
        }
    }

    listar(): string {
        return `${listarGenerico(this)} Nota 1: ${this.getNota1()},
                Nota 2: ${this.getNota2()} e Status: ${this.getStatus()}`;
    }
};