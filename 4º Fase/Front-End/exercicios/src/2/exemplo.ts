import { Pessoa } from "./class/pessoa"

const lucas = new Pessoa("Lucas", 19, "Criciúma");

console.info(lucas.exibirDados());
console.info(lucas.verificarIdade());