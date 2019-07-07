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
  `type` VARCHAR(25) NOT NULL,
  `frame_material` VARCHAR(25) NOT NULL,
  `suspension` VARCHAR(25) NULL,
  `tire_size` VARCHAR(15) NOT NULL,
  `break_type` VARCHAR(25) NOT NULL,
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
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (1, 'Giant', 'Road', 'Carbon', NULL, '700x32', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (2, 'Ghost', 'Mountain', 'Carbon', 'Rock Shocks full', '27.5x2.35', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (3, 'Heller', 'Mountain', 'Carbon', 'Bluto front', '26x4.5', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (4, 'Salsa', 'Gravel', 'Steele', NULL, '700c', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (5, 'Salsa', 'Mountain', 'Aluminum', 'Rock Shocks front', '27.5x3', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (6, 'Ghost', 'Road', 'Aluminum', NULL, '700c', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (7, 'Spot', 'Road', 'Steele', NULL, '700c', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (8, 'Marin', 'Road', 'Steele', NULL, '700c', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (9, 'KHS', 'Mountain', 'Steele', 'Manitou full', '26x1.25', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (10, 'Specialized', 'Road', 'Aluminum', NULL, '700c', 'Rim');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (11, 'Cannondale', 'Mountain', 'Aluminum', 'Lefty full', '27.5x3', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (12, 'Cervelo', 'Road', 'Carbon', NULL, '700c', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (13, 'Surley', 'Mountain', 'Steele', 'Fox Float front', '27.5x3', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (14 , 'Breezer', 'Road', 'Aluminum', NULL, '700c', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (15, 'Kona', 'Gravel', 'Steele', NULL, '29x2.5', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (16, 'Specialized', 'Road', 'Steele', NULL, '700c', 'Disc');
INSERT INTO `bikeshop` (`id`, `brand`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`) VALUES (17, 'Cannondale', 'Mountain', 'Aluminum', 'Rock Shocks full', '26x1.25', 'Disc');

COMMIT;

