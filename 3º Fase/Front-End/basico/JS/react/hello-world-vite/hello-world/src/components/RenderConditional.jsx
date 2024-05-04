const RenderConditional = ({ user }) => {
  return (
    <div>
        {user && <h1>Bem-vindo, {user}!</h1>}
    </div>
  )
}



export default RenderConditional