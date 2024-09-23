import { Resultado } from "./types/resultado";

export const processarResultado = (resultado: Resultado): string => {
    return `Resultado processado | ${resultado}`;
};