const BoasVindas = ({nome}) => {
  return (
    <>
        {nome && <h3>Seja bem-vindo, {nome}!</h3>}
    </>
  )
}

export default BoasVindas