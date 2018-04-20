-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema games
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `games` ;

-- -----------------------------------------------------
-- Schema games
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `games` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema system
-- -----------------------------------------------------
-- This schema was created for a stub table
DROP SCHEMA IF EXISTS `system` ;

-- -----------------------------------------------------
-- Schema system
--
-- This schema was created for a stub table
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `system` ;
-- -----------------------------------------------------
-- Schema maker
-- -----------------------------------------------------
-- This schema was created for a stub table
DROP SCHEMA IF EXISTS `maker` ;

-- -----------------------------------------------------
-- Schema maker
--
-- This schema was created for a stub table
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `maker` ;
USE `games` ;

-- -----------------------------------------------------
-- Table `maker`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `maker` ;

CREATE TABLE IF NOT EXISTS `maker` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `logo` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `game`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `game` ;

CREATE TABLE IF NOT EXISTS `game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `maker_id` INT NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `description` VARCHAR(500) NULL,
  `release_year` INT NULL,
  `video` VARCHAR(1000) NULL,
  `picture` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_game_maker_id_maker_id_idx` (`maker_id` ASC),
  CONSTRAINT `fk_game_maker_id_maker_id`
    FOREIGN KEY (`maker_id`)
    REFERENCES `maker` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `system`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `system` ;

CREATE TABLE IF NOT EXISTS `system` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `maker_id` INT NOT NULL,
  `abbreviation` VARCHAR(25) NULL,
  `picture` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_system_maker_id_maker_id_idx` (`maker_id` ASC),
  CONSTRAINT `fk_system_maker_id_maker_id`
    FOREIGN KEY (`maker_id`)
    REFERENCES `maker` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `game_system`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `game_system` ;

CREATE TABLE IF NOT EXISTS `game_system` (
  `game_id` INT NOT NULL,
  `system_id` INT NOT NULL,
  INDEX `fk_game_system_game_id_game_id_idx` (`game_id` ASC),
  INDEX `fk_game_system_system_id_system_id_idx` (`system_id` ASC),
  CONSTRAINT `fk_game_system_game_id_game_id`
    FOREIGN KEY (`game_id`)
    REFERENCES `game` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game_system_system_id_system_id`
    FOREIGN KEY (`system_id`)
    REFERENCES `system` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `system` ;
USE `maker` ;
SET SQL_MODE = '';
GRANT USAGE ON *.* TO gamesuser@localhost;
 DROP USER gamesuser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'gamesuser'@'localhost' IDENTIFIED BY 'gamesuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'gamesuser'@'localhost';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'gamesuser'@'localhost';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'gamesuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `maker`
-- -----------------------------------------------------
START TRANSACTION;
USE `games`;
INSERT INTO `maker` (`id`, `name`, `logo`) VALUES (1, 'Atari', 'https://vignette.wikia.nocookie.net/ttte/images/1/1d/Atari_Logo.png/revision/latest?cb=20160123210812');
INSERT INTO `maker` (`id`, `name`, `logo`) VALUES (2, 'Nintendo', 'https://s3.amazonaws.com/freebiesupply/large/2x/nintendo-logo-black-and-white.png');
INSERT INTO `maker` (`id`, `name`, `logo`) VALUES (3, 'Funhouse', NULL);
INSERT INTO `maker` (`id`, `name`, `logo`) VALUES (4, 'CBS Software', 'http://www.pixelatedarcade.com/screenshots/1670/1202/screenshot_245-time-bound-cbs-software-logo.png');

COMMIT;


-- -----------------------------------------------------
-- Data for table `game`
-- -----------------------------------------------------
START TRANSACTION;
USE `games`;
INSERT INTO `game` (`id`, `name`, `maker_id`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (1, 'Little Red Riding Hood', 3, 'Story', 'A game from the early 1980\'s that tells the story of little red riding hood and the big bad wolf.', 1983, 'https://www.youtube.com/watch?v=VmJcVW5_Rq0', 'http://www.atarimania.com/8bit/screens/bedtime_stories_little_red_riding_hood.gif');
INSERT INTO `game` (`id`, `name`, `maker_id`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (2, 'Sesame Street\'s Letter Go Round', 4, 'Learning', 'A game from the early 1980\'s to teach children letters.', 1984, 'https://www.youtube.com/watch?v=YTRHY0V-Hcc', 'https://i.ytimg.com/vi/YTRHY0V-Hcc/maxresdefault.jpg');
INSERT INTO `game` (`id`, `name`, `maker_id`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (3, 'Big Bird\'s Funhouse', 4, 'Learning', 'A game from the early 1980\'s to teach children to find things.', 1984, 'http://www.pixelatedarcade.com/screenshots/1670/1202/screenshot_245-time-bound-cbs-software-logo.png', 'http://www.atarimania.com/8bit/screens/big_bird_s_funhouse_4.gif');
INSERT INTO `game` (`id`, `name`, `maker_id`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (4, 'Super Mario Brothers', 2, 'Sidescroll', 'A game from the early 1980\'s that allows a player to advance through many levels in the pursuit of saving a princess.', 1983, 'https://www.youtube.com/watch?v=ia8bhFoqkVE', 'http://www.retrogames.cz/games/005/NES_01.gif');
INSERT INTO `game` (`id`, `name`, `maker_id`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (5, 'The Legend Of Zelda', 2, 'Adventure', 'A game from the late 1980\'s that allows a player to explore an open world with dungeons in pursuit of their princess.', 1986, 'https://www.youtube.com/watch?v=c4bvZZa5Mtg', 'http://cdn.toy-tma.com/wp-content/uploads/2017/06/10-10-10-Legend-of-Zelda.png');
INSERT INTO `game` (`id`, `name`, `maker_id`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (6, 'Super Mario World', 2, 'Adventure', 'A game from the early 1990\'s that allows the player to conquer individual levels in pursuit of a evil lizard that has captured their princess.', 1990, 'https://www.youtube.com/watch?v=0CcgWb4GhEA', 'https://www.wired.com/images_blogs/gamelife/2013/05/marioworld_660.jpg');

COMMIT;


-- -----------------------------------------------------
-- Data for table `system`
-- -----------------------------------------------------
START TRANSACTION;
USE `games`;
INSERT INTO `system` (`id`, `name`, `maker_id`, `abbreviation`, `picture`) VALUES (1, 'Atari 800', 1, NULL, 'http://www.nightfallcrew.com/wp-content/gallery/atari-800-uk-pal-atari-810-atari-410-boxed/Atari_800_PAL_Atari_810_Atari_410_Boxed_07.jpg');
INSERT INTO `system` (`id`, `name`, `maker_id`, `abbreviation`, `picture`) VALUES (2, 'Nintendo Entertainment System', 2, 'NES', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/2560px-NES-Console-Set.jpg');
INSERT INTO `system` (`id`, `name`, `maker_id`, `abbreviation`, `picture`) VALUES (3, 'Super Nintendo Entertainment System', 2, 'SNES', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/SNES-Mod1-Console-Set.jpg/2560px-SNES-Mod1-Console-Set.jpg');

COMMIT;


-- -----------------------------------------------------
-- Data for table `game_system`
-- -----------------------------------------------------
START TRANSACTION;
USE `games`;
INSERT INTO `game_system` (`game_id`, `system_id`) VALUES (1, 1);
INSERT INTO `game_system` (`game_id`, `system_id`) VALUES (2, 2);

COMMIT;
