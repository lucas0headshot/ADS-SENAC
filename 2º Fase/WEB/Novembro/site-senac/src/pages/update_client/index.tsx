import { Button, TextField } from "@mui/material";

import './index.css';

import Header from "../../components/partials/header";
import { useParams } from "react-router-dom";
import { useEffect } from "react";



function UpdateClient() {
    const { id } = useParams();

    useEffect(() => {
        alert(`Parametro recebido: ${id}`)
    }, []);


    return (
        <div className="App">
            <Header />

            <div className='App-body'>
                <div className="Body-box">
                    <div className="Box-input">
                        <TextField margin="dense" fullWidth variant="outlined" label="ID"></TextField>
                    </div>

                    <div className="Box-input">
                        <TextField margin="dense" fullWidth variant="outlined" label="Nome"></TextField>
                    </div>

                    <div className="Box-input">
                        <Button fullWidth variant="contained" color="success">Atualizar</Button>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default UpdateClient;