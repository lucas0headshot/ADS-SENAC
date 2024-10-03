import './App.css'

import Saudacao from './components/Saudacao';
import Contador from './components/Contador';
import { useState } from 'react';
import IdadeContext from './contexts/IdadeContext';
import Formulario from './components/Formulario';

function App() {
  const [idade] = useState<number>(19);

  return (
    <div>
      <IdadeContext.Provider value={idade}>
        <Saudacao nome="Lucas" idade={19}></Saudacao>
        
        <h3>Bora contar?</h3>
        
        <Contador></Contador>
      </IdadeContext.Provider>

      <Formulario></Formulario>
    </div>
  );
};

export default App