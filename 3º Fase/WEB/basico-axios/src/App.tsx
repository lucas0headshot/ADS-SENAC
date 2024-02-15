import React, { useEffect } from 'react';
import './App.css';
import api from './services/utils/restClient';



function App() {
  useEffect(() => {
  }, []);


  const getClients: any = () => {
    api
      .get("clientes/")
        .then((data: any) => {
          data.data.map((client: any) => {
            return (
              <td>{client.name}</td>
            );
          });
        })
        .catch((error: any) => {
          return console.error(error);
        });
  };



  return (
    <main>
      {getClients}
    </main>
  );
};



export default App;