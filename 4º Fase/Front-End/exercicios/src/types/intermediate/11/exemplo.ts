import { multiploCallback } from "./multiploCallback";

const success: Function = () => console.info("Operação foi um sucesso");
const error: Function = () => console.error("Operação falhou");
const complete: Function = () => console.warn("Operação finalizada");
multiploCallback(success, error, complete);