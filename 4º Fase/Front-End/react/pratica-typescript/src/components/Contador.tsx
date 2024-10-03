import { useContext, useEffect, useState } from "react";
import IdadeContext from "../contexts/IdadeContext";

const Contador = () => {
    const [contador, setContador] = useState<number>(0);
    const idade = useContext(IdadeContext);

    useEffect(() => {
        if (contador === idade)
            alert("Parabéns! Você atingiu a sua idade!");

        if (contador < 0)
            alert("Eita... contador ficou negativo");
    }, [contador, idade]);

    return (
        <div>
            <h2>{contador}</h2>
            
            <div>
                <button onClick={() => setContador(contador + 1)}>+</button>
                <button onClick={() => setContador(contador - 1)}>-</button>
            </div>
        </div>
    );
};

export default Contador;