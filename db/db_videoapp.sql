-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2018 at 01:45 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_videoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` int(250) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(20) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'action'),
(2, 'comedy'),
(3, 'horror'),
(4, 'sci-fi'),
(5, 'crime'),
(6, 'drama');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movie_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(100) NOT NULL,
  `movie_year` varchar(10) NOT NULL,
  `movie_runtime` varchar(10) NOT NULL,
  `movie_desc` text NOT NULL,
  `movie_cover` varchar(250) NOT NULL,
  `movie_release` varchar(10) NOT NULL,
  `movie_rating` varchar(10) NOT NULL,
  `movie_isKids` tinyint(1) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_title`, `movie_year`, `movie_runtime`, `movie_desc`, `movie_cover`, `movie_release`, `movie_rating`, `movie_isKids`) VALUES
(1, 'Ghost In The Shell', '2017', '107m', 'In the near future, Major is the first of her kind: A human saved from a terrible crash, who is cyber-enhanced to be a perfect soldier devoted to stopping the world\'s most dangerous criminals.', 'ghostInTheShell.jpg', '31/01/2017', '6.4', 0),
(2, '10 Cloverfield Lane', '2016', '103', 'After getting in a car accident, a woman is held in a shelter with two men, who claim the outside world is affected by a widespread chemical attack. ', 'cloverfieldLane.jpg', '11/03/2016', '7.2', 0),
(3, 'The Purge: Election Year', '2016', '108m', 'Former Police Sergeant Barnes becomes head of security for Senator Charlie Roan, a Presidential candidate targeted for death on Purge night due to her vow to eliminate the Purge. ', 'electionYear.jpg', '01/07/2016', '6.0', 0),
(4, 'Logan', '2017', '137m', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan\'s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces. ', 'logan.jpg', '03/03/2017', '8.1', 0),
(5, 'Captain America: Civil War', '2016', '147m', 'Political involvement in the Avengers\' activities causes a rift between Captain America and Iron Man. ', 'civilWar.jpg', '06/05/2016', '7.8', 0),
(6, 'Coco', '2017', '105m', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer. ', 'coco.jpg', '21/11/2017', '8.5', 1),
(7, 'Inside Out', '2015', '95m', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school. ', 'insideOut.jpg', '19/06/2015', '8.2', 1),
(8, 'Incredibles 2', '2018', 'N/A', 'Bob Parr (Mr. Incredible) is left to care for Jack-Jack while Helen (Elastigirl) is out saving the world. ', 'incredibles2.jpg', '15/06/2018', 'N/A', 1),
(9, 'Wreck-It Ralph 2', '2018', 'N/A', 'Six years after the events of \"Wreck-It Ralph,\" Ralph and Vanellope, now friends, discover a wi-fi router in their arcade, leading them into a new adventure. ', 'ralph2.jpg', '21/11/2018', 'N/A', 1),
(10, 'Teenage Mutant Ninja Turtles', '1990', '93m', 'Four teenage mutant ninja turtles emerge from the shadows to protect New York City from a gang of criminal ninjas. ', 'tmnt.jpg', '30/03/1990', '6.7', 1),
(30, 'Pacific Rim', '2013', '133m', 'As a war between humankind and monstrous sea creatures wages on, a former pilot and a trainee are paired up to drive a seemingly obsolete special weapon in a desperate effort to save the world from the apocalypse. ', 'pacific.jpg', '12/07/2013', '6.9', 0),
(29, 'Elysium', '2013', '109m', 'In the year 2154, the very wealthy live on a man-made space station while the rest of the population resides on a ruined Earth. A man takes on a mission that could bring equality to the polarized worlds. ', 'elysium.jpg', '09/08/2013', '6.6', 0),
(28, 'Blade Runner', '1982', '117m', 'A blade runner must pursue and try to terminate four replicants who stole a ship in space and have returned to Earth to find their creator. ', 'bladeRunner.jpg', '25/06/1982', '8.2', 0),
(27, 'The Beyond', '2017', '103m', 'Set in 2019, The Beyond chronicles the groundbreaking mission which sent astronauts - modified with advanced robotics, through a newly discovered wormhole known as the Void. ', 'beyond.jpg', '09/01/2017', '4.7', 0),
(26, '22 Jump Street', '2014', '112m', 'After making their way through high school (twice), big changes are in store for officers Schmidt and Jenko when they go deep undercover at a local college. ', 'jumpStreet.jpg', '13/06/2014', '7.0', 0),
(25, 'Big Hero 6', '2014', '104m', 'The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes. ', 'bigHero6.jpg', '07/11/2014', '7.8', 1),
(24, 'Godzilla', '2014', '123m', 'The world is beset by the appearance of monstrous creatures, but one of them may be the only one who can save humanity. ', 'gozilla.jpg', '03/16/2014', '6.4', 0),
(19, 'WALL-E', '2008', '98m', 'WALL·E is the last robot left on an Earth that has been overrun with garbage and all humans have fled to outer space. For 700 years he has continued to try and clean up the mess, but has developed some rather interesting human-like qualities. When a ship arrives with a sleek new type of robot, WALL·E thinks he\'s finally found a friend and stows away on the ship when it leaves.', 'walle.jpg', '22/06/2008', '8.4', 1),
(20, 'Inglourious Basterds', '2009', '153m', 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner\'s vengeful plans for the same. ', 'ingloriousBasterds.jpg', '21/08/2009', '8.3', 0),
(21, 'Hacksaw Ridge', '2016', '139m', 'WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot. ', 'hacksaw.jpg', '04/11/2016', '8.2', 0),
(22, 'The Revenant', '2015', '156m', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team. ', 'revenant.jpg', '08/01/2015', '8.0', 0),
(23, 'Life of Pi', '2012', '127', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger. ', 'lifeOfPi.jpg', '21/11/2012', '7.9', 0),
(31, 'Life', '2017', '104m', 'A team of scientists aboard the International Space Station discover a rapidly evolving life form that caused extinction on Mars and now threatens all life on Earth. ', 'life.jpg', '24/03/2017', '6.6', 0),
(32, 'Prometheus', '2012', '124m', 'Following clues to the origin of mankind, a team finds a structure on a distant moon, but they soon realize they are not alone. ', 'prometheus.jpg', '08/06/2012', '7.0', 0),
(33, 'A Cure for Wellness', '2016', '146m', 'An ambitious young executive is sent to retrieve his company\'s CEO from an idyllic but mysterious \"wellness center\" at a remote location in the Swiss Alps, but soon suspects that the spa\'s treatments are not what they seem.', 'cure.jpg', '17/02/2016', '6.4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_genre`
--

DROP TABLE IF EXISTS `tbl_movie_genre`;
CREATE TABLE IF NOT EXISTS `tbl_movie_genre` (
  `movie_genre_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_id` int(50) NOT NULL,
  `movie_genre` int(50) NOT NULL,
  PRIMARY KEY (`movie_genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie_genre`
--

INSERT INTO `tbl_movie_genre` (`movie_genre_id`, `movie_id`, `movie_genre`) VALUES
(1, 1, 4),
(2, 2, 3),
(3, 3, 3),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 1),
(9, 9, 2),
(10, 10, 1),
(11, 19, 4),
(12, 20, 1),
(13, 21, 1),
(14, 22, 6),
(15, 23, 6),
(16, 24, 1),
(17, 25, 1),
(18, 26, 2),
(19, 27, 4),
(20, 28, 4),
(21, 29, 4),
(22, 30, 4),
(23, 31, 3),
(24, 32, 4),
(25, 33, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userlvl` varchar(50) NOT NULL,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `loginCount` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `userlvl`, `user_ip`, `loginCount`) VALUES
(19, 'user', 'username', 'password', 'asdf', '2018-04-06 22:37:26', '1', 'no', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
