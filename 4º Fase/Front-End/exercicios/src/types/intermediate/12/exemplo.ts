import { iterarArray } from "./iterarArray";

const array: number[] = [1, 2, 3, 4, 5, 6];
const callback: Function = (num: number) => {
    console.log(`${num} > 3 ? ${num > 3}`);
};

iterarArray(array, callback);