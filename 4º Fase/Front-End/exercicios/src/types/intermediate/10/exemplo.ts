import { callbackAssincrono } from "./callbackAssincrono";

const callback: Function = (objeto: Object) => console.log(objeto);
callbackAssincrono(callback);