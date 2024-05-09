import { useState } from "react"
import Tarefa from "./Tarefa"

const Tarefas = ({tarefas = []}) => {
    const [tarefa, setTarefa] = useState('');

    const handleChandeTarefa = (e) => {
        if (e.target.value != "") {
            setTarefa(e.target.value);
        }
    }

    const handleSubmitTarefa = (e) => {
        e.preventDefault();

        if (tarefa) {
            let lastId = tarefas[tarefas.length - 1];
            document.getElementById('tarefas').append(<Tarefa body={{id: lastId++, tarefa: tarefa}}/>)
        }
    }

    const renderTarefas = 



    if (tarefas.lenght === 0) {
        return (
            <>
                <h3>Não há tarefas...</h3>
            </>
        )
    }

    return (
        <div>
            <ul id="tarefas">
                {
                    tarefas.map(tarefa => {
                        return <Tarefa body={tarefa} key={tarefa.id}/>
                    })
                }
            </ul>

            <form onSubmit={handleSubmitTarefa}>
                <input type="text" required onChange={handleChandeTarefa}/>
                <button type="submit">+</button>
            </form>
        </div>
    )
}

export default Tarefas