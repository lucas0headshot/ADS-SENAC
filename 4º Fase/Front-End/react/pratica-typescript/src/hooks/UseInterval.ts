import { useEffect, useRef } from "react";

type Function = () => void;

const useInterval = (callback: Function, delay: number) => {
    const callbackSalvo = useRef<Function>();
    
    useEffect((): void => {
        callbackSalvo.current = callback;
    }, [callback]);

    useEffect(() => {
        const tick = () => {
            callbackSalvo.current!();
        };


        if (delay)
        {
            const interval = setInterval(tick, delay);
            return () => clearInterval(interval);
        }
    }, [delay]);
};

export default useInterval;