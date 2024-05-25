import { useNavigate } from "react-router-dom";
import { useState } from "react";

const Login = () => {
    const [username, setUsername] = useState('');
    const navigate = useNavigate();


    const handleChangeUsername = (e) => {
        if (e.target.value) {
            setUsername(e.target.value);
        }
    }

    const handleLogin = (e) => {
        e.preventDefault();
        console.info(`Usuário: ${username}`);
        navigate('/');
    }



    return (
        <div>
            <form onSubmit={handleLogin}>
                <input type="text" required maxLength={255} value={username} onChange={handleChangeUsername} placeholder="Digite o usuário" />

                <button type="submit">Entrar</button>
            </form>
        </div>
    )
}

export default Login