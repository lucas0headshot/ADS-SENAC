export const callbackAssincrono = (a: number, b: number, callback: Function) => {
    const resultado = a + b;

    return setTimeout(callback(resultado), 2000);
};