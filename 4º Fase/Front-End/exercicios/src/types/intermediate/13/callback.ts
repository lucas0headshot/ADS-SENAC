export const callback = (callback: Function): Function => {
    console.warn("Executando callback...");
    return callback();
};;