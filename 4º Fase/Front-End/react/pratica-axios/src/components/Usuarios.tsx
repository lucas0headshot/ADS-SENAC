import { useEffect, useState } from "react";
import { Usuario } from "../type/usuario";
import axios from "axios";

const Usuarios = () => {
    const [usuarios, setUsuarios] = useState<Usuario[]>([]);
    const [carregando, setCarregando] = useState<boolean>(false);
    const [erro, setErro] = useState<string>("");
    const [filtro, setFiltro] = useState<string>("");

    useEffect((): void => {
        const carregarUsuarios = async () => {
            setCarregando(true);

            try {
                const resposta = (await axios.get<Usuario[]>("https://jsonplaceholder.typicode.com/users")).data;
                setUsuarios(resposta);
            } catch (error: unknown) {
                if (axios.isAxiosError(error)) {
                    setErro(error.message);
                } else {
                    setErro("Ocorreu um erro desconhecido");
                }
            } finally {
                setCarregando(false);
            }
        };

        carregarUsuarios();
    }, []);

    const usuariosFiltrados = usuarios.filter(usuario => {
        return usuario.name.includes(filtro) || usuario.email.includes(filtro) || usuario.username.includes(filtro);
    });

    return (  
        erro ?
            <h1>Eita... {erro}</h1>
            :
            carregando ?
                <h1>Carregando...</h1>
                :
                (
                    <div>
                        <div>
                            <label>Filtrar por:</label>
                            <input type="text" placeholder="Digite o filtro" onChange={(e) => setFiltro(e.target.value)} value={filtro} />
                        </div>
                        
                        {usuariosFiltrados.map((usuario: Usuario) => {
                            return (
                                <div key={usuario.id}>
                                    <h1>{usuario.name}</h1>
                                    <h2>{usuario.email}</h2>
                                </div>
                            );
                        })}
                    </div>
                )
    );
};

export default Usuarios;