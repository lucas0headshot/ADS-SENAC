import { callback } from "./callback";

const cb: Function = () => console.info(`Opa, sou um callback :)`); 
callback(cb);