import { identity } from "./identity";

console.log(identity("Isto é uma string"));
console.log(identity({sou: "um objeto"}));
console.log(identity(["Sou", "um", "array"]));
console.log(identity(1));
console.log(identity(true));