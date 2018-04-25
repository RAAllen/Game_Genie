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
USE `games` ;

-- -----------------------------------------------------
-- Table `game`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `game` ;

CREATE TABLE IF NOT EXISTS `game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `maker` VARCHAR(100) NULL,
  `category` VARCHAR(45) NULL,
  `description` VARCHAR(500) NULL,
  `release_year` INT NULL,
  `video` VARCHAR(1000) NULL,
  `picture` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


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
  `system_id` INT NOT NULL)
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO gamesuser@localhost;
 DROP USER gamesuser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'gamesuser'@'localhost' IDENTIFIED BY 'gamesuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'gamesuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `game`
-- -----------------------------------------------------
START TRANSACTION;
USE `games`;
INSERT INTO `game` (`id`, `name`, `maker`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (1, 'Little Red Riding Hood', 'Futurehouse', 'Learning', 'An interactive learning game that tells the story of little red riding hood and the big bad wolf.', 1983, 'https://www.youtube.com/watch?v=VmJcVW5_Rq0', 'http://www.atarimania.com/8bit/screens/bedtime_stories_little_red_riding_hood.gif');
INSERT INTO `game` (`id`, `name`, `maker`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (2, 'Sesame Street\'s Letter Go Round', 'CBS Software', 'Learning', 'A game to teach children letters featuring the characters from Sesame Street.', 1984, 'https://www.youtube.com/watch?v=YTRHY0V-Hcc', 'https://i.ytimg.com/vi/YTRHY0V-Hcc/maxresdefault.jpg');
INSERT INTO `game` (`id`, `name`, `maker`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (3, 'Big Bird\'s Funhouse', 'CBS Software', 'Learning', 'A hide and go seek game for children featuring the characters of Sesame Street.', 1984, 'http://www.pixelatedarcade.com/screenshots/1670/1202/screenshot_245-time-bound-cbs-software-logo.png', 'http://www.atarimania.com/8bit/screens/big_bird_s_funhouse_4.gif');
INSERT INTO `game` (`id`, `name`, `maker`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (4, 'Super Mario Brothers', 'Nintendo', 'Side-Scrolling Adventure', 'A multiplayer game that has players travel through the Mushroom Kingdom in pursuit of Princess Toadstool who has been kidnapped by Bowser.', 1983, 'https://www.youtube.com/watch?v=ia8bhFoqkVE', 'http://www.retrogames.cz/games/005/NES_01.gif');
INSERT INTO `game` (`id`, `name`, `maker`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (5, 'The Legend Of Zelda', 'Nintendo', 'Adventure', 'A single player game that follows Link through puzzles and dungeons in pursuit of the evil Ganon who has kidnapped Princess Zelda.', 1986, 'https://www.youtube.com/watch?v=c4bvZZa5Mtg', 'http://cdn.toy-tma.com/wp-content/uploads/2017/06/10-10-10-Legend-of-Zelda.png');
INSERT INTO `game` (`id`, `name`, `maker`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (6, 'Super Mario World', 'Nintendo', 'Side-Scrolling Adventure', 'A multiplayer game that follows the Mario brothers while the explore Dinosaur Land with their new friend Yoshi.', 1990, 'https://www.youtube.com/watch?v=0CcgWb4GhEA', 'https://www.wired.com/images_blogs/gamelife/2013/05/marioworld_660.jpg');
INSERT INTO `game` (`id`, `name`, `maker`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (7, 'Super Mario Bros. 3', 'Nintendo', 'Side-Scrolling Adventure', 'A multiplayer game that takes place in the Mushroom Kingdom. You are in pursuit of the evil King Koopa who has kidnapped Princess Toadstool.', 1990, 'https://www.youtube.com/watch?v=tmnMq2Hw72w', 'https://ih1.redbubble.net/image.245132386.1935/flat,1000x1000,075,f.u1.jpg');
INSERT INTO `game` (`id`, `name`, `maker`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (8, 'Secret of Mana', 'Square', 'Adventure', 'A multiplayer game that follows a hero, heroine and a sprite as they seek to save the world.', 1993, 'https://www.youtube.com/watch?v=yh7Z5IZ1gjI', 'https://cdn.gamer-network.net/2017/usgamer/secret_of_mana_snes_classic_review_05.jpg');
INSERT INTO `game` (`id`, `name`, `maker`, `category`, `description`, `release_year`, `video`, `picture`) VALUES (9, 'Chrono Trigger', 'Square', 'Adventure', 'A single player game that follows a band of heros through time as they attempt to restore balance to the time continuum.', 1995, 'https://www.youtube.com/watch?v=J7hzHlIsjwY', 'https://i.kinja-img.com/gawker-media/image/upload/s--ULNzXuAM--/c_scale,fl_progressive,q_80,w_800/deumob8eo6ljsjsyftac.jpg');

COMMIT;


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
