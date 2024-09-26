import { Cachorro } from "./models/cachorro";
import { Gato } from "./models/gato";

export const fazerSom = (animal: Cachorro | Gato): string => {
    if (animal instanceof Cachorro)
        return animal.latir();
    else
        return animal.miar();
}