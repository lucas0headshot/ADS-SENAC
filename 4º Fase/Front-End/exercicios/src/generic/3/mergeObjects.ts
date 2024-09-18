export const mergeObjects = <T extends object, U extends object>(objeto1: T, objeto2: U): T & U => {
    return {...objeto1, ...objeto2};
};