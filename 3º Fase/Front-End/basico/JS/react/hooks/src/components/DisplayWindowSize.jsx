import useWindowSize from "../hooks/useWindowSize"

const DisplayWindowSize = () => {
    const { width, height } = useWindowSize();

    return (
        <div>
            <p>Largura da janela: { width }</p>
            <p>Altura da janela: { height }</p>
        </div>
    )
}

export default DisplayWindowSize