import { filterArray } from "./filterArray";

const arrayNumber = [1, 2, 3, 4, 5];
let filtro = (elemento: number) => {
    return elemento > 3;
}
console.table(filterArray(arrayNumber, filtro));



/**
 * Interessante... esbarrei em algo típico do TS.
 */
const arrayString = ["Palavra", "Esta é uma frase longa..."];
filtro = (elemento: string) => {
    return elemento.length > 7;
}
console.table(filterArray(arrayString, filtro));