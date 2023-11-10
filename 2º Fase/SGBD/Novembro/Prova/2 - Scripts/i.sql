/*
	Alterar o status das vagas da empresa 1 para ‘C’ (concluída).
*/
	UPDATE vaga
    
    SET status = 'C'
    
    WHERE id_empresa = 1;