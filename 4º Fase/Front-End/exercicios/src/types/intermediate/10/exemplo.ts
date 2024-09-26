import { callbackAssincrono } from "./callbackAssincrono";

const callback: Function = (resultado: number) => console.log(resultado);
callbackAssincrono(1, 3, callback);