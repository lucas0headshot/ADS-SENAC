import { useEffect, useState } from 'react';
import api from '../../services/utils/restClient';
import { Button, Dialog, DialogActions, DialogContent, DialogTitle, TextField, Typography } from '@mui/material';
import { DataGrid } from '@mui/x-data-grid';



interface iClientes {
    id: number;
    nome: string;
    sobreNome: string;
};



const Cliente: React.FC = () => {
  const [clientes, setClientes] = useState<iClientes[]>([{id: 0, nome: '', sobreNome: ''}]);

  const [nome, setNome] = useState<String>('');
  const [sobrenome, setSobrenome] = useState<String>('');
  const [clienteId, setClienteId] = useState<number>(0);

  const [openModal, setOpenModal] = useState<boolean>(false);


  const handleCloseModal = () => {
    setOpenModal(false);
    setClienteId(0);
  };

  const handleChangeNome = (event: any) => {
    setNome(event.target.value);
  };

  const handleChangeSobrenome = (event: any) => {
    setSobrenome(event.target.value);
  };


  const getClientes: any = async () => {
    api
      .get('clientes/')
        .then(
          response => {
            if (response.status === 200) {
              return setClientes(JSON.parse(response.data));
            }
          }
        )
        .catch(
          error => {
            console.error(error);
            return alert('Ocorreu um erro ao carregar Clientes');
          }
        );
  };

  const getClienteById: any = async (id: number) => {
    return await api
      .get(`clientes/${id}`)
        .then(
          response => {
            if (response.status === 200) {
              const data: iClientes = JSON.parse(response.data);
              setNome(data.nome);
              setSobrenome(data.sobreNome);
              return setClienteId(data.id);
            }

            alert('Cliente não encontrado...');
          }
        )
        .catch(
          error => {
            console.error(error);
            return alert('Ocorreu um erro ao carregar Cliente');
          }
        );
  };

  const postCliente: any = async () => {
    if (nome && sobrenome) {
      const data = JSON.stringify({
        nome: nome, 
        sobreNome: sobrenome
      });

      return await api
        .post('clientes/', data, {
            headers: {
              'Content-type': 'application/json'
            }
        })
          .then(
            response => {
              console.info(response);

              if (response.status === 201) {
                getClientes();
                handleCloseModal();
                return alert('Cliente cadastrado com sucesso!');
              }
            }
          )
          .catch(
            error => {
              console.error(error);
              return alert('Ocorreu um erro ao cadastrar Cliente');
            }
          );
    }
  };

  const putCliente: any = async (id: number) => {
    const data = JSON.stringify({
      nome: nome,
      sobreNome: sobrenome
    });

    return await api
      .put(`clientes/${id}`, data, {
        headers: {
          'Content-Type': 'application/json'
        }
      })
        .then(
          response => {
            if (response.status === 200) {
              getClientes();
              handleCloseModal();
              return alert('Cliente editado com sucesso!');
            }

            alert('Cliente não atualizado...');
          }
        )
        .catch(
          error => {
            console.error(error);
            return alert('Ocorreu um erro ao atulizar Cliente');
          }
        );
  };

  const deleteCliente = async (id: number) => {    
    if (window.confirm('Deseja realmente excluir?')) {
        return api
            .delete(`clientes/${id}`)
                .then(
                    response => {
                        if (response.status === 200) {
                            getClientes();
                            return alert('Cliente excluído com sucesso!');
                        }

                        alert('Cliente não excluído...');
                    }
                )
                .catch(
                    error => {
                        console.error(error);
                        return alert('Ocorreu um erro ao tentar excluir Cliente');
                    }
                )
    }

    return;
  };


  /*
    DataGrid
  */
    /* const columns: GridColdDef[] = [
      {
        field: 'n', headerName: 'Nº', width: 90
      },
      {

      }
    ]; */
  /*
    /DataGrid
  */

  
  useEffect(() => {
    getClientes();
  }, []);



  return (
    <div style={{display: "flex", flexDirection: "column", justifyContent: "center", alignItems: "center", gap: "1rem"}}>
        <Typography variant="h2">Clientes</Typography>

        <table>
            <thead>
                <th>Nº</th>
                <th>Nome</th>
                <th>Sobrenome</th>
                <th>Ação</th>
            </thead>
            <tbody>
                {clientes.map((cliente: iClientes, index) => {
                    index += 1;

                    return (
                    <tr>
                        <td>{index.toString()}</td>
                        <td>{cliente.nome}</td>
                        <td>{cliente.sobreNome}</td>
                        <td>
                        <Button variant="outlined" id={`btnEditarCliente-${cliente.id}`} onClick={() => {getClienteById(cliente.id)}}>Editar</Button>
                        <Button variant="outlined" id={`btnExcluirCliente-${cliente.id}`} onClick={() => {deleteCliente(cliente.id)}}>Excluir</Button>
                        </td>
                    </tr>
                    );
                })}
            </tbody>
        </table>

        <Button variant="contained" onClick={() => {setOpenModal(true)}}>Novo</Button>

        <Dialog open={openModal} onClose={handleCloseModal}>
            <DialogTitle>{clienteId > 0 ? 'Atualizar Cliente' : 'Cadastrar Cliente'}</DialogTitle>  
                
            <DialogContent>
                <form onSubmit={() => {clienteId > 0 ? putCliente(clienteId) : postCliente()}} style={{display: "flex", flexDirection: "column", gap: "0.5rem", padding: "1rem"}}>
                <TextField label="Nome" placeholder="Digite o nome" name="nome" value={nome} onChange={handleChangeNome}></TextField>
                <TextField label="Sobrenome" placeholder="Digite o sobrenome" value={sobrenome} name="sobrenome" onChange={handleChangeSobrenome}></TextField>

                <DialogActions>
                    <Button variant="contained" type="button" onClick={handleCloseModal}>Cancelar</Button>
                    <Button variant="outlined" type="submit">{clienteId > 0 ? 'Atualizar' : 'Cadastrar'}</Button>
                </DialogActions>
                </form>
            </DialogContent>
        </Dialog>
    </div>
  );
};



export default Cliente;