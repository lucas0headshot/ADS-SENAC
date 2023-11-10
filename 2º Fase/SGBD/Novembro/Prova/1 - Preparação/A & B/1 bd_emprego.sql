-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bd_emprego
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_emprego
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_emprego` DEFAULT CHARACTER SET utf8 ;
USE `bd_emprego` ;

-- -----------------------------------------------------
-- Table `bd_emprego`.`cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_emprego`.`cidade` (
  `id` INT NOT NULL,
  `nome` VARCHAR(150) NOT NULL,
  `uf` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_emprego`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_emprego`.`empresa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `id_cidade` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) ,
  INDEX `fk_empresa_cidade1_idx` (`id_cidade` ASC) ,
  CONSTRAINT `fk_empresa_cidade1`
    FOREIGN KEY (`id_cidade`)
    REFERENCES `bd_emprego`.`cidade` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_emprego`.`curriculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_emprego`.`curriculo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(250) NOT NULL,
  `status` ENUM('A', 'I') NOT NULL COMMENT 'Ativo, Inativo',
  `data_cadastro` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_emprego`.`area_atuacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_emprego`.`area_atuacao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_emprego`.`vaga`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_emprego`.`vaga` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NOT NULL,
  `descricao` VARCHAR(250) NOT NULL,
  `data_cadastro` DATETIME NOT NULL,
  `qtde` INT(3) NOT NULL,
  `status` ENUM('R', 'S', 'C') NULL COMMENT 'Recrutamento, Seleção, Concluída',
  `valor_salario_inicial` DECIMAL(11,2) NULL,
  `valor_salario_final` DECIMAL(11,2) NULL,
  `id_empresa` INT NOT NULL,
  `id_area_atuacao` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_vaga_empresa_idx` (`id_empresa` ASC) ,
  INDEX `fk_vaga_area_atuacao1_idx` (`id_area_atuacao` ASC) ,
  CONSTRAINT `fk_vaga_empresa`
    FOREIGN KEY (`id_empresa`)
    REFERENCES `bd_emprego`.`empresa` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_vaga_area_atuacao1`
    FOREIGN KEY (`id_area_atuacao`)
    REFERENCES `bd_emprego`.`area_atuacao` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_emprego`.`vaga_curriculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_emprego`.`vaga_curriculo` (
  `id_vaga` INT NOT NULL,
  `id_curriculo` INT NOT NULL,
  `data_cadastro` DATETIME NOT NULL,
  PRIMARY KEY (`id_vaga`, `id_curriculo`),
  INDEX `fk_vaga_has_curriculo_curriculo1_idx` (`id_curriculo` ASC) ,
  INDEX `fk_vaga_has_curriculo_vaga1_idx` (`id_vaga` ASC) ,
  CONSTRAINT `fk_vaga_has_curriculo_vaga1`
    FOREIGN KEY (`id_vaga`)
    REFERENCES `bd_emprego`.`vaga` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_vaga_has_curriculo_curriculo1`
    FOREIGN KEY (`id_curriculo`)
    REFERENCES `bd_emprego`.`curriculo` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
