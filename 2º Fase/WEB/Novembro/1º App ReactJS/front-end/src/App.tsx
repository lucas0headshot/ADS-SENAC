import React from 'react';
import logo from './logo.svg';
import './App.css';

import * as Mui from '@mui/material';


function App() {
  return (
    <div>
      <Mui.TextField id="nome" label="Digite seu nome" type="text" variant="standard"></Mui.TextField>
      <Mui.Button>Enviar</Mui.Button>
    </div>
  );
}

export default App;