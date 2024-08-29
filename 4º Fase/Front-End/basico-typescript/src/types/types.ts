//*Boolean
const valido: boolean = false;
console.warn("Válido: ", valido);



//*Number
const preco: number = 250.0;
console.log("Preço: ", preco);


//*Tupla
const rgb: [number, number, number] = [255, 0, 0];
console.info("Tupla:", rgb);


//*Arrays
const numeros: number[] = [1, 2, 3];
console.info("Números:", numeros);


const lucas: Pessoa = {
    nome: "Lucas Ronchi",
    idade: 19
};

const juan: Pessoa = {
    nome: "Juan",
    idade: 24
};

const rapha: Pessoa = {
    nome: "Raphael",
    idade: 22
};

const lucasRoque: Pessoa = {
    nome: "Lucas Beckhauser",
    idade: 30
};

const pessoas: Pessoa[] = [lucas, juan, rapha, lucasRoque];
console.info("Pessoas:", pessoas);



//*Enum
enum Direcao {
    Cima,
    Baixo,
    Direita,
    Esquerda
}