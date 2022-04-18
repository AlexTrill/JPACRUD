-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bjj_submissionsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bjj_submissionsdb` ;

-- -----------------------------------------------------
-- Schema bjj_submissionsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bjj_submissionsdb` DEFAULT CHARACTER SET utf8 ;
USE `bjj_submissionsdb` ;

-- -----------------------------------------------------
-- Table `submission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `submission` ;

CREATE TABLE IF NOT EXISTS `submission` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `type` VARCHAR(100) NOT NULL,
  `gi_required` VARCHAR(25) NULL,
  `positions_commonly_executed_from` VARCHAR(75) NOT NULL,
  `specialists` VARCHAR(100) NULL,
  `also_known_as` VARCHAR(100) NULL,
  `tutorial` VARCHAR(250) NULL,
  `image` VARCHAR(250) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS practitioner@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'practitioner'@'localhost' IDENTIFIED BY 'practitioner';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'practitioner'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `submission`
-- -----------------------------------------------------
START TRANSACTION;
USE `bjj_submissionsdb`;
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (1, 'Kimura', 'Arm And Shoulder Lock', 'No', 'closed guard, side control, north south', '', 'gyaku ude-garam', 'https://www.youtube.com/watch?v=ofUtASU6sXY&ab_channel=Howcast', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/KimuraSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (2, 'Monoplata', 'Arm And Shoulder Lock', 'No', 'mount, spider guard', 'Tom Feister, Marcelo Garcia', NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (3, 'Americana', 'Arm And Shoulder Lock', 'No', 'mount, side control, closed guard', NULL, 'figure four armlock', NULL, 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/https://www.bjjsuccess.com/wp-content/uploads/2020/09/FigureFourSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (4, 'Armbar', 'Arm And Shoulder Lock', 'No', 'closed guard, mount, side control, back control', 'Ronda Rousey, Braulio Estima', NULL, 'https://www.youtube.com/watch?v=pQ43Oy5k9yQ&ab_channel=BJJFanatics', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/ArmbarSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (5, 'Omoplata', 'Arm And Shoulder Lock', 'No', 'closed guard, mount, spider guard, half guard', 'Clark Gracie ', NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (6, 'Wrist Lock', 'Arm And Shoulder Lock', 'No', 'guard, side control, mount', 'Márcio Stambowsky', NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (7, 'Hammerlock', 'Arm And Shoulder Lock', 'No', 'turtle', NULL, NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (8, 'Mir Lock', 'Arm And Shoulder Lock', 'No', 'guard', 'Frank Mir', NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (9, 'Guillotine', 'Choke', 'No', 'open guard, mount, standing', 'Kron Gracie, Ricardo Almeida', NULL, 'https://www.youtube.com/watch?v=UbcqJETDUY8&ab_channel=Chewjitsu', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/GuillotineSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (10, 'Rear Naked Choke', 'Choke', 'No', 'back control', 'Rickson Gracie, John Danaher', 'hadaka-jime, RNC', NULL, 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/RearNakedChokeSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (11, 'Triangle Choke', 'Choke', 'No', 'closed guard, mount', 'Braulio Estima', NULL, 'https://www.youtube.com/watch?v=9pjdpFCr4UI&ab_channel=Chewjitsu', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/TriangleSubmissionDiagram-1.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (12, 'Bow And Arrow Choke', 'Choke', 'Yes', 'back control, turtle', NULL, NULL, 'https://www.youtube.com/watch?v=Q7R71XB3dig&ab_channel=ROYDEAN', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/BowAndArrowSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (13, 'Ezekiel Choke', 'Choke', 'Yes', 'side control, mount', NULL, NULL, '', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/EzekielSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (14, 'Cross Collar Choke', 'Choke', 'Yes', 'closed guard, mount', 'Roger Gracie', NULL, 'https://www.youtube.com/watch?v=TSybO7VM9LI&ab_channel=GracieBreakdown', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/CrossCollarChokeSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (15, 'Baseball Bat Choke', 'Choke', 'Yes', 'bottom half guard, side control, knee on belly', NULL, NULL, 'https://www.youtube.com/watch?v=mBcQiWrIdhs&ab_channel=TheGrapplingAcademy', NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (16, ' D’Arce Choke', 'Choke', 'No', 'side control, turtle', 'Joe D\'Arce', NULL, 'https://www.youtube.com/watch?v=tja1ct3Ps94&ab_channel=StephanKesting', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/DarceSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (17, 'Clock Choke', 'Choke', 'Yes', 'turtle, side control', NULL, NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (18, 'Arm Triangle', 'Choke', 'No', 'mount, side control', NULL, 'kata gatame, head and arm choke', 'https://www.youtube.com/watch?v=qIliKQiN2K8&ab_channel=BernardoFariaBJJFanatics', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/ArmTriangleSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (19, 'North South Choke', 'Choke', 'No', 'north south', 'Marcelo Garcia', NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (20, 'Anaconda Choke', 'Choke', 'No', 'turtle, open guard', 'Milton Vieira', NULL, 'https://www.youtube.com/watch?v=A4LQMLYJ9yo&ab_channel=MGInActionVideos', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/https://www.bjjsuccess.com/wp-content/uploads/2020/09/AnacondaSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (21, 'Peruvian Necktie', 'Choke', 'No', 'turtle', NULL, NULL, NULL, 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/PeruvianNecktieSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (22, 'Japanese Necktie', 'Choke', 'No', 'side control, turtle', NULL, NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (23, 'Loop Choke', 'Choke', 'Yes', 'open guard, closed guard, side control', NULL, NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (24, 'Step Over Choke', 'Choke', 'Yes', 'side control, knee on belly', NULL, NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (25, 'Gogoplata', 'Choke', 'No', 'closed guard, rubber guard', NULL, NULL, 'https://www.youtube.com/watch?v=wzOrAzClA8k&ab_channel=TheGrapplingAcademy', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/GogoplataSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (26, 'Von Flue Choke', 'Choke', 'No', 'top side control', 'Jason Von Flue', NULL, NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (27, 'Straight Ankle Lock', 'Leg Lock', 'No', 'half guard, 50-50, de la riva guard', 'Dean Lister', NULL, 'https://www.youtube.com/watch?v=auZeB95UkA4&ab_channel=BJJLibrary', NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (28, 'Kneebar', 'Leg Lock', 'No', 'half guard bottom, turtle bottom, x guard', 'Dean Lister, Mackenzie Dern', NULL, 'https://www.youtube.com/watch?v=oBlMI4iKm3c&ab_channel=MMALeech', 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/KneebarSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (29, 'Toehold', 'Leg Lock', 'No', 'open guard, de la riva', NULL, 'estime lock', NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (30, 'Heel Hook', 'Leg Lock', 'No', 'z guard, x guard, mount', 'John Danaher, Dean Lister, Garry Tonon, Gordon Ryan', NULL, NULL, 'https://www.bjjsuccess.com/wp-content/uploads/2020/09/HeelhookSubmissionDiagram.png');
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (31, 'Can Opener', 'Neck Crank', 'No', 'turtle, back control', 'Eddie Bravo', 'kubi-hishigi', NULL, NULL);
INSERT INTO `submission` (`id`, `name`, `type`, `gi_required`, `positions_commonly_executed_from`, `specialists`, `also_known_as`, `tutorial`, `image`) VALUES (32, 'Twister', 'Neck Crank', '0', 'turtle, back control', 'Jung Chan-sung', NULL, NULL, NULL);

COMMIT;

