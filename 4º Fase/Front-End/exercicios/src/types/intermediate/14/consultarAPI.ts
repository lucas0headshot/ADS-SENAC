export const consultarAPI = async (id: number, callback: Function): Promise<Function> => {
    return fetch(`https://jsonplaceholder.typicode.com/todos/${id}`)
        .then(response => response.json())
        .then(json => callback(json));
};