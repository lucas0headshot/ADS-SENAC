import { DataGrid, GridColDef} from '@mui/x-data-grid';
import { Box, Button, Dialog, DialogActions, DialogContent, DialogTitle, TextField } from '@mui/material';
import { useState } from 'react';

import './App.css';

import Header from './components/partials/header'
import { useNavigate } from 'react-router-dom';



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

    const HomeDataGrid = () => {
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

            onRowDoubleClick={(t) => {
              navigate(`/update/${t.id}`);
            }}
          />
        </Box>
      );
    };
  /*
    DataGrid
  */


  const [openCadastro, setOpenCadastro] = useState<boolean>(false);
  const [id, setId] = useState<string>();
  const [name, setName] = useState<string>("");
  const [row, setRow] = useState<any[]>([]);

  const navigate = useNavigate();

  const closeCadastro = () => {
    setOpenCadastro(false);
  }

  const onSaveClient = () => {
    const _row: any[] = [...row];
      _row.push({
      id: Number(id),
      name: name || ""
  });

    setRow(_row);
    setOpenCadastro(false);
  }


  return (
    <div className="App">
      <Header />
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
              <TextField margin="dense" fullWidth variant="outlined" label="ID" id="id" onChange={(text) => setId(text.target.value)}>ID</TextField>
            </div>
            <div>
              <TextField margin="dense" fullWidth variant="outlined" label="Nome" id="name" onChange={(text) => setName(text.target.value)}>Nome</TextField>
            </div>
          </DialogContent>

          <DialogActions>
            <div>
              <Button variant="contained" onClick={() => {
                onSaveClient();
              }}>Salvar cliente</Button>
            </div>
          </DialogActions>
        </Dialog>
      </div>
    </div>
  );
}

export default App;