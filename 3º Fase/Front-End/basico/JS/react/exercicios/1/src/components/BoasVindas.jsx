const BoasVindas = ({nome}) => {
  return (
    <>
        {nome ? <div>Seja bem-vindo, {nome}!</div> : null}
    </>
  )
}

export default BoasVindas