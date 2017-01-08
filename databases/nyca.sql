-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema NycaTime
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema NycaTime
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `NycaTime` DEFAULT CHARACTER SET utf8 ;
USE `NycaTime` ;

-- -----------------------------------------------------
-- Table `NycaTime`.`Persons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NycaTime`.`Persons` (
  `personId` INT(11) NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `phone` INT(12) NULL,
  `userName` VARCHAR(45) NULL,
  `passwd` VARCHAR(45) NULL,
  `createdBy` INT(11) NULL,
  `createdAt` TIMESTAMP NULL,
  `updatedBy` INT(11) NULL,
  `updatedAt` TIMESTAMP NULL,
  PRIMARY KEY (`personId`),
  unique(userName))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NycaTime`.`AclRoles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NycaTime`.`AclRoles` (
  `roleId` INT(11) NOT NULL AUTO_INCREMENT,
  `roleName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`roleId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NycaTime`.`PersonsAcl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NycaTime`.`PersonsAcl` (
  `personId` INT(11) NOT NULL,
  `roleId` INT(11) NOT NULL,
  INDEX `fk_personsId1_idx` (`personId` ASC),
  INDEX `fk_roleId1_idx` (`roleId` ASC),
  CONSTRAINT `fk_personsId1`
    FOREIGN KEY (`personId`)
    REFERENCES `NycaTime`.`Persons` (`personId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_roleId1`
    FOREIGN KEY (`roleId`)
    REFERENCES `NycaTime`.`AclRoles` (`roleId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NycaTime`.`Enrollments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NycaTime`.`Enrollments` (
  `enrollmentId` INT NOT NULL AUTO_INCREMENT,
  `instructorId` INT(11) NOT NULL,
  `studentId` INT(11) NOT NULL,
  `startDate` DATE NOT NULL,
  `createdAt` TIMESTAMP NULL,
  `createdBy` INT(11) NULL,
  `updatedAt` TIMESTAMP NULL,
  `updatedBy` INT(11) NULL,
  PRIMARY KEY (`enrollmentId`),
  INDEX `fk_instructorId1_idx` (`instructorId` ASC),
  INDEX `fk_studentId1_idx` (`studentId` ASC),
  CONSTRAINT `fk_instructorId1`
    FOREIGN KEY (`instructorId`)
    REFERENCES `NycaTime`.`Persons` (`personId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_studentId1`
    FOREIGN KEY (`studentId`)
    REFERENCES `NycaTime`.`Persons` (`personId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NycaTime`.`StatusTypes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NycaTime`.`StatusTypes` (
  `statusId` INT(11) NOT NULL AUTO_INCREMENT,
  `statusName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`statusId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NycaTime`.`Times`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NycaTime`.`Times` (
  `instructorEnrollmentTimeId` INT(11) NOT NULL AUTO_INCREMENT,
  `enrollmentId` INT(11) NOT NULL,
  `sessionDate` DATE NOT NULL,
  `hours` TIME NOT NULL,
  `statusId` INT(11) NOT NULL,
  `createdBy` INT(11) NULL,
  `createdAt` TIMESTAMP NULL,
  `updatedBy` INT(11) NULL,
  `updatedAt` TIMESTAMP NULL,
  PRIMARY KEY (`instructorEnrollmentTimeId`),
  INDEX `fk_enrollmentId_idx` (`enrollmentId` ASC),
  INDEX `fk_statusId_idx` (`statusId` ASC),
  CONSTRAINT `fk_enrollmentId`
    FOREIGN KEY (`enrollmentId`)
    REFERENCES `NycaTime`.`Enrollments` (`enrollmentId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_statusId`
    FOREIGN KEY (`statusId`)
    REFERENCES `NycaTime`.`StatusTypes` (`statusId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NycaTime`.`Discussions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NycaTime`.`Discussions` (
  `instructorEnrollmentTimeId` INT(11) NOT NULL,
  `discussion` TEXT(300) NULL,
  `createdBy` INT(11) NULL,
  INDEX `fk_instructorEnrollmentTimeId_idx` (`instructorEnrollmentTimeId` ASC),
  INDEX `fk_createdBy_idx` (`createdBy` ASC),
  CONSTRAINT `fk_instructorEnrollmentTimeId`
    FOREIGN KEY (`instructorEnrollmentTimeId`)
    REFERENCES `NycaTime`.`Times` (`instructorEnrollmentTimeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_createdBy`
    FOREIGN KEY (`createdBy`)
    REFERENCES `NycaTime`.`Persons` (`personId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
