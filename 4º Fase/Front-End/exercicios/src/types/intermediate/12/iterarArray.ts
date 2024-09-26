export const iterarArray = (array: any[], callback: Function): void => {
    array.forEach(elemento => {
        callback(elemento);
    });
};