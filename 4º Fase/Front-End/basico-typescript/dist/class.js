class Pessoa {
    constructor(id, usuario, senha, ativo) {
        this.id = id;
        this.usuario = usuario;
        this.senha = senha;
        this.ativo = ativo;
    }
    dizerOla() {
        return `Olá, meu nome é ${this.usuario}`;
    }
}
