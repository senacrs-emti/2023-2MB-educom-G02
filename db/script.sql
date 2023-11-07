-- MySQL Workbench Synchronization
-- Generated: 2023-11-07 10:02
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Aluno

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `enem` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `enem`.`Questionario` (
  `id` INT(11) NOT NULL,
  `Nome` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `enem`.`AreaConhecimento` (
  `id` INT(11) NOT NULL,
  `Nome` VARCHAR(90) NOT NULL,
  `foto` VARCHAR(90) NULL DEFAULT NULL,
  `Questionario_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_AreaConhecimento_Questionario_idx` (`Questionario_id` ASC) ,
  CONSTRAINT `fk_AreaConhecimento_Questionario`
    FOREIGN KEY (`Questionario_id`)
    REFERENCES `enem`.`Questionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `enem`.`Questoes` (
  `id` INT(11) NOT NULL,
  `Descricao` LONGTEXT NULL DEFAULT NULL,
  `Area` VARCHAR(90) NULL DEFAULT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Foto` VARCHAR(90) NULL DEFAULT NULL,
  `Questionario_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Questoes_Questionario1_idx` (`Questionario_id` ASC),
  CONSTRAINT `fk_Questoes_Questionario1`
    FOREIGN KEY (`Questionario_id`)
    REFERENCES `enem`.`Questionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `enem`.`Resolucoes` (
  `id` INT(11) NOT NULL,
  `correta` VARCHAR(45) NULL DEFAULT NULL,
  `descricao` LONGTEXT NULL DEFAULT NULL,
  `Questoes_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Resolucoes_Questoes1_idx` (`Questoes_id` ASC),
  CONSTRAINT `fk_Resolucoes_Questoes1`
    FOREIGN KEY (`Questoes_id`)
    REFERENCES `enem`.`Questoes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;