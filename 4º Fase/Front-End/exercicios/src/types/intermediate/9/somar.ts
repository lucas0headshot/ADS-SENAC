export const somar = (a: number, b: number, callback: Function): Function => {
    return callback(a + b);
}