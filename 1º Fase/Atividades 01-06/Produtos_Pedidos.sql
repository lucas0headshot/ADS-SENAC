-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pedido` (
  `Numero` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Data` DATETIME NOT NULL,
  `Valor_Total` DECIMAL(11,2) UNSIGNED NOT NULL,
  PRIMARY KEY (`Numero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Produto` (
  `ID_Produto` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  `Descricao` VARCHAR(200) NOT NULL,
  `Valor` DECIMAL(11,2) UNSIGNED NOT NULL,
  `Data_Cadastro` DATETIME NOT NULL,
  `Status` CHAR(1) NOT NULL,
  PRIMARY KEY (`ID_Produto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Categoria` (
  `ID_Categoria` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  `Data` DATETIME NOT NULL,
  `Produto_ID_Produto` INT NOT NULL,
  PRIMARY KEY (`ID_Categoria`),
  INDEX `fk_Categoria_Produto1_idx` (`Produto_ID_Produto` ASC) ,
  CONSTRAINT `fk_Categoria_Produto1`
    FOREIGN KEY (`Produto_ID_Produto`)
    REFERENCES `mydb`.`Produto` (`ID_Produto`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Itens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Itens` (
  `Produto_ID_Produto` INT NOT NULL,
  `Pedido_Numero` INT UNSIGNED NOT NULL,
  `Quantidade` INT UNSIGNED NOT NULL,
  `Valor_Unitario` DECIMAL(11,2) UNSIGNED NOT NULL,
  PRIMARY KEY (`Produto_ID_Produto`, `Pedido_Numero`),
  INDEX `fk_Produto_has_Pedido_Pedido1_idx` (`Pedido_Numero` ASC) ,
  INDEX `fk_Produto_has_Pedido_Produto_idx` (`Produto_ID_Produto` ASC) ,
  CONSTRAINT `fk_Produto_has_Pedido_Produto`
    FOREIGN KEY (`Produto_ID_Produto`)
    REFERENCES `mydb`.`Produto` (`ID_Produto`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Produto_has_Pedido_Pedido1`
    FOREIGN KEY (`Pedido_Numero`)
    REFERENCES `mydb`.`Pedido` (`Numero`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
