import { calcularMedia } from "./calcularMedia.js";
import { validarEmail } from "./ValidarEmail.js";



const nums1 = [1, 2, 3, 4, 5];
const media1 = calcularMedia(nums1);
console.info(`Média: ${media1}`);


const nums2 = [6, 7, 8, 9, 10];
const media2 = calcularMedia(nums2);
console.info(`Média: ${media2}`);



console.log(validarEmail('lucas.teixeira.ronchi.26@gmail.com'));
console.log(validarEmail('invalido@invalido.net'));