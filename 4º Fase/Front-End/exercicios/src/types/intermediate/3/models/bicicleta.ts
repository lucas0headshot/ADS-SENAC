export class Bicicleta {
    qtd_rodas!: number;
    tipo!: string;

    constructor(tipo: string, qtd_rodas: number) {
        this.setTipo(tipo);
        this.setQtdrodas(qtd_rodas);
    }

    setQtdrodas(qtd_rodas: number): void {
        this.qtd_rodas = qtd_rodas;
    }

    getQtdrodas(): number {
        return this.qtd_rodas;
    }

    setTipo(tipo: string): void {
        this.tipo = tipo;
    }

    getTipo(): string {
        return this.tipo;
    }
}