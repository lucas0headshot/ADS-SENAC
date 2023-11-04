-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_pedidos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_pedidos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_pedidos` DEFAULT CHARACTER SET utf8 ;
USE `db_pedidos` ;

-- -----------------------------------------------------
-- Table `db_pedidos`.`representantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`representantes` (
  `cd_representante` INT(5) NOT NULL,
  `nm_representante` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cd_representante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_pedidos`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`clientes` (
  `cd_cliente` INT(5) NOT NULL,
  `nm_cliente` VARCHAR(100) NOT NULL,
  `nm_cidade` VARCHAR(200) NOT NULL,
  `cd_representante` INT(11) NOT NULL,
  PRIMARY KEY (`cd_cliente`),
  INDEX `fk_cliente_idx` (`cd_representante` ASC) ,
  CONSTRAINT `fk_cliente`
    FOREIGN KEY (`cd_representante`)
    REFERENCES `db_pedidos`.`representantes` (`cd_representante`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_pedidos`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`produtos` (
  `cd_produto` INT(10) NOT NULL,
  `nm_produto` VARCHAR(200) NOT NULL,
  `id_referencia` VARCHAR(20) NOT NULL,
  `vl_unitario` DECIMAL(11,2) NOT NULL,
  `ps_unitario` DECIMAL(9,3) NOT NULL,
  `dt_cadastro` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`cd_produto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_pedidos`.`estoque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`estoque` (
  `cd_estoque` INT(10) NOT NULL AUTO_INCREMENT,
  `qt_estoque` INT(11) NOT NULL,
  `dt_movto` DATETIME NOT NULL,
  `id_movto` ENUM('E', 'S') NOT NULL,
  `cd_produto` INT(10) NOT NULL,
  PRIMARY KEY (`cd_estoque`),
  INDEX `fk_estoque1_idx` (`cd_produto` ASC) ,
  CONSTRAINT `fk_estoque1`
    FOREIGN KEY (`cd_produto`)
    REFERENCES `db_pedidos`.`produtos` (`cd_produto`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_pedidos`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`pedidos` (
  `nr_pedido` INT(11) NOT NULL AUTO_INCREMENT,
  `cd_cliente` INT(5) NOT NULL,
  `dt_emissao` DATE NOT NULL,
  `id_situacao` SMALLINT(6) NOT NULL,
  `dt_entrega` DATE NULL DEFAULT NULL,
  `ds_observacao` VARCHAR(100) NULL DEFAULT NULL,
  `vl_pedido` DECIMAL(11,2) NULL DEFAULT NULL,
  PRIMARY KEY (`nr_pedido`),
  INDEX `fk_pedido1_idx` (`cd_cliente` ASC) ,
  CONSTRAINT `fk_pedido1`
    FOREIGN KEY (`cd_cliente`)
    REFERENCES `db_pedidos`.`clientes` (`cd_cliente`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 989879
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_pedidos`.`pedido_itens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`pedido_itens` (
  `nr_pedido` INT(11) NOT NULL,
  `cd_produto` INT(10) NOT NULL,
  `qt_produto` DECIMAL(9,2) NOT NULL,
  `vl_unitario` DECIMAL(11,2) NOT NULL,
  `vl_item` DECIMAL(11,2) NULL DEFAULT NULL,
  PRIMARY KEY (`nr_pedido`, `cd_produto`),
  INDEX `fk_pedido_produto2_idx` (`cd_produto` ASC) ,
  INDEX `fk_pedido_produto1_idx` (`nr_pedido` ASC) ,
  CONSTRAINT `fk_pedido_produto1`
    FOREIGN KEY (`nr_pedido`)
    REFERENCES `db_pedidos`.`pedidos` (`nr_pedido`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pedido_produto2`
    FOREIGN KEY (`cd_produto`)
    REFERENCES `db_pedidos`.`produtos` (`cd_produto`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `db_pedidos` ;

-- -----------------------------------------------------
-- function f_soma_pedidos
-- -----------------------------------------------------

DELIMITER $$
USE `db_pedidos`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `f_soma_pedidos`(dt_inicio_intervalo DATE, dt_fim_intervalo DATE) RETURNS double
BEGIN
	DECLARE vl_total DOUBLE;
	
    SELECT
		SUM(vl_item) INTO vl_total
    FROM pedido_itens
    LEFT JOIN pedidos
		ON pedido_itens.nr_pedido = pedidos.nr_pedido
    WHERE pedidos.dt_emissao BETWEEN dt_inicio_intervalo AND dt_fim_intervalo;
    
    
    RETURN vl_total;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function f_total_itens
-- -----------------------------------------------------

DELIMITER $$
USE `db_pedidos`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `f_total_itens`(nr_pedido INT) RETURNS double
BEGIN
	DECLARE vl_total DOUBLE;
	
    SELECT
		SUM(vl_item) INTO vl_total
	FROM pedido_itens
    WHERE pedido_itens.nr_pedido = nr_pedido;

	RETURN vl_total;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function f_ultimo_pedido
-- -----------------------------------------------------

DELIMITER $$
USE `db_pedidos`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `f_ultimo_pedido`() RETURNS date
BEGIN
	DECLARE dt_ultimo_pedido DATE;
    
    SELECT
		MAX(dt_emissao) INTO dt_ultimo_pedido
	FROM pedidos;
    
    RETURN dt_ultimo_pedido;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure p_dados_pedidos
-- -----------------------------------------------------

DELIMITER $$
USE `db_pedidos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_dados_pedidos`(IN nr_pedido INT)
BEGIN
	SELECT
		pedidos.nr_pedido,
        pedidos.dt_emissao,
        
        clientes.cd_cliente,
        clientes.nm_cliente,
        
        pedidos.vl_pedido,
        pedidos.dt_entrega
        
	FROM pedidos
    LEFT JOIN clientes
		ON clientes.cd_cliente = pedidos.cd_cliente
	WHERE pedidos.nr_pedido = nr_pedido;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure p_lista_produtos
-- -----------------------------------------------------

DELIMITER $$
USE `db_pedidos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_lista_produtos`()
BEGIN
	SELECT
		*
	FROM produtos;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure p_lista_ultimo_pedido
-- -----------------------------------------------------

DELIMITER $$
USE `db_pedidos`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_lista_ultimo_pedido`(OUT nr_ultimo_pedido INT)
BEGIN
	SELECT
		MAX(nr_pedido) INTO nr_ultimo_pedido
	FROM pedidos;
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
