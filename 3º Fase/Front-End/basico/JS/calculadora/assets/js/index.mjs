const visor = document.getElementById('visor');



const addNoVisor = (valor) => {
    if (visor.value == 0) {
        return visor.value = valor;
    } else {
        return visor.value += valor;
    }
}


const limparVisor = () => {
    visor.style.color = 'black';
    return visor.value = 0;
}


const calcular = () => {
    try {
        const resultado = eval(visor.value);

        if (resultado < 0) {
            visor.style.color = 'red';
        }

        return visor.value = resultado;
    } catch(err) {
        console.error(err);
        visor.value = 'Erro';
        return visor.style.color = 'red';
    }
}