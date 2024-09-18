import { mergeObjects } from "./mergeObjects";

const objeto1 = {nome: "Sou o 1º objeto"};
const objeto2 = {segundo: "Sou o 2º objeto"};

console.table(mergeObjects(objeto1, objeto2));