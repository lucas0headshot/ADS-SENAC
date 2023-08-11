-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bd_reservas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_reservas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_reservas` DEFAULT CHARACTER SET utf8 ;
USE `bd_reservas` ;

-- -----------------------------------------------------
-- Table `bd_reservas`.`matricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_reservas`.`matricula` (
  `id_matricula` INT(5) NOT NULL AUTO_INCREMENT,
  `dt_matricula` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id_matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_reservas`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_reservas`.`usuario` (
  `id_usuario` INT(5) NOT NULL AUTO_INCREMENT,
  `id_matricula` INT(5) NOT NULL,
  `nm_usuario` VARCHAR(100) NOT NULL,
  `dt_nascimento_usuario` DATE NOT NULL,
  PRIMARY KEY (`id_usuario`, `id_matricula`),
  INDEX `fk_usuario_matricula_idx` (`id_matricula` ASC),
  CONSTRAINT `fk_usuario_matricula`
    FOREIGN KEY (`id_matricula`)
    REFERENCES `bd_reservas`.`matricula` (`id_matricula`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_reservas`.`recurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_reservas`.`recurso` (
  `id_recurso` INT NOT NULL AUTO_INCREMENT,
  `nm_recurso` VARCHAR(100) NOT NULL,
  `ds_recurso` VARCHAR(200) NULL,
  PRIMARY KEY (`id_recurso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_reservas`.`local`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_reservas`.`local` (
  `id_local` INT NOT NULL AUTO_INCREMENT,
  `nm_local` VARCHAR(200) NOT NULL,
  `latitude` DECIMAL(10,8) NOT NULL,
  `longitude` DECIMAL(11,8) NOT NULL,
  PRIMARY KEY (`id_local`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_reservas`.`reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_reservas`.`reserva` (
  `id_reserva` INT NOT NULL AUTO_INCREMENT,
  `id_recurso` INT NOT NULL,
  `id_local` INT NOT NULL,
  `id_usuario` INT(5) NOT NULL,
  `id_matricula` INT(5) NOT NULL,
  `dt_reserva` DATETIME NOT NULL,
  `ds_reserva` VARCHAR(500) NULL,
  PRIMARY KEY (`id_reserva`),
  INDEX `fk_reserva_usuario1_idx` (`id_usuario` ASC, `id_matricula` ASC),
  INDEX `fk_reserva_recurso1_idx` (`id_recurso` ASC),
  INDEX `fk_reserva_local1_idx` (`id_local` ASC),
  CONSTRAINT `fk_reserva_usuario1`
    FOREIGN KEY (`id_usuario` , `id_matricula`)
    REFERENCES `bd_reservas`.`usuario` (`id_usuario` , `id_matricula`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_reserva_recurso1`
    FOREIGN KEY (`id_recurso`)
    REFERENCES `bd_reservas`.`recurso` (`id_recurso`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_reserva_local1`
    FOREIGN KEY (`id_local`)
    REFERENCES `bd_reservas`.`local` (`id_local`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
