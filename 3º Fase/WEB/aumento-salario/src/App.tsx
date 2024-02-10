import { Button, Container, InputAdornment, TextField, Card, CardActions, CardContent, Typography } from '@mui/material';
import { useState } from 'react';
import './App.css';



function App() {
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

    let msg;

    const aumento = Number(salario * (porcentagemAumento / 100));

    if (aumento <= 2000) {
      msg = 'Aumento de salário permitido';
    }


    alert(msg);
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



export default App;