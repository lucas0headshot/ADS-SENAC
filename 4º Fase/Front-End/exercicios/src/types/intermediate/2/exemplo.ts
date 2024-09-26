import { fazerSom } from "./fazerSom";
import { Cachorro } from "./models/cachorro";
import { Gato } from "./models/gato";


const cachorro = new Cachorro();
console.log(`Cachorro faz ... ${fazerSom(cachorro)}`);


const gato = new Gato();
console.log(`Gato faz ... ${fazerSom(gato)}`);