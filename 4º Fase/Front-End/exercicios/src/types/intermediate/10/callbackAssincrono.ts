export const callbackAssincrono = async (callback: Function): Promise<Function> => {
    return fetch("https://jsonplaceholder.typicode.com/todos/1")
        .then(response => response.json())
        .then(json => callback(json));
};