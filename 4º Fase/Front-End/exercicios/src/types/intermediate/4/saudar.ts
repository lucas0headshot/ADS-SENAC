export const saudar = (nome: string | null): string | void => {
    if (nome)
        return `Olá, ${nome}!`; 
}