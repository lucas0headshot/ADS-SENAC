import { useState } from "react"



const UserInfoForm = () => {
    const [nome, setNome] = useState('');
    const [email, setEmail] = useState('');


    const handleChangeNome = (e) => {
        setNome(e.target.value);
    }

    const handleChangeEmail = (e) => {
        setEmail(e.target.value);
    }

    const handleSubmitForm = (e) => {
        e.preventDefault();
        console.log(nome, email);
    } 



    return (
        <form onSubmit={handleSubmitForm}>
            <input required type="text" maxLength={50} minLength={3} onChange={handleChangeNome} placeholder="Digite o nome" value={nome}/>
            <input required type="email" onChange={handleChangeEmail} placeholder="Digite o e-mail" value={email}/>

            <button type="submit">Enviar</button>
        </form>
    )
}



export default UserInfoForm;