import { getValueByKey } from "./getValueByKey";

const objeto = {chave: "valor"};


/**
 * Altere para qualquer outra chave e veja inferência de tipos do TS...
 */
console.log(getValueByKey(objeto, "chave"));