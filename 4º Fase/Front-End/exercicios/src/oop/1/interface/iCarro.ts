export interface iCarro {
    modelo: string;
    ano: number;
    qtd_rodas: number;
    cor: string;

    exibirDados(): string;
};