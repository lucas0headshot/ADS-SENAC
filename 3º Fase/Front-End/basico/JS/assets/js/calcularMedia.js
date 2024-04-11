/**
 * @author Lucas
 * 
 * @param {array} numeros
 * 
 * @throws {Error}; 
 * 
 * @returns {number} 
 */
export function calcularMedia(numeros = []) {
    if (!numeros || numeros.length === 0) {
        throw Error('Números inválidos');
    }

    
    let soma = 0;

    for (const numero of numeros) {
        soma += numero;
    }

    return (soma / numeros.length).toFixed(2);
};