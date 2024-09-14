package com.lucas.JWT;

import com.lucas.JWT.usuarios.UsuariosService;
import com.lucas.JWT.usuarios.domains.UsuariosRequestDom;
import com.lucas.JWT.usuarios.domains.UsuariosResponseDom;
import com.lucas.JWT.usuarios.repositorys.UsuariosRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("test")
@ExtendWith(MockitoExtension.class)
class JwtApplicationTests {
	@Mock
	UsuariosRepository repository;

	@InjectMocks
	UsuariosService service;

	@Test
	@DisplayName("Teste pra cadastrar um usuário")
	void testeCriarUsuario() {
		UsuariosRequestDom usuarioPersist = new UsuariosRequestDom();

		usuarioPersist.setLogin("lucas");
		usuarioPersist.setSenha("1234");

		UsuariosResponseDom usuarioResult = service.criarUsuario(usuarioPersist);


	}
}
