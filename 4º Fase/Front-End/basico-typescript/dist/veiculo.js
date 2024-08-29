"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const veiculo_1 = require("./model/veiculo");
const veiculo = new veiculo_1.Veiculo("Audi", 2023, "Vermelho", 4);
console.log("É bonito?", veiculo.eh_bonito(true));
console.info("É usado?", veiculo.eh_usado());
console.info("Qual tipo?", veiculo.get_tipo());
