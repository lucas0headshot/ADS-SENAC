import { Veiculo } from "./model/veiculo";


const veiculo: Veiculo = new Veiculo("Audi", 2023, "Vermelho", 4);


console.log("É bonito?", veiculo.eh_bonito(true));
console.info("É usado?", veiculo.eh_usado());
console.info("Qual tipo?", veiculo.get_tipo());