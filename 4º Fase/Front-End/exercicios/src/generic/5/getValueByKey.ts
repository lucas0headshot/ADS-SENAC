export const getValueByKey = <T, K extends keyof T>(objeto: T, chave: K): T[K] => {
    return objeto[chave];
}