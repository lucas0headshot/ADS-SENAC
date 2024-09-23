import { iProduto } from "../8/interface/produto";

export const mostrarProduto = (produto: iProduto) => {
    if (produto?.descricao)
        return `Produto - nome: ${produto.nome}, preco: ${produto.preco}, descricao: ${produto.descricao}`;

    return `Produto - nome: ${produto.nome}, preco: ${produto.preco}`;
}