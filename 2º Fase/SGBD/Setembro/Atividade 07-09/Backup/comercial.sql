-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_pedidos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_pedidos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_pedidos` DEFAULT CHARACTER SET utf8 ;
USE `db_pedidos` ;

-- -----------------------------------------------------
-- Table `db_pedidos`.`representante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`representantes` (
  `cd_representante` INT(5) NOT NULL,
  `nm_representante` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`cd_representante`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_pedidos`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`clientes` (
  `cd_cliente` INT(5) NOT NULL,
  `nm_cliente` VARCHAR(100) NOT NULL,
  `nm_cidade` VARCHAR(200) NOT NULL,
  `cd_representante` INT NOT NULL,
  PRIMARY KEY (`cd_cliente`),
  INDEX `fk_cliente_idx` (`cd_representante` ASC) ,
  CONSTRAINT `fk_cliente`
    FOREIGN KEY (`cd_representante`)
    REFERENCES `db_pedidos`.`representantes` (`cd_representante`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_pedidos`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`produtos` (
  `cd_produto` INT(10) NOT NULL,
  `nm_produto` VARCHAR(200) NOT NULL,
  `id_referencia` VARCHAR(20) NOT NULL,
  `vl_unitario` DECIMAL(11,2) NOT NULL,
  `ps_unitario` DECIMAL(9,3) NOT NULL,
  `dt_cadastro` DATE NULL,
  PRIMARY KEY (`cd_produto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_pedidos`.`estoque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`estoque` (
  `cd_estoque` INT(10) NOT NULL AUTO_INCREMENT,
  `qt_estoque` INT NOT NULL,
  `dt_movto` DATETIME NOT NULL,
  `id_movto` ENUM('E', 'S') NOT NULL,
  `cd_produto` INT(10) NOT NULL,
  PRIMARY KEY (`cd_estoque`),
  INDEX `fk_estoque1_idx` (`cd_produto` ASC) ,
  CONSTRAINT `fk_estoque1`
    FOREIGN KEY (`cd_produto`)
    REFERENCES `db_pedidos`.`produtos` (`cd_produto`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_pedidos`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`pedidos` (
  `nr_pedido` INT NOT NULL AUTO_INCREMENT,
  `cd_cliente` INT(5) NOT NULL,
  `dt_emissao` DATE NOT NULL,
  `id_situacao` SMALLINT NOT NULL,
  `dt_entrega` DATE NULL,
  `ds_observacao` VARCHAR(100) NULL,
  PRIMARY KEY (`nr_pedido`),
  INDEX `fk_pedido1_idx` (`cd_cliente` ASC) ,
  CONSTRAINT `fk_pedido1`
    FOREIGN KEY (`cd_cliente`)
    REFERENCES `db_pedidos`.`clientes` (`cd_cliente`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_pedidos`.`pedido_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pedidos`.`pedido_itens` (
  `nr_pedido` INT NOT NULL,
  `cd_produto` INT(10) NOT NULL,
  `qt_produto` DECIMAL(9,2) NOT NULL,
  `vl_unitario` DECIMAL(11,2) NOT NULL,
  PRIMARY KEY (`nr_pedido`, `cd_produto`),
  INDEX `fk_pedido_produto2_idx` (`cd_produto` ASC) ,
  INDEX `fk_pedido_produto1_idx` (`nr_pedido` ASC) ,
  CONSTRAINT `fk_pedido_produto1`
    FOREIGN KEY (`nr_pedido`)
    REFERENCES `db_pedidos`.`pedidos` (`nr_pedido`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pedido_produto2`
    FOREIGN KEY (`cd_produto`)
    REFERENCES `db_pedidos`.`produtos` (`cd_produto`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
