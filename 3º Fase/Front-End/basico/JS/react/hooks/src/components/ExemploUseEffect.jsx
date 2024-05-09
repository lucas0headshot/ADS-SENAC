import { useEffect, useState } from "react";

const ExemploUseEffect = () => {
    const [contador, setContador] = useState(0);

    const handleClickIncrementarContador = () => {
        setContador(contador + 1);
    }

    useEffect(() => {
        document.title = `Você clicou ${contador} vezes`;
    }, [contador]);



    return (
        <div>
            <h1>Contador: {contador}</h1>
            <button onClick={handleClickIncrementarContador}>+</button>
        </div>
    )
}

export default ExemploUseEffect