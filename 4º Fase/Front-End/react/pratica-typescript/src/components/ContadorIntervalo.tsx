import React, { useState } from "react";
import useInterval from "../hooks/UseInterval";


const ContadorIntervalo = () => {
    const [contador, setContador] = useState<number>(0);

    useInterval((): void => {
        setContador(contador + 1);
    }, 1000);

    return (
        <h4>{contador} seg</h4>
    );
};

export default ContadorIntervalo;