import { useEffect, useState } from 'react';
import './App.css';
import api from './services/utils/restClient';
import { iClientes } from './const';
import { Button, Dialog, DialogActions, DialogContent, DialogTitle, TextField } from '@mui/material';



function App() {
  const [clientes, setClientes] = useState<iClientes[]>([]);

  const [nome, setNome] = useState<String>('');
  const [sobrenome, setSobrenome] = useState<String>('');
  const [openModalCadastro, setOpenModalCadastro] = useState<boolean>(false);
  const [openModalAtualizar, setOpenModalAtualizar] = useState<boolean>(false);


  const handleCloseModalCadastro = () => {
    setOpenModalCadastro(false);
  };

  const handleCloseModalAtualizar = () => {
    setOpenModalAtualizar(true);
  };

  const handleSubmitCliente = (event: any) => {
    event.preventDefault();

    if (nome && sobrenome) {
      const data = JSON.stringify({
        nome: nome, 
        sobreNome: sobrenome
      });

      api
        .post('clientes/', data, {
            headers: {
              'Content-type': 'application/json'
            }
        })
          .then(
            response => {
              console.info(response);

              if (response.status === 201) {
                alert('Cliente cadastrado com sucesso!');
              }
            }
          )
          .catch(
            error => {
              console.error(error);
            }
          );
    }
  };

  const handleChangeNome = (event: any) => {
    setNome(event.target.value);
  };

  const handleChangeSobrenome = (event: any) => {
    setSobrenome(event.target.value);
  }


  useEffect(() => {
    api
      .get('clientes/')
        .then(
          response => {
            if (response.status === 200) {
              setClientes(JSON.parse(response.data));
            }
          }
        );
  }, []);



  return (
    <main>
      <table>
        <thead>
          <th>ID</th>
          <th>Nome</th>
          <th>Sobrenome</th>
        </thead>
        <tbody>
          {/* {clientes.map((cliente: iClientes) => (
              <tr>
                {Object.entries(cliente).map((prop) => {
                    <td>{prop}</td>
                  })}
              </tr>
            )
          )} */}
        </tbody>
      </table>

      <Button onClick={() => {setOpenModalCadastro(true)}}>Abrir</Button>
      <Button onClick={() => {setOpenModalAtualizar(true)}}>Atualizar</Button>

      <Dialog open={openModalCadastro} onClose={handleCloseModalCadastro}>
        <DialogTitle>Cadastrar cliente</DialogTitle>  
          
        <DialogContent>
          <form onSubmit={handleSubmitCliente} style={{display: "flex", flexDirection: "column", gap: "0.5rem", padding: "1rem"}}>
            <TextField label="Nome" placeholder="Digite o nome" name="nome" onChange={handleChangeNome}></TextField>
            <TextField label="Sobrenome" placeholder="Digite o sobrenome" name="sobrenome" onChange={handleChangeSobrenome}></TextField>

            <DialogActions>
                <Button variant="contained" type="button" onClick={handleCloseModalCadastro}>Cancelar</Button>
                <Button variant="outlined" type="submit">Cadastrar</Button>
            </DialogActions>
          </form>
        </DialogContent>
      </Dialog>


      <Dialog open={openModalCadastro} onClose={handleCloseModalAtualizar}>
        <DialogTitle>Cadastrar cliente</DialogTitle>  
          
        <DialogContent>
          <form onSubmit={handleSubmitCliente} style={{display: "flex", flexDirection: "column", gap: "0.5rem", padding: "1rem"}}>
            <TextField label="Nome" placeholder="Digite o nome" name="nome" onChange={handleChangeNome}></TextField>
            <TextField label="Sobrenome" placeholder="Digite o sobrenome" name="sobrenome" onChange={handleChangeSobrenome}></TextField>

            <DialogActions>
                <Button variant="contained" type="button" onClick={handleCloseModalCadastro}>Cancelar</Button>
                <Button variant="outlined" type="submit">Atualizar</Button>
            </DialogActions>
          </form>
        </DialogContent>
      </Dialog>
    </main>
  );
};



export default App;