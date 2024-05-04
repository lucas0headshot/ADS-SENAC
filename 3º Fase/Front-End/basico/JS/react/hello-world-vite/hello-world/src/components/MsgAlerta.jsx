const MsgAlerta = ({ msg }) => {
    return (
        <div>
            {msg ? <div>Aviso: {msg}</div> : null}
        </div>
    )
}



export default MsgAlerta