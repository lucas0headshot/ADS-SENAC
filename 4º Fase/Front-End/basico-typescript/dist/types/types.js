//*Boolean
const valido = false;
console.warn("Válido: ", valido);
//*Number
const preco = 250.0;
console.log("Preço: ", preco);
//*Tupla
const rgb = [255, 0, 0];
console.info("Tupla:", rgb);
//*Arrays
const numeros = [1, 2, 3];
console.info("Números:", numeros);
const lucas = {
    nome: "Lucas Ronchi",
    idade: 19
};
const juan = {
    nome: "Juan",
    idade: 24
};
const rapha = {
    nome: "Raphael",
    idade: 22
};
const lucasRoque = {
    nome: "Lucas Beckhauser",
    idade: 30
};
const pessoas = [lucas, juan, rapha, lucasRoque];
console.info("Pessoas:", pessoas);
//*Enum
var Direcao;
(function (Direcao) {
    Direcao[Direcao["Cima"] = 0] = "Cima";
    Direcao[Direcao["Baixo"] = 1] = "Baixo";
    Direcao[Direcao["Direita"] = 2] = "Direita";
    Direcao[Direcao["Esquerda"] = 3] = "Esquerda";
})(Direcao || (Direcao = {}));
