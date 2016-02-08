-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 08, 2016 at 08:24 AM
-- Server version: 5.5.16
-- PHP Version: 5.4.0beta2-dev

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `feedback_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gostinspector_urls`
--

CREATE TABLE IF NOT EXISTS `search_urls` (
  `snipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `searchkey` varchar(250) DEFAULT NULL,
  `ostinspector_test_url` varchar(250) DEFAULT NULL,
  `description` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_on` date DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`snipping_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `gostinspector_urls`
--

INSERT INTO `search_urls` (`snipping_id`, `searchkey`, `gostinspector_test_url`, `description`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 'runscope', 'https://api.ghostinspector.com/v1/tests/568ba169c31d03f50756fa8b/execute/?apiKey=<your-api-key>', 12, 1, '2016-01-05', '2016-01-05 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
