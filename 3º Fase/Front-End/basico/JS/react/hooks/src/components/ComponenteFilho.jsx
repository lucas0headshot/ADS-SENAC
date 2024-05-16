import { useContext } from "react"
import { MeuContext } from "../context/MeuContext"


const ComponenteFilho = () => {
    const { msg, setMensagem } = useContext(MeuContext)

    return (
        <>
            <p>{ msg }</p>
            <button onClick={() => {setMensagem('Nova mensagem')}}>Atualizar mensagem</button>
        </>
    )
}

export default ComponenteFilho