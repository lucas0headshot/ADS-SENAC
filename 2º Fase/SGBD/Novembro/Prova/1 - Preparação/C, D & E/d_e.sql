/*
	Cadastrar 5 currículos fictícios.
    Associar cada currículo com pelo menos 2 vagas
*/


	/*
		Currículos
    */
		INSERT INTO `curriculo` (
			`id`, 
            `nome`, 
            `email`, 
            `descricao`, 
            `status`, 
            `data_cadastro`
		) VALUES
		(NULL, 'João Silva', 'joao.silva@email.com', 'Profissional de marketing com experiência em campanhas publicitárias.', 'A', NOW()),
		(NULL, 'Maria Oliveira', 'maria.oliveira@email.com', 'Engenheira de automação com habilidades em programação PLC.', 'A', NOW()),
		(NULL, 'Carlos Santos', 'carlos.santos@email.com', 'Estudante de Marketing em busca de oportunidade para estágio.', 'A', NOW()),
		(NULL, 'Ana Souza', 'ana.souza@email.com', 'Estagiária em Automação com foco em desenvolvimento de sistemas automatizados.', 'A', NOW()),
		(NULL, 'Pedro Costa', 'pedro.costa@email.com', 'Profissional de logística com experiência em gestão de estoque.', 'A', NOW());


	/*
		Candidatar currículos a 2 vagas cada um
    */
		INSERT INTO `vaga_curriculo` (
			`id_curriculo`, 
			`id_vaga`,
			`data_hora_cadastro`
		) VALUES
		(1, 1, NOW()),
		(1, 2, NOW()),
		(2, 3, NOW()),
		(2, 1, NOW()),
		(3, 1, NOW()),
		(3, 2, NOW()),
		(4, 3, NOW()),
		(4, 1, NOW()),
		(5, 2, NOW()),
		(5, 3, NOW());