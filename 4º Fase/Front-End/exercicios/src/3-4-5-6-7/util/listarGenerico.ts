import { Aluno } from "../class/aluno";
import { Professor } from "../class/professor";

export function listarGenerico<T>(objeto: Professor|Aluno): string {
    return `Nome: ${objeto.getNome()}, 
            Idade: ${objeto.getIdade()}, 
            Cidade: ${objeto.getCidade()}, 
            E-mail: ${objeto.getEmail()}, 
            Telefone: ${objeto.getTelefone()},`;
}