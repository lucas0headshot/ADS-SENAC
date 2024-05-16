import { useContext } from 'react'
import MeuContext from '../context/MeuContext'

const ValorDoContexto = () => {
    const {mensagem } = useContext(MeuContext);

    return (
        <div>o valor do contexto é: {mensagem}</div>
    )
}

export default ValorDoContexto