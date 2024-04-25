const Descricao = (Props) => {
    return (
        <div>
            <h2>Olá, {Props.nome}!</h2> <br/>
            <h3>Você tem {Props.idade} anos de idade!</h3>
        </div>
    )
};



export default Descricao;