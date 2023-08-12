function calcularSalario(e){
    let horasTrabalhadas = parseInt(document.getElementById('horas_trabalhadas').value);
    let valorHora = parseInt(document.getElementById('valor_hora').value);
    let desconto = parseInt(document.getElementById('desconto').value);
    let bonus = parseInt(document.getElementById('bonus').value);
    
    if(horasTrabalhadas < 0 || valorHora < 0 || desconto < 0 || bonus < 0){
        alert('Digite valores válidos!');
    }else{
        salario = ((horasTrabalhadas * valorHora) + bonus) - desconto;
        isNaN(salario) ? alert("Digite valores válidos!") : alert("Salário: " + salario);
    }
}