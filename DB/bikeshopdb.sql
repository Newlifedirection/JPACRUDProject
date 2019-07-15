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
-- Table `address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `address` ;

CREATE TABLE IF NOT EXISTS `address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `street` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `zip` VARCHAR(10) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `brand`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `brand` ;

CREATE TABLE IF NOT EXISTS `brand` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `phone` VARCHAR(10) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bikeshop`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bikeshop` ;

CREATE TABLE IF NOT EXISTS `bikeshop` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(25) NOT NULL,
  `frame_material` VARCHAR(25) NULL,
  `suspension` VARCHAR(25) NULL,
  `tire_size` VARCHAR(15) NULL,
  `break_type` VARCHAR(25) NULL,
  `address_id` INT NULL,
  `brand_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_bikeshop_address1_idx` (`address_id` ASC),
  INDEX `fk_bikeshop_brand1_idx` (`brand_id` ASC),
  CONSTRAINT `fk_bikeshop_address1`
    FOREIGN KEY (`address_id`)
    REFERENCES `address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_bikeshop_brand1`
    FOREIGN KEY (`brand_id`)
    REFERENCES `brand` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
-- Data for table `address`
-- -----------------------------------------------------
START TRANSACTION;
USE `bikeshopdb`;
INSERT INTO `address` (`id`, `street`, `city`, `state`, `zip`) VALUES (1, '150 W Colorado Ave', 'Telluride', 'CO', '81435');

COMMIT;


-- -----------------------------------------------------
-- Data for table `brand`
-- -----------------------------------------------------
START TRANSACTION;
USE `bikeshopdb`;
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (1, 'Giant', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (2, 'Heller', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (3, 'Salsa', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (4, 'Specialized', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (5, 'Spot', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (6, 'KHS', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (7, 'Ghost', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (8, 'Cannondale', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (9, 'Cerevello', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (10, 'Surley', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (11, 'Trek', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (12, 'Konah', '7191234567');
INSERT INTO `brand` (`id`, `name`, `phone`) VALUES (13, 'Soma', '7191234567');

COMMIT;


-- -----------------------------------------------------
-- Data for table `bikeshop`
-- -----------------------------------------------------
START TRANSACTION;
USE `bikeshopdb`;
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (1, 'Road', 'Carbon', NULL, '700x32', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (2, 'Mountain', 'Carbon', 'Rock Shocks full', '27.5x2.35', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (3, 'Mountain', 'Carbon', 'Bluto front', '26x4.5', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (4, 'Gravel', 'Steele', NULL, '700c', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (5, 'Mountain', 'Aluminum', 'Rock Shocks front', '27.5x3', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (6, 'Road', 'Aluminum', NULL, '700c', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (7, 'Road', 'Steele', NULL, '700c', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (8, 'Road', 'Steele', NULL, '700c', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (9, 'Mountain', 'Steele', 'Manitou full', '26x1.25', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (10, 'Road', 'Aluminum', NULL, '700c', 'Rim', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (11, 'Mountain', 'Aluminum', 'Lefty full', '27.5x3', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (12, 'Road', 'Carbon', NULL, '700c', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (13, 'Mountain', 'Steele', 'Fox Float front', '27.5x3', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (14 , 'Road', 'Aluminum', NULL, '700c', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (15, 'Gravel', 'Steele', NULL, '29x2.5', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (16, 'Road', 'Steele', NULL, '700c', 'Disc', 1, 1);
INSERT INTO `bikeshop` (`id`, `type`, `frame_material`, `suspension`, `tire_size`, `break_type`, `address_id`, `brand_id`) VALUES (17, 'Mountain', 'Aluminum', 'Rock Shocks full', '26x1.25', 'Disc', 1, 1);

COMMIT;

