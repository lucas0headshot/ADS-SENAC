-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_comercial` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `bd_comercial` ;

-- -----------------------------------------------------
-- Table `bd_comercial`.`representantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_comercial`.`representantes` (
  `cd_representante` INT(11) NOT NULL,
  `nm_representante` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cd_representante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `bd_comercial`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_comercial`.`clientes` (
  `cd_cliente` INT(11) NOT NULL,
  `nm_cliente` VARCHAR(50) NOT NULL,
  `nm_cidade` VARCHAR(50) NOT NULL,
  `cd_representante` INT(11) NOT NULL,
  PRIMARY KEY (`cd_cliente`),
  INDEX `fk_cliente_representante_idx` (`cd_representante` ASC),
  CONSTRAINT `fk_cliente_representante`
    FOREIGN KEY (`cd_representante`)
    REFERENCES `bd_comercial`.`representantes` (`cd_representante`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `bd_comercial`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_comercial`.`produtos` (
  `cd_produto` INT(11) NOT NULL,
  `nm_produto` VARCHAR(100) NOT NULL,
  `id_referencia` VARCHAR(20) NOT NULL,
  `vl_unitario` DECIMAL(11,2) NOT NULL,
  `ps_unitario` DECIMAL(9,3) NOT NULL,
  `dt_cadastro` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`cd_produto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `bd_comercial`.`estoque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_comercial`.`estoque` (
  `cd_estoque` INT(11) NOT NULL AUTO_INCREMENT,
  `qt_estoque` INT(11) NOT NULL,
  `dt_movto` DATETIME NOT NULL,
  `id_movto` ENUM('E', 'S') NOT NULL,
  `cd_produto` INT(11) NOT NULL,
  PRIMARY KEY (`cd_estoque`),
  INDEX `fk_estoque_produtos1_idx` (`cd_produto` ASC),
  CONSTRAINT `fk_estoque_produtos1`
    FOREIGN KEY (`cd_produto`)
    REFERENCES `bd_comercial`.`produtos` (`cd_produto`))
ENGINE = InnoDB
AUTO_INCREMENT = 2243
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `bd_comercial`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_comercial`.`pedidos` (
  `nr_pedido` INT(11) NOT NULL,
  `cd_cliente` INT(11) NOT NULL,
  `dt_emissao` DATE NOT NULL,
  `id_situacao` SMALLINT(6) NOT NULL,
  `dt_entrega` DATE NULL DEFAULT NULL,
  `ds_observacao` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`nr_pedido`),
  INDEX `fk_cliente_pedido_idx` (`cd_cliente` ASC),
  CONSTRAINT `fk_pedido_cliente`
    FOREIGN KEY (`cd_cliente`)
    REFERENCES `bd_comercial`.`clientes` (`cd_cliente`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `bd_comercial`.`pedido_itens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_comercial`.`pedido_itens` (
  `nr_pedido` INT(11) NOT NULL,
  `cd_produto` INT(11) NOT NULL,
  `qt_produto` DECIMAL(9,2) NOT NULL,
  `vl_unitario` DECIMAL(11,2) NOT NULL,
  PRIMARY KEY (`nr_pedido`, `cd_produto`),
  INDEX `fk_produto_itens_idx` (`cd_produto` ASC),
  CONSTRAINT `fk_pedido_itens`
    FOREIGN KEY (`nr_pedido`)
    REFERENCES `bd_comercial`.`pedidos` (`nr_pedido`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_produto_itens`
    FOREIGN KEY (`cd_produto`)
    REFERENCES `bd_comercial`.`produtos` (`cd_produto`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
