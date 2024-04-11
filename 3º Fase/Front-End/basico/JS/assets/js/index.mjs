import { calcularMedia } from "./calcularMedia.js";
import { Numeros } from "./numeros.js"; 



let numeros = [];



const inputElements = document.querySelectorAll('input');
for (const inputElement of inputElements) {
    inputElement.addEventListener('change', (e) => {
        const numero = parseInt(e.target.value);
    
        if (!numeros.includes(numero)) {
            numeros.push(numero);
        }
    
        console.table(numeros);
    });
}


document.getElementById('btnCalcularMedia').addEventListener('click', (e) => {
    e.preventDefault();

    const media = calcularMedia(numeros);

    if (media) {
        alert(`Média calculada: ${media}`);
        return location.reload();
    }

})