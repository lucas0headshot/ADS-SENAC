import { processarResultado } from "./processarResultado";
import { Resultado } from "./types/resultado";

const aprovado: Resultado = "approved";
console.log(processarResultado(aprovado));

const reprovado: Resultado = 0;
console.log(processarResultado(reprovado));