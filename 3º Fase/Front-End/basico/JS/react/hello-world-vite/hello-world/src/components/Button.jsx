const Button = () => {
    const handleClick = (num) => {
        console.info('Clicou..', num);
    }

    

    return (
        <div>
            <button onClick={handleClick}>Clique-me</button>
            <button onClick={() => {handleClick(7)}}>Não, clique em mim!</button>
        </div>
    )
}



export default Button;