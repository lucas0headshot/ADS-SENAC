class Veiculo implements iVeiculo {
    marca: string;
    ano: number;
    cor: string;
    qtd_pneus: number;


    constructor(
        marca: string,
        ano: number,
        cor: string,
        qtd_pneus: number
    )
    {
        this.marca = marca;
        this.ano = ano;
        this.cor = cor;
        this.qtd_pneus = qtd_pneus;
    }


    eh_usado(): boolean
    {
        return this.ano < 2024;
    }


    eh_bonito(bool: boolean): Beleza
    {
        return bool ? Beleza.bonito : Beleza.feio;
    }


    get_tipo(): TipoVeiculo
    {
        if (this.qtd_pneus > 4)
            return TipoVeiculo.caminhao;

        if (this.qtd_pneus === 4)
            return TipoVeiculo.carro;
        
        if (this.qtd_pneus < 4)
            return TipoVeiculo.moto;
    }
};

export { Veiculo }