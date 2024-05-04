import FilhoFunction from "./FilhoFunction";



const PaiFunction = () => {
    const handleChildClick = (e) => {
        console.info('Clicou no children', e);
    }



    return (
        <div>
            <button onClick={handleChildClick}>Pai Function</button>
            <FilhoFunction onChildClick={handleChildClick}/>
        </div>
    )
}



export default PaiFunction