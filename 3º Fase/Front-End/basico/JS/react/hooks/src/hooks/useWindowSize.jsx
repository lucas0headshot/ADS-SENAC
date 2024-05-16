import { useEffect, useState } from "react"

const useWindowSize = () => {
    const [windowSize, setWindowSize] = useState({
        with: window.innerWidth,
        height: window.innerHeight
    });

    useEffect(() => {
        const handleSize = () => {
            setWindowSize({
                with: window.innerWidth,
                height: window.innerHeight
            })
        };
        
        window.addEventListener('resize', handleSize());
        handleSize();

        return () => {
            window.removeEventListener('resize', handleSize());
        }
    }, []);

    return windowSize;
}

export default useWindowSize