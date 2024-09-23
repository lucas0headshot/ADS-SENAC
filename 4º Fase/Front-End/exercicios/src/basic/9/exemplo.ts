import { iProduto } from "../8/interface/produto";
import { mostrarProduto } from "./mostrarProduto";

const carro: iProduto = {
    nome: "Audi RS6 Avant 2024",
    preco: 1364990,
    descricao: "Carro de 'família'"
};

const smartphone: iProduto = {
    nome: "Poco X5 Pro",
    preco: 1400
};


console.log(mostrarProduto(carro));

console.log(mostrarProduto(smartphone));