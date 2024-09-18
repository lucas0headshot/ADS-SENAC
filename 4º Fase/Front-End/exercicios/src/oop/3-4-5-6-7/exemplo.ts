import { Professor } from "./class/professor";
import { Aluno } from "./class/aluno";

const Jorge = new Professor("Jorge", 28, "Criciúma", "jorge@gmail.com", 882389293, "Desenvolvimento Front-End", "4º Fase");
console.log(Jorge.listar());


const Lucas = new Aluno("Lucas", 19, "Criciúma", "lucas@gmail.com", 28328377, 8, 9);
console.log(Lucas.listar());