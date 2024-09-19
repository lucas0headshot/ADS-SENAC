export const calcularImc = (peso, altura): number => {
    const imc = peso / (altura * 2);
    return imc.toFixed(2);
};