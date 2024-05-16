import './App.css'
import ExemploUseEffect from './components/ExemploUseEffect'
import Timer from './components/Timer'
import ValorDoMeuContexto from './components/ValorDoMeuContexto'
import { MeuContextProvider } from './context/MeuContext'
import ComponenteFilho from './components/ComponenteFilho'
import Contador from './components/Contador'

function App() {
  return (
    <>
      <ExemploUseEffect/>
      <Timer/>
      <MeuContextProvider>
        <ComponenteFilho/>
        <ValorDoMeuContexto/>
      </MeuContextProvider>
      <Contador/>
    </>
  )
}

export default App
