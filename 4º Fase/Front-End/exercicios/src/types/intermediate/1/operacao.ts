export const operacao = (valor: string | number): string | number => {
    if (typeof valor === "string")
        return valor.toUpperCase();
    else
        return valor * 2;
};