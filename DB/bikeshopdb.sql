-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bikeshopdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bikeshopdb` ;

-- -----------------------------------------------------
-- Schema bikeshopdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bikeshopdb` DEFAULT CHARACTER SET utf8 ;
USE `bikeshopdb` ;

-- -----------------------------------------------------
-- Table `bikeshop`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bikeshop` ;

CREATE TABLE IF NOT EXISTS `bikeshop` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `brand` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS craig@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'craig'@'localhost' IDENTIFIED BY 'student';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'craig'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `bikeshop`
-- -----------------------------------------------------
START TRANSACTION;
USE `bikeshopdb`;
INSERT INTO `bikeshop` (`id`, `brand`) VALUES (1, 'Giant');

COMMIT;

