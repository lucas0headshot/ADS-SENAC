INSERT INTO
	bd_reservas.local
		(nm_local, latitude, longitude)
			VALUES
				('Imbralit', -28.67503443267157, -49.33274766134482);
                

INSERT INTO 
	bd_reservas.matricula 
		(dt_matricula)
			VALUES
				('2023-08-10');
                
                
INSERT INTO
	bd_reservas.recurso
		(nm_recurso, ds_recurso)
			VALUES
				('Parafusadeira Cromada Imbralit Mazon Assignature', 'Parafusadeira usada pelo Mazon para construir o Forno da Imbralit');
                
                
                INSERT INTO
	bd_reservas.reserva
		(id_recurso, id_local, id_usuario, id_matricula, dt_reserva)
			VALUES
				(2, 1, 2, 2, '2023-08-10');
                
                
                INSERT INTO
	bd_reservas.usuario
		(id_matricula, nm_usuario, dt_nascimento_usuario)
			VALUES
				('2', 'Raphael', '2005-05-26');