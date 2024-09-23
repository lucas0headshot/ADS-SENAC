import { somarAnonima } from "./somar_anonima";
import { somarArrow } from "./somar_arrow";
import { somarFunction } from "./somar_function";

console.log(`Anonymous | 1 + 3 = ${somarAnonima(1, 3)}`);

console.log(`Arrow Function | 1 + 3 = ${somarArrow(1, 3)}`);

console.log(`Function | 1 + 3 = ${somarFunction(1, 3)}`);