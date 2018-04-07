-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 06, 2018 at 07:00 PM
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `movie_trailer` varchar(250) NOT NULL,
  `movie_release` varchar(10) NOT NULL,
  `movie_rating` varchar(10) NOT NULL,
  `movie_isKids` tinyint(1) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_title`, `movie_year`, `movie_runtime`, `movie_desc`, `movie_trailer`, `movie_release`, `movie_rating`, `movie_isKids`) VALUES
(1, 'Ghost In The Shell', '2017', '107m', 'In the near future, Major is the first of her kind: A human saved from a terrible crash, who is cyber-enhanced to be a perfect soldier devoted to stopping the world\'s most dangerous criminals.', '', '31/01/2017', '6.4', 0),
(2, '10 Cloverfield Lane', '2016', '103', 'After getting in a car accident, a woman is held in a shelter with two men, who claim the outside world is affected by a widespread chemical attack. ', '', '11/03/2016', '7.2', 0),
(3, 'The Purge: Election Year', '2016', '108m', 'Former Police Sergeant Barnes becomes head of security for Senator Charlie Roan, a Presidential candidate targeted for death on Purge night due to her vow to eliminate the Purge. ', '', '01/07/2016', '6.0', 0),
(4, 'Logan', '2017', '137m', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan\'s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces. ', '', '03/03/2017', '8.1', 0),
(5, 'Captain America: Civil War', '2016', '147m', 'Political involvement in the Avengers\' activities causes a rift between Captain America and Iron Man. ', '', '06/05/2016', '7.8', 0),
(6, 'Coco', '2017', '105m', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer. ', '', '21/11/2017', '8.5', 1),
(7, 'Inside Out', '2015', '95m', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school. ', '', '19/06/2015', '8.2', 1),
(8, 'Incredibles 2', '2018', 'N/A', 'Bob Parr (Mr. Incredible) is left to care for Jack-Jack while Helen (Elastigirl) is out saving the world. ', '', '15/06/2018', 'N/A', 1),
(9, 'Wreck-It Ralph 2', '2018', 'N/A', 'Six years after the events of \"Wreck-It Ralph,\" Ralph and Vanellope, now friends, discover a wi-fi router in their arcade, leading them into a new adventure. ', '', '21/11/2018', 'N/A', 1),
(10, 'Teenage Mutant Ninja Turtles', '1990', '93m', 'Four teenage mutant ninja turtles emerge from the shadows to protect New York City from a gang of criminal ninjas. ', '', '30/03/1990', '6.7', 1),
(11, 'The Purge: Election Year', '2016', '108m', 'Former Police Sergeant Barnes becomes head of security for Senator Charlie Roan, a Presidential candidate targeted for death on Purge night due to her vow to eliminate the Purge. ', '', '01/07/2016', '6.0', 0),
(12, 'Logan', '2017', '137m', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan\'s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces. ', '', '03/03/2017', '8.1', 0),
(13, 'Captain America: Civil War', '2016', '147m', 'Political involvement in the Avengers\' activities causes a rift between Captain America and Iron Man. ', '', '06/05/2016', '7.8', 0),
(14, 'Coco', '2017', '105m', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer. ', '', '21/11/2017', '8.5', 1),
(15, 'Inside Out', '2015', '95m', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school. ', '', '19/06/2015', '8.2', 1),
(16, 'Incredibles 2', '2018', 'N/A', 'Bob Parr (Mr. Incredible) is left to care for Jack-Jack while Helen (Elastigirl) is out saving the world. ', '', '15/06/2018', 'N/A', 1),
(17, 'Wreck-It Ralph 2', '2018', 'N/A', 'Six years after the events of \"Wreck-It Ralph,\" Ralph and Vanellope, now friends, discover a wi-fi router in their arcade, leading them into a new adventure. ', '', '21/11/2018', 'N/A', 1),
(18, 'Teenage Mutant Ninja Turtles', '1990', '93m', 'Four teenage mutant ninja turtles emerge from the shadows to protect New York City from a gang of criminal ninjas. ', '', '30/03/1990', '6.7', 1),
(19, 'WALL-E', '2008', '98m', 'WALL·E is the last robot left on an Earth that has been overrun with garbage and all humans have fled to outer space. For 700 years he has continued to try and clean up the mess, but has developed some rather interesting human-like qualities. When a ship arrives with a sleek new type of robot, WALL·E thinks he\'s finally found a friend and stows away on the ship when it leaves.', '', '22/06/2008', '8.4', 1),
(20, 'Inglourious Basterds', '2009', '153m', 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner\'s vengeful plans for the same. ', '', '21/08/2009', '8.3', 0),
(21, 'Hacksaw Ridge', '2016', '139m', 'WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot. ', '', '04/11/2016', '8.2', 0),
(22, 'The Revenant', '2015', '156m', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team. ', '', '08/01/2015', '8.0', 0),
(23, 'Life of Pi', '2012', '127', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger. ', '', '21/11/2012', '7.9', 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `userlvl`, `user_ip`, `loginCount`) VALUES
(1, 'haydn', 'haydnfee', 'password', 'hfeegdci@gmail.com', '2018-02-19 22:46:13', '', '::1', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
