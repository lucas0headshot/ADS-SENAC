"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.listarGenerico = listarGenerico;
function listarGenerico(objeto) {
    return `Nome: ${objeto.getNome()}, 
            Idade: ${objeto.getIdade()}, 
            Cidade: ${objeto.getCidade()}, 
            E-mail: ${objeto.getEmail()}, 
            Telefone: ${objeto.getTelefone()},`;
}
