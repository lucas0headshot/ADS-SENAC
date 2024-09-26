export class Carro {
    marca!: string;
    qtd_rodas!: number;

    constructor(marca: string, qtd_rodas: number) {
        this.setMarca(marca);
        this.setQtdrodas(qtd_rodas);
    }

    setMarca(marca: string): void {
        this.marca = marca;
    };

    getMarca(): string {
        return this.marca;
    }

    setQtdrodas(qtd_rodas: number): void {
        this.qtd_rodas = qtd_rodas;
    }

    getQtdrodas(): number {
        return this.qtd_rodas;
    }
}