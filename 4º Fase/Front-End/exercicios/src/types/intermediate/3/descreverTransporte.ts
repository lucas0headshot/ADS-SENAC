import { Bicicleta } from "./models/bicicleta"
import { Carro } from "./models/carro"

export const descreverTransporte = (transporte: Carro | Bicicleta): string => {
    if ("marca" in transporte)
        return `Carro da marca: ${transporte.getMarca()}`;
    else ("tipo" in transporte)
        return `Bicicleta do tipo: ${transporte.getTipo()}`;
}