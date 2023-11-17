DELIMITER $
CREATE TRIGGER tgr_estoque_01 AFTER INSERT ON pedido_itens
	FOR EACH ROW
		BEGIN
			INSERT INTO estoque (qt_estoque, dt_movto, id_movto, cd_produto) VALUES (NEW.qt_produto, NOW(), 'S', NEW.cd_produto);
		END $
DELIMITER ;