CREATE OR REPLACE VIEW v_pedidos AS
	SELECT 
		r.cd_representante, 
        r.nm_representante,
        
		c.cd_cliente, 
        c.nm_cliente, 
        c.nm_cidade,
        
        p.nr_pedido, 
        p.dt_emissao, 
        p.dt_entrega, 
        p.vl_pedido,
        
        pi.qt_produto, 
        pi.vl_unitario, 
        pi.vl_item,
        
        pr.cd_produto, 
        pr.nm_produto, 
        pr.ps_unitario,
        
        substring_index(pr.nm_produto, ' ', 1) familia_produto
        
	FROM clientes c, 
		pedidos p, 
        pedido_itens pi, 
        produtos pr, 
        representantes r
	
    WHERE c.cd_cliente = p.cd_cliente
		AND  p.nr_pedido = pi.nr_pedido
		AND pi.cd_produto = pr.cd_produto
		AND r.cd_representante = c.cd_representante;