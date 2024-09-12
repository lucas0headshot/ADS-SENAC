type Todo = {
    titulo: string,
    descricao: string,
    completo: boolean
};


function atualizarTodo(todo: Todo, camposParaAtualizar: Partial<Todo>): Todo
{
    return {...todo, ...camposParaAtualizar};
}



const programar: Todo =
{
    titulo: "Programar",
    descricao: "Programar pelo menos 5 minutos",
    completo: false
};

console.info(atualizarTodo(programar, {
    completo: true
}));