class Pessoa implements Usuario {
    id: number;
    login: string;
    senha: string;
    ativo: boolean;


    constructor(id: number, login: string, senha: string, ativo: boolean)
    {
        this.id = id;
        this.login = login;
        this.senha = senha;
        this.ativo = ativo;
    }


    dizerOla(): string
    {
        return `Olá, meu nome é ${this.login}!`;
    }
}