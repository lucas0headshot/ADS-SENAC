import { calcularImc } from "./calcularImc";

const peso: number = 90;
const altura: number = 1.70;
console.log(`IMC de ${peso}Kg e ${altura}m: ${calcularImc(peso, altura)}`);