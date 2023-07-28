-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema payment_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema payment_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `payment_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_esperanto_ci ;
USE `payment_db` ;

-- -----------------------------------------------------
-- Table `payment_db`.`payment_method`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `payment_db`.`payment_method` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `payment_db`.`payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `payment_db`.`payment` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Value` DECIMAL(11,2) NOT NULL,
  `payment_method_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_payment_payment_method_idx` (`payment_method_ID` ASC),
  CONSTRAINT `fk_payment_payment_method`
    FOREIGN KEY (`payment_method_ID`)
    REFERENCES `payment_db`.`payment_method` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `payment_db`.`buyer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `payment_db`.`buyer` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `payment_db`.`purchase`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `payment_db`.`purchase` (
  `payment_ID` INT NOT NULL,
  `buyer_ID` INT NOT NULL,
  PRIMARY KEY (`payment_ID`, `buyer_ID`),
  INDEX `fk_payment_has_buyer_buyer1_idx` (`buyer_ID` ASC),
  INDEX `fk_payment_has_buyer_payment1_idx` (`payment_ID` ASC),
  CONSTRAINT `fk_payment_has_buyer_payment1`
    FOREIGN KEY (`payment_ID`)
    REFERENCES `payment_db`.`payment` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_payment_has_buyer_buyer1`
    FOREIGN KEY (`buyer_ID`)
    REFERENCES `payment_db`.`buyer` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
