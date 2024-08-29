"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Veiculo = void 0;
class Veiculo {
    constructor(marca, ano, cor, qtd_pneus) {
        this.marca = marca;
        this.ano = ano;
        this.cor = cor;
        this.qtd_pneus = qtd_pneus;
    }
    eh_usado() {
        return this.ano < 2024;
    }
    eh_bonito(bool) {
        return bool ? Beleza.bonito : Beleza.feio;
    }
    get_tipo() {
        if (this.qtd_pneus > 4)
            return TipoVeiculo.caminhao;
        if (this.qtd_pneus === 4)
            return TipoVeiculo.carro;
        if (this.qtd_pneus < 4)
            return TipoVeiculo.moto;
    }
}
exports.Veiculo = Veiculo;
;
