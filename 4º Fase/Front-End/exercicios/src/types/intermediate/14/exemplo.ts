import { consultarAPI } from "./consultarAPI";

const id = Math.floor(Math.random() * 5);
const callback: Function = (resposta: object) => console.info(resposta);
consultarAPI(id, callback);