SELECT 
	CONCAT('INSERT INTO estoque (qt_estoque, dt_movto, id_movto, cd_produto) VALUES (100, NOW(), ''E'', ', cd_produto, ');') AS comando

FROM produtos;



SELECT 
	CONCAT('INSERT INTO estoque (qt_estoque, dt_movto, id_movto, cd_produto) VALUES (', qt_produto,', NOW(), ''S'', ', cd_produto, ');') AS comando

FROM pedido_itens;