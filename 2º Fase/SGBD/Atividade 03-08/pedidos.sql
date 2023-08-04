-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pedidos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pedidos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pedidos` DEFAULT CHARACTER SET utf8 ;
USE `pedidos` ;

-- -----------------------------------------------------
-- Table `pedidos`.`representante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pedidos`.`representante` (
  `id_representante` INT(5) NOT NULL,
  `nome_representante` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_representante`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pedidos`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pedidos`.`cliente` (
  `id_cliente` INT(5) NOT NULL,
  `nome_cliente` VARCHAR(100) NOT NULL,
  `id_representante` INT NOT NULL,
  PRIMARY KEY (`id_cliente`),
  INDEX `fk_cliente_representante_idx` (`id_representante` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_representante`
    FOREIGN KEY (`id_representante`)
    REFERENCES `pedidos`.`representante` (`id_representante`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pedidos`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pedidos`.`pedido` (
  `nr_pedido` INT(5) NOT NULL,
  `id_cliente` INT(5) NOT NULL,
  `dt_pedido` DATE NOT NULL,
  `vl_pedido` DECIMAL(11,2) UNSIGNED NOT NULL,
  `ds_observacao` VARCHAR(200) NULL,
  PRIMARY KEY (`nr_pedido`),
  INDEX `fk_pedido_cliente1_idx` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_cliente1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `pedidos`.`cliente` (`id_cliente`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
