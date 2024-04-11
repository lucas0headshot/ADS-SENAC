/**
 * @author Lucas
 * 
 * @param {string} email
 *  
 * @returns {boolean} 
 */
export function validarEmail(email = '') {
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    return regex.test(email);
};