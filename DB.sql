-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema room_management
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema room_management
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `room_management` DEFAULT CHARACTER SET utf8 ;
USE `room_management` ;

-- -----------------------------------------------------
-- Table `room_management`.`event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `room_management`.`event` (
  `eventId` INT(11) NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `description` VARCHAR(100) NULL DEFAULT NULL,
  `organiser` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`eventId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `room_management`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `room_management`.`room` (
  `roomId` INT(11) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`roomId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `room_management`.`reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `room_management`.`reservation` (
  `reservationId` INT(11) NOT NULL,
  `start` DATETIME NOT NULL,
  `end` DATETIME NOT NULL,
  `Room_roomId` INT(11) NOT NULL,
  `Event_eventId` INT(11) NOT NULL,
  PRIMARY KEY (`reservationId`),
  INDEX `fk_Reservation_Room_idx` (`Room_roomId` ASC),
  INDEX `fk_Reservation_Event1_idx` (`Event_eventId` ASC),
  CONSTRAINT `fk_Reservation_Event1`
    FOREIGN KEY (`Event_eventId`)
    REFERENCES `room_management`.`event` (`eventId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_Room`
    FOREIGN KEY (`Room_roomId`)
    REFERENCES `room_management`.`room` (`roomId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;