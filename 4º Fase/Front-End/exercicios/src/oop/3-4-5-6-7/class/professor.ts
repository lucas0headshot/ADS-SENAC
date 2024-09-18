import { iPadrao } from "../interface/iPadrao";
import { listarGenerico } from "../util/listarGenerico";

export class Professor implements iPadrao {
    nome!: string;
    idade!: number;
    cidade!: string;
    email!: string;
    telefone!: number;
    materia!: string;
    classe!: string;

    constructor(nome: string, idade: number, cidade: string, email: string, telefone: number, materia: string, classe: string) {
        this.setNome(nome);
        this.setIdade(idade);
        this.setCidade(cidade);
        this.setEmail(email);
        this.setTelefone(telefone);
        this.setMateria(materia);
        this.setClasse(classe);
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

    setMateria(materia: string) {
        this.materia = materia;
    }

    getMateria(): string
    {
        return this.materia;
    }

    setClasse(classe: string) {
        this.classe = classe;
    }

    getClasse(): string
    {
        return this.classe;
    }

    listar(): string {
        return `${listarGenerico(this)} Materia: ${this.getMateria()} e Classe: ${this.getClasse()}`;
    }
};