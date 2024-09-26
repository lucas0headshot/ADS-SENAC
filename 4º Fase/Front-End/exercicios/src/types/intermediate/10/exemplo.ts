import { callbackAssincrono } from "./callbackAssincrono";

const callback = (objeto: Object) => console.log(objeto);
callbackAssincrono(callback);