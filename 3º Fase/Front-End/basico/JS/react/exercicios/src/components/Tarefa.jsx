const Tarefa = ({body = {id, texto}}) => {
  return (
    <li data-id={body.id}>
        {body.texto}
    </li>
  )
}

export default Tarefa