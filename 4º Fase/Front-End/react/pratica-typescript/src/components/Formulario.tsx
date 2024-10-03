import React, { useState } from "react";

const Formulario = () => {
    const [nome, setNome] = useState<string>("");

    const handleChangeNome = (e: React.ChangeEvent<HTMLInputElement>): void => {
        setNome(e.target.value);
    }

    const handleSubmit = (e: React.FormEvent<HTMLFormElement>): void => {
        e.preventDefault();
        alert(`Opa, bem-vindo ${nome}!`);
    };

    return (
        <form onSubmit={handleSubmit}>
            <input required type="text" placeholder="Digite seu nome" minLength={1} maxLength={200} onChange={handleChangeNome} />
            <button type="submit">Enviar</button>
        </form>
    );
};

export default Formulario;