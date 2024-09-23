/*
    Burrice...
*/
const arrayAny: any[] = [];

arrayAny.push(1);
console.table(arrayAny);


arrayAny.push("Agora uma string...");
console.table(arrayAny);

arrayAny.push(true);
console.table(arrayAny);

arrayAny.push({um: "objeto?"});
console.table(arrayAny);

arrayAny.push(["Agora virou palhaçada", "..."]);
console.table(arrayAny);