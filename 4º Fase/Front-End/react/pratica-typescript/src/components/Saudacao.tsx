type SaudacaoProps = {
    nome: string;
    sobrenome?: string;
    idade: number;
};

const Saudacao  = (props: SaudacaoProps) => {
    return (
        <div>
            <h1>Olá, {props.nome} {props.sobrenome}!</h1>
            <h2>Você tem {props.idade} anos...</h2>
        </div>
    );
};

export default Saudacao;