import './App.css'
import BoasVindas from './components/BoasVindas'
import Contador from './components/Contador'
import Tarefas from './components/Tarefas';

function App() {
  const tarefas = [
    {
      id: 1,
      texto: '1º tarefa'
    },
    {
      id: 2,
      texto: '2º tarefa'
    },
    {
      id: 3,
      texto: '3º tarefa'
    }
  ];


  return (
    <>
      <h1>Exercícios</h1>

      <h2>Ex: 1 - Renderização condicional</h2>
      <BoasVindas name='Lucas'/>

      <h2>Ex: 2 - Contador</h2>
      <Contador/>

      <h2>Ex 3: Lista de Tarefas</h2>
      <Tarefas tarefas={tarefas}/>
    </>
  )
}

export default App