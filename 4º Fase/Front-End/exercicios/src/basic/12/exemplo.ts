import { iPagamento } from "./interface/pagamento";
import { realizarPagamento } from "./realizarPagamento";

const pagamentoComCartao: iPagamento = {
    valor: 100,
    metodo: "cartao"
};

console.log(realizarPagamento(pagamentoComCartao));


const pagamentoComBoleto: iPagamento = {
    valor: 200,
    metodo: "boleto"
};

console.log(realizarPagamento(pagamentoComBoleto));