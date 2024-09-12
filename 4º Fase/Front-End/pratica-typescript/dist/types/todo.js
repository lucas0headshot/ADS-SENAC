function atualizarTodo(todo, camposParaAtualizar) {
    return Object.assign(Object.assign({}, todo), camposParaAtualizar);
}
const programar = {
    titulo: "Programar",
    descricao: "Programar pelo menos 5 minutos",
    completo: false
};
console.info(atualizarTodo(programar, {
    completo: true
}));
