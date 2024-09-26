import { isNumber } from "./utils/isNumber"
import { isObject } from "./utils/isObject";
import { isString } from "./utils/isString";

export const processar = (valor: any): void => {
    if (isNumber(valor))
        console.log(`Processando: ${valor.toFixed(2)}`);

    if (isObject(valor))
        console.log(`Processando: ${Object.entries(valor)}`);

    if (isString(valor))
        console.log(`Processando: ${valor.toUpperCase()}`)
}