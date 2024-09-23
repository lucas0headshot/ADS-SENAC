import { iPagamento } from "./interface/pagamento";

export const realizarPagamento = (pagamento: iPagamento) => {
    return `Pagamento com ${pagamento.metodo} realizado com sucesso!`;
}