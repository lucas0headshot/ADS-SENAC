import { useState } from "react"



const Form = () => {
    const [valor, setValor] = useState(0);


    const handleChangeValor = (e) => {
        setValor(e.target.value);
    }

    const handleSubmit = (e) => {
        e.preventDefault();
        console.info('Form enviado...', valor);
    }



    return (
        <form onSubmit={handleSubmit}>
            <input type="text" onChange={handleChangeValor} required value={valor} placeholder="Digite este campo"/>

            <button type="submit">Enviar</button>
        </form>
    )
}



export default Form