import { somar } from "./somar";

const callback = (resultado: number) => console.log(resultado);
somar(1, 3, callback);