import { calcularImc } from "./calcularImc";

const peso = 90;
const altura = 1.70;
console.log(`IMC de ${peso}Kg e ${altura}m: ${calcularImc(peso, altura)}`);