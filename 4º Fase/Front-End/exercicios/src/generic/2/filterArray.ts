/**
 * Filta um array com base num callback.
 */
export const filterArray = <T>(array: T[], filtro: (valor: T, index: number, array: T[]) => boolean) => {
    return array.filter(filtro);
};