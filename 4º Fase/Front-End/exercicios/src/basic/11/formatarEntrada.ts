export const formatarEntrada = (valor: string | number): number | string => {
    if (typeof valor === "string")
        return valor.toUpperCase();

    return valor * 2;
}