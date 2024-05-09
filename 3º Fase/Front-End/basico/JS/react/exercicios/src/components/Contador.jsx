import { useState } from "react"

const Contador = () => {
    const [contador, setContador] = useState(0);


    const handleClickIncrementarContador = () => {
        setContador(contador + 1);
    }

    const handleClickDecrementarContador = () => {
        if ((contador - 1) < 0) {
            return;
        }

        setContador(contador - 1);
    }


    return (
        <>
            <h3>Contador: {contador}</h3>
            <div>
                <button onClick={handleClickIncrementarContador}>+</button>
                <button onClick={handleClickDecrementarContador}>-</button>
            </div>
        </>
    )
}

export default Contador