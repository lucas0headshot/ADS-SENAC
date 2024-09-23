import { iProduto } from "./interface/produto";

const carro: iProduto = {
    nome: "Audi RS6 Avant 2024",
    preco: 1364990,
    descricao: "Carro de 'família'"
};

const smartphone: iProduto = {
    nome: "Poco X5 Pro",
    preco: 1400
};


console.table(carro);
console.table(smartphone);