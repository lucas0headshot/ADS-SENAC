import { DataGrid, GridColDef} from '@mui/x-data-grid';
import { Box, Button, Dialog, DialogActions, DialogContent, DialogTitle, TextField } from '@mui/material';
import './App.css';
import { useState } from 'react';

function App() {
  /*
    DataGrid
  */
    const columns: GridColDef[] = [
      { field: 'id', headerName: 'ID', width: 90},

      {
        field: 'name',
        headerName: 'Nome',
        width: 150
      }
    ];

    const rows = [
      {id: 1, name: 'Lucas'},
      {id: 2, name: 'Juan'},
      {id: 3, name: 'Erick'}
    ];

    function HomeDataGrid() {
      return (
        <Box sx={{ height: 400, width: '100%' }}>
          <DataGrid
            rows = {rows}
            columns = {columns}

            initialState= {{
              pagination: {
                paginationModel: {
                  pageSize: 5,
                },
              },
            }}

            pageSizeOptions={[5]}
            checkboxSelection
            disableRowSelectionOnClick
          />
        </Box>
      );
    };
  /*
    DataGrid
  */


  /*
  
  */
  const [openCadastro, setOpenCadastro] = useState<boolean>(false);
  const [id, setId] = useState<string>();
  const [nome, setNome] = useState<string>("");
  const [row, setRow] = useState<any[]>([]);
  const closeCadastro = () => {
    setOpenCadastro(false);
  }


  return (
    <div className="App">
      <header className="App-header">
        <img src="./images/logo.png" className="App-logo" alt="logo" />

        <nav className="App-menu">
          <ul className='App-menu-list'>
            <li className='App-menu-list-item'>
              <a href="#o-senac">O Senac</a>
            </li>

            <li className='App-menu-list-item'>
              <a href="#unidades">Unidades</a>
            </li>

            <li className='App-menu-list-item'>
              <a href="#gratuidades">Gratuidades</a>
            </li>

            <li className='App-menu-list-item'>
              <a href="#educacao-a-distancia">Educação a Distância</a>
            </li>
          </ul>
        </nav>
      </header>


      <div className='App-body'>
        <div className='Body-banner'>
          <h1 className='Body-title'>Senac</h1>
          
          <p className='Body-paragraph'>
            Há sete décadas oferecendo educação profissional para transformar o Brasil.
          </p>
        </div>

        {HomeDataGrid()}

        <div>
          <Button variant="contained" onClick={() => {setOpenCadastro(true)}}>Adicionar cliente</Button>
        </div>

        <Dialog className='Modal-Client' open={openCadastro} onClose={closeCadastro}>
          <DialogTitle>Cadastro</DialogTitle>
          
          <DialogContent>
            <div>
              <TextField margin="dense" fullWidth variant="outlined" label="ID" id="id" onChange={(e) => setId(e.target.value)}>ID</TextField>
            </div>
            <div>
              <TextField margin="dense" fullWidth variant="outlined" label="Nome" id="nome" onChange={(e) => setNome(e.target.value)}>Nome</TextField>
            </div>
          </DialogContent>

          <DialogActions>
            <div>
              <Button variant="contained" onClick={() => {
                onSalvarCliente();
              }}>Salvar cliente</Button>
            </div>
          </DialogActions>
        </Dialog>
      </div>
    </div>
  );
}

export default App;