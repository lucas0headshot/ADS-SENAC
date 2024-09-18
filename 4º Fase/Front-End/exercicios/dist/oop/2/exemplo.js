"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const pessoa_1 = require("./class/pessoa");
const lucas = new pessoa_1.Pessoa("Lucas", 19, "Criciúma");
console.info(lucas.exibirDados());
console.info(lucas.verificarIdade());
