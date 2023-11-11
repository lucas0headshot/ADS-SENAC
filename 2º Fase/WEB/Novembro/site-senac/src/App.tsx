import * as React from 'react';
import { DataGrid, GridColDef, GridValueGetterParams } from '@mui/x-data-grid';
import { Box } from '@mui/material';
import './App.css';

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

    function DataGrid() {
      return (
        <Box sx={{ height: 400, width: '100%' }}>
          <DataGrid>
            rows = {rows}
            columns = {columns}
            
            initialState = {{
              pagination: {
                paginationModel: {
                  pageSize: 5,
                },
              },
            }}

            pageSizeOptions = {[5]}
          </>
        </Box>
      );
    }
  /*
    DataGrid
  */


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

        DataGrid();
      </div>
    </div>
  );
}

export default App;