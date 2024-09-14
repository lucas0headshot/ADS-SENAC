package com.lucas.JWT.usuarios.mappers;

import com.lucas.JWT.entitys.Usuarios;
import com.lucas.JWT.usuarios.domains.UsuariosRequestDom;
import com.lucas.JWT.usuarios.domains.UsuariosResponseDom;

public class UsuariosMapper {
    public static Usuarios
        usuariosRequestDomToUsuarios(UsuariosRequestDom input){
        Usuarios output = new Usuarios();
        output.setLogin(input.getLogin());
        output.setSenha(input.getSenha());

        return output;
    }

    public static UsuariosResponseDom
        usuariosToUsuariosResponseDom(Usuarios input) {
        UsuariosResponseDom output = new UsuariosResponseDom();
        output.setId(input.getId());
        output.setLogin(input.getLogin());

        return output;
    }
}
