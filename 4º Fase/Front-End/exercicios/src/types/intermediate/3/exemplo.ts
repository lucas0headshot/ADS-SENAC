import { descreverTransporte } from "./descreverTransporte";
import { Bicicleta } from "./models/bicicleta";
import { Carro } from "./models/carro";

const bicicleta = new Bicicleta("urbana", 2);
console.log(descreverTransporte(bicicleta));


const carro = new Carro("Audi", 4);
console.log(descreverTransporte(carro));