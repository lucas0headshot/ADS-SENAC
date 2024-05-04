const LoginButton = ({ loggedId }) => {
    return (
        <div>
            {loggedId ? <button>Sair</button> : <button>Entrar</button>}
        </div>
    )
}



export default LoginButton