export interface iPessoa {
    nome: string;
    idade: number;
    cidade: string;

    exibirDados(): string;

    verificarIdade(): string;
};