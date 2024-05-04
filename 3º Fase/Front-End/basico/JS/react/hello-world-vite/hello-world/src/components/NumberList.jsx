const NumberList = ({ Numbers }) => {
    return (
        <ul>
            {Numbers.map((number, index) => {
                return <li id={index.toString()} key={index.toString()}>{number}</li>
            })}
        </ul>
    )
}



export default NumberList