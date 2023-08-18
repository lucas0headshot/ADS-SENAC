function calcularSalario(e){
    let horasTrabalhadas = parseFloat(document.getElementById('horas_trabalhadas').value);
    let valorHora = parseFloat(document.getElementById('valor_hora').value);
    let desconto = parseFloat(document.getElementById('desconto').value);
    let bonus = parseFloat(document.getElementById('bonus').value);
    
    if(horasTrabalhadas < 0.00 || valorHora < 0.00 || desconto < 0.00 || bonus < 0.00){
        alert('Digite valores válidos!');
    }else{
        let salario = ((horasTrabalhadas * valorHora) + bonus) - desconto;
        isNaN(salario) ? alert("Digite valores válidos!") : alert("Salário: " + salario);
    }
}