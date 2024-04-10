/**
 * @author Lucas
 * 
 * @param {array} numeros
 *  
 * @returns {number} 
 */
export function calcularMedia(numeros = []) {
    let soma = 0;

    for (const numero of numeros) {
        soma += numero;
    }

    if (!numeros || numeros.length === 0) {
        throw Error('Números inválidos');
    }

    return soma / numeros.length;
};