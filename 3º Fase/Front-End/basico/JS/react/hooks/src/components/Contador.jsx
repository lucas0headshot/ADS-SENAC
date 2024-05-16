import { useReducer } from "react";

const estadoInicial = { contador: 0 };

const reducer = (estado, acao) => {
    switch (acao.tipo) {
        case "incrementar":
            return { contador: estado.contador++ };
        
        case "decrementar":
            return { contador: estado.contador-- };

        case "resetar": {
            return { contador: 0 }
        }

        default:
            throw new Error('Ação não suportada');
    }
}


const Contador = () => {
    const [estado, dispatch] = useReducer(reducer, estadoInicial);

    return (
        <>
            Contagem: { estado.contador }
            <button onClick={() => dispatch({ tipo: "incrementar"})}>+</button>
            <button onClick={() => dispatch({ tipo: "decrementar"})}>-</button>
            <button onClick={() => dispatch({ tipo: "resetar"})}>CE</button>
        </>
    )
}

export default Contador;