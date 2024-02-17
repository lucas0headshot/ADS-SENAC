import { useEffect, useState } from 'react';
import './App.css';
import Cliente from './components/cliente/cliente';
import { Container } from '@mui/material';



function App() {
  return (
    <Container fixed>
      <main>
        <Cliente />
      </main>
    </Container>
  );
};



export default App;