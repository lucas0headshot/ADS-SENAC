export const tupleToArray = <T extends any[]>(tupla: T): Array<T> => {
    return [...tupla];
}