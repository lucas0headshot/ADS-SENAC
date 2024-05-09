import { useEffect } from "react";
import { useState } from "react"

const Timer = () => {
    const [segundos, setSegundos] = useState(0);

    useEffect(() => {
        const interval = setInterval(() => {
            setSegundos(segundos + 1);
        }, 1000);

        return () => {
            clearInterval(interval);
        }
    }, [segundos]);


    
    return (
        <div>Timer: {segundos}</div>
    )
}

export default Timer