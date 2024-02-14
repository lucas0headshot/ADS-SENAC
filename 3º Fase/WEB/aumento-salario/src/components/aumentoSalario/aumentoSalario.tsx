import { Button, Container, InputAdornment, TextField, Card, CardActions, CardContent, Typography } from '@mui/material';
import { useState } from 'react';
import './aumentoSalario.css';



function AumentoSalario() {
  const [salario, setSalario] = useState<number>(0);
  const [porcentagemAumento, setPorcentagemAumento] = useState<number>(0);


  const handleChangeSalario = (event: any) => {
    setSalario(Number(event.target.value));
  };

  const handleChangePorcentagemAumento = (event: any) => {
    setPorcentagemAumento(Number(event.target.value));
  };


  const calcularAumento = (event: any) => {
    event.preventDefault();

    let msg = 'Aumento de salário não permitido!';

    const aumento = Number(salario * (porcentagemAumento / 100));

    if (aumento <= 2000) {
      msg = 'Aumento de salário permitido!';
    } else if (aumento >= 2000 && aumento <= 4999) {
      msg = 'Aumento de salário permitido, porém está muito próximo da faixa limite, verifique!';
    }

    alert(msg);
    alert(`Salário: ${salario} - Aumento: ${aumento}`);
  };



  return (
    <Container maxWidth="lg" className="app">
      <main>
        <Card className="card">
          <Typography variant="h5">Calcule o aumento de salário</Typography>

          <form id="formCalcularAumento" onSubmit={calcularAumento}>
            <CardContent className="card-content">
              <TextField inputProps={{
                endAdornment: <InputAdornment position="start">R$</InputAdornment>
              }} variant="outlined" required type="number" placeholder="Digite o salário" label="Salário" name="salario" id="salario" onChange={handleChangeSalario}></TextField>
              <TextField inputProps={{
                endAdornment: <InputAdornment position="start">%</InputAdornment>
              }} variant="outlined" type="number" required name="porcentagem-aumento" placeholder="Digite a % de aumento" label="Porcentual de Aumento" id="porcentagem-aumento" onChange={handleChangePorcentagemAumento}></TextField>
            </CardContent>
            
            
            <CardActions className="card-footer">
              <Button variant="contained" size="medium" color="primary" name="calcular" id="btn-calcular" type="submit">Calcular</Button>
            </CardActions>
          </form>
        </Card>
      </main>
    </Container>
  );
}



export default AumentoSalario;