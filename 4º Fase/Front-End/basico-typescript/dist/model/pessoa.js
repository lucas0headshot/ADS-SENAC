class Pessoa {
    constructor(id, login, senha, ativo) {
        this.id = id;
        this.login = login;
        this.senha = senha;
        this.ativo = ativo;
    }
    dizerOla() {
        return `Olá, meu nome é ${this.login}!`;
    }
}
