import { Button, Card, TextField } from '@mui/material';
import React from 'react';
import './App.css';

function App() {
  return (
    <main className="app">
        <form onSubmit={(event) => {
          event.preventDefault();

          console.info(event);
        }}>
          <Card className="card" variant="outlined">
            <TextField variant="outlined" name="name" id="name" placeholder="Digite seu nome"></TextField>

            <Button type="submit" size="medium" variant="outlined">Clique aqui</Button>
          </Card>
        </form>
    </main>
  );
}

export default App;
