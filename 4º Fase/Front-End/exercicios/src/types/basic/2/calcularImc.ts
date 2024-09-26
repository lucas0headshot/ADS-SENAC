export const calcularImc = (peso: number, altura: number): number => {
    const imc = peso / (altura * 2);
    return Number(imc.toFixed(2));
};