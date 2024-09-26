import { numberValido } from "./numberValido";
import { stringValido } from "./stringValido";

const numero = 3;
console.log(`${numero} é um number válido? ${numberValido(numero)}`);


const nome = "Lucas";
console.log(`${nome} é uma string válida? ${stringValido(nome)}`);