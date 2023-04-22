-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for gtav_rp2
CREATE DATABASE IF NOT EXISTS `gtav_rp2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `gtav_rp2`;

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL DEFAULT 'John',
  `last_name` varchar(50) NOT NULL DEFAULT 'Doe',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dob` varchar(50) DEFAULT 'NULL',
  `cash` int(9) DEFAULT 500,
  `bank` int(9) NOT NULL DEFAULT 25000,
  `phone_number` varchar(15) DEFAULT NULL,
  `story` text NOT NULL,
  `new` int(1) NOT NULL DEFAULT 1,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `gender` int(1) NOT NULL DEFAULT 0,
  `job` varchar(50) DEFAULT 'unemployed',
  `jail_time` int(11) NOT NULL DEFAULT 0,
  `dirty_money` int(11) NOT NULL DEFAULT 0,
  `gang_type` int(11) NOT NULL DEFAULT 0,
  `jail_time_mobster` int(11) UNSIGNED ZEROFILL NOT NULL DEFAULT 00000000000,
  `judge_type` int(11) NOT NULL DEFAULT 0,
  `iswjob` int(11) NOT NULL DEFAULT 0,
  `metaData` varchar(1520) DEFAULT '{}',
  `stress_level` int(11) DEFAULT 0,
  `bones` mediumtext DEFAULT '{}',
  `emotes` varchar(4160) DEFAULT '{}',
  `paycheck` int(11) DEFAULT 0,
  `stocks` mediumtext DEFAULT NULL,
  `rehab` int(12) DEFAULT 0,
  `meta` text DEFAULT 'move_m@casual@d',
  `dna` text DEFAULT '{}',
  `contacts` longtext DEFAULT NULL,
  `messages` longtext DEFAULT NULL,
  `accounts` longtext DEFAULT NULL,
  `gallery` longtext DEFAULT NULL,
  `wallpaper` longtext DEFAULT NULL,
  `ammo` longtext DEFAULT NULL,
  `licenses` longtext NOT NULL DEFAULT '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]',
  `Shungite` longtext NOT NULL DEFAULT '0',
  `tgb` longtext NOT NULL DEFAULT '0',
  `dvd` longtext NOT NULL DEFAULT '0',
  `chips` tinytext NOT NULL DEFAULT '0',
  `bank_id` int(8) DEFAULT NULL,
  `profilepic` varchar(255) DEFAULT NULL,
  `information` longtext DEFAULT NULL,
  `alias` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `owner`, `first_name`, `last_name`, `date_created`, `dob`, `cash`, `bank`, `phone_number`, `story`, `new`, `deleted`, `gender`, `job`, `jail_time`, `dirty_money`, `gang_type`, `jail_time_mobster`, `judge_type`, `iswjob`, `metaData`, `stress_level`, `bones`, `emotes`, `paycheck`, `stocks`, `rehab`, `meta`, `dna`, `contacts`, `messages`, `accounts`, `gallery`, `wallpaper`, `ammo`, `licenses`, `Shungite`, `tgb`, `dvd`, `chips`, `bank_id`, `profilepic`, `information`, `alias`) VALUES
(45, 'steam:110000135e43060', 'Test', 'Test', '2023-04-22 14:45:58', '2000-01-01', 388, 25000, '6874389648', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{\"thirst\":96,\"armour\":0,\"health\":152,\"hunger\":91}', 0, '{}', '{}', 10, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"license\":\"Weapon\",\"issuedDate\":\"\",\"issuedBy\":\"\",\"issued\":0},{\"license\":\"Hunting\",\"issuedDate\":\"\",\"issuedBy\":\"\",\"issued\":0},{\"license\":\"Business\",\"issuedDate\":\"\",\"issuedBy\":\"\",\"issued\":0},{\"license\":\"Drivers\",\"issuedDate\":\"\",\"issuedBy\":\"\",\"issued\":1},{\"license\":\"Fishing\",\"issuedDate\":\"\",\"issuedBy\":\"\",\"issued\":0},{\"license\":\"Bar\",\"issuedDate\":\"\",\"issuedBy\":\"\",\"issued\":0},{\"license\":\"Pilot\",\"issuedDate\":\"\",\"issuedBy\":\"\",\"issued\":0}]', '0', '0', '0', '0', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `characters_cars`
--

CREATE TABLE `characters_cars` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `purchase_price` float DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `data` text NOT NULL,
  `vehicle_state` text DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `name` varchar(50) DEFAULT NULL,
  `engine_damage` bigint(19) DEFAULT 1000,
  `body_damage` bigint(20) DEFAULT 1000,
  `degredation` longtext DEFAULT '100,100,100,100,100,100,100,100',
  `current_garage` varchar(50) DEFAULT NULL,
  `server_number` varchar(50) DEFAULT NULL,
  `financed` int(11) DEFAULT 0,
  `last_payment` int(11) DEFAULT 0,
  `phone_number` text DEFAULT NULL,
  `coords` varchar(255) DEFAULT NULL,
  `license_plate` varchar(255) NOT NULL DEFAULT '',
  `harness` varchar(50) DEFAULT '',
  `payments_left` int(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `characters_clothes`
--

CREATE TABLE `characters_clothes` (
  `cid` int(11) DEFAULT NULL,
  `assExist` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `characters_weapons`
--

CREATE TABLE `characters_weapons` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `ammo` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `character_current`
--

CREATE TABLE `character_current` (
  `cid` int(11) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `drawables` mediumtext DEFAULT NULL,
  `props` mediumtext DEFAULT NULL,
  `drawtextures` mediumtext DEFAULT NULL,
  `proptextures` mediumtext DEFAULT NULL,
  `assExists` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `character_current`
--

INSERT INTO `character_current` (`cid`, `model`, `drawables`, `props`, `drawtextures`, `proptextures`, `assExists`) VALUES
(1, '1097048408', '{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"11\":[\"jackets\",0],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",-1],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]]', '[[\"hats\",-1],[\"glasses\",-1],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]', NULL),
(2, '225514697', '{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"11\":[\"jackets\",0],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",-1],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]]', '[[\"hats\",-1],[\"glasses\",-1],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]', NULL),
(3, '1885233650', '{\"1\":[\"masks\",0],\"2\":[\"hair\",1],\"3\":[\"torsos\",0],\"4\":[\"legs\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",1],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"11\":[\"jackets\",0],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",-1],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",2]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",2],[\"neck\",0],[\"undershirts\",1],[\"vest\",0],[\"decals\",0],[\"jackets\",11]]', '[[\"hats\",0],[\"glasses\",-1],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]', NULL),
(45, '1885233650', '{\"1\":[\"masks\",0],\"2\":[\"hair\",2],\"3\":[\"torsos\",0],\"4\":[\"legs\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",1],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"11\":[\"jackets\",0],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",-1],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",2],[\"neck\",0],[\"undershirts\",1],[\"vest\",0],[\"decals\",0],[\"jackets\",11]]', '[[\"hats\",-1],[\"glasses\",-1],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `character_face`
--

CREATE TABLE `character_face` (
  `cid` int(11) DEFAULT NULL,
  `hairColor` mediumtext DEFAULT NULL,
  `headBlend` mediumtext DEFAULT NULL,
  `headOverlay` mediumtext DEFAULT NULL,
  `headStructure` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `character_face`
--

INSERT INTO `character_face` (`cid`, `hairColor`, `headBlend`, `headOverlay`, `headStructure`) VALUES
(1, '[-1,-1]', '[]', '[]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
(2, '[-1,-1]', '[]', '[]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
(3, '[1,1]', '{\"shapeSecond\":2,\"hasParent\":false,\"skinThird\":0,\"skinSecond\":0,\"skinMix\":1.0,\"skinFirst\":15,\"shapeThird\":0,\"shapeFirst\":0,\"shapeMix\":0.0,\"thirdMix\":0.0}', '[{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Blemishes\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":0.0,\"name\":\"FacialHair\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":1},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Eyebrows\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":1},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Ageing\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Makeup\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":2},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Blush\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":2},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Complexion\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"SunDamage\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Lipstick\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":2},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"MolesFreckles\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"ChestHair\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":1},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
(45, '[1,1]', '{\"shapeSecond\":0,\"hasParent\":false,\"skinThird\":0,\"skinSecond\":0,\"skinMix\":1.0,\"skinFirst\":15,\"shapeThird\":0,\"shapeFirst\":0,\"shapeMix\":0.0,\"thirdMix\":0.0}', '[{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Blemishes\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":0.0,\"name\":\"FacialHair\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":1},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Eyebrows\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":1},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Ageing\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Makeup\",\"overlayValue\":4,\"secondColour\":0,\"colourType\":2},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Blush\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":2},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Complexion\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"SunDamage\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"Lipstick\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":2},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"MolesFreckles\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"ChestHair\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":1},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0},{\"firstColour\":0,\"overlayOpacity\":1.0,\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"secondColour\":0,\"colourType\":0}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]');

-- --------------------------------------------------------

--
-- Table structure for table `character_motel`
--

CREATE TABLE `character_motel` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `building_type` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `character_motel`
--

INSERT INTO `character_motel` (`id`, `cid`, `building_type`) VALUES
(1, 15, 1),
(2, 15, 1),
(3, 19, 1),
(4, 19, 1),
(5, 16, 1),
(6, 16, 1),
(7, 17, 1),
(8, 17, 1),
(9, 20, 1),
(10, 20, 1),
(11, 21, 1),
(12, 21, 1),
(13, 22, 1),
(14, 22, 1),
(15, 23, 1),
(16, 23, 1),
(17, 24, 1),
(18, 24, 1),
(19, 25, 1),
(20, 25, 1),
(21, 28, 1),
(22, 28, 1),
(23, 29, 1),
(24, 29, 1),
(25, 30, 1),
(26, 30, 1),
(27, 31, 1),
(28, 31, 1),
(29, 32, 1),
(30, 32, 1),
(31, 33, 1),
(32, 33, 1),
(33, 34, 1),
(34, 34, 1),
(35, 35, 1),
(36, 35, 1),
(37, 36, 1),
(38, 36, 1),
(39, 37, 1),
(40, 37, 1),
(41, 38, 1),
(42, 38, 1),
(43, 39, 1),
(44, 39, 1),
(45, 40, 1),
(46, 40, 1),
(47, 41, 1),
(48, 41, 1),
(49, 42, 1),
(50, 42, 1),
(51, 43, 1),
(52, 43, 1),
(53, 1, 1),
(54, 2, 1),
(55, 3, 1),
(56, 45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `character_outfits`
--

CREATE TABLE `character_outfits` (
  `cid` int(11) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `drawables` text DEFAULT '{}',
  `props` text DEFAULT '{}',
  `drawtextures` text DEFAULT '{}',
  `proptextures` text DEFAULT '{}',
  `hairColor` text DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `character_passes`
--

CREATE TABLE `character_passes` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 1,
  `name` text NOT NULL,
  `giver` text NOT NULL,
  `pass_type` text NOT NULL,
  `business_name` text NOT NULL,
  `bank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `character_passes`
--

INSERT INTO `character_passes` (`id`, `cid`, `rank`, `name`, `giver`, `pass_type`, `business_name`, `bank`) VALUES
(1, 45, 5, 'tuner_carshop', 'kempppii', 'tuner_carshop', 'tuner_carshop', 5),
(46, 45, 5, 'Test Test', 'Test Test', 'tuner_carshop', 'tuner_carshop', 0),
(47, 45, 5, 'Test Test', 'Test Test', 'tuner_carshop', 'tuner_carshop', 0),
(48, 45, 5, 'Test Test', 'Test Test', 'tuner_carshop', 'tuner_carshop', 0);

-- --------------------------------------------------------

--
-- Table structure for table `character_tattoos`
--

CREATE TABLE `character_tattoos` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `tattoos` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `character_tattoos`
--

INSERT INTO `character_tattoos` (`id`, `cid`, `tattoos`) VALUES
(1, 19, '[]'),
(2, 19, '[]'),
(3, 19, '[]'),
(4, 19, '[]'),
(5, 19, '[]'),
(6, 19, '[]'),
(7, 16, '{}'),
(8, 16, '{}'),
(9, 17, '{}'),
(10, 17, '{}'),
(11, 19, '[]'),
(12, 19, '[]'),
(13, 19, '[]'),
(14, 19, '[]'),
(15, 19, '[]'),
(16, 19, '[]'),
(17, 20, '{}'),
(18, 20, '{}'),
(19, 19, '[]'),
(20, 19, '[]'),
(21, 21, '{}'),
(22, 21, '{}'),
(23, 19, '[]'),
(24, 19, '[]'),
(25, 16, '{}'),
(26, 16, '{}'),
(27, 16, '{}'),
(28, 16, '{}'),
(29, 19, '[]'),
(30, 19, '[]'),
(31, 19, '[]'),
(32, 19, '[]'),
(33, 16, '{}'),
(34, 16, '{}'),
(35, 22, '[]'),
(36, 22, '[]'),
(37, 16, '{}'),
(38, 16, '{}'),
(39, 22, '[]'),
(40, 22, '[]'),
(41, 19, '[]'),
(42, 19, '[]'),
(43, 19, '[]'),
(44, 19, '[]'),
(45, 19, '[]'),
(46, 17, '{}'),
(47, 17, '{}'),
(48, 17, '{}'),
(49, 17, '{}'),
(50, 20, '{}'),
(51, 20, '{}'),
(52, 19, '[]'),
(53, 19, '[]'),
(54, 23, '{}'),
(55, 23, '{}'),
(56, 23, '{}'),
(57, 23, '{}'),
(58, 23, '{}'),
(59, 23, '{}'),
(60, 23, '{}'),
(61, 23, '{}'),
(62, 23, '{}'),
(63, 23, '{}'),
(64, 23, '{}'),
(65, 23, '{}'),
(66, 23, '{}'),
(67, 20, '{}'),
(68, 20, '{}'),
(69, 16, '{}'),
(70, 16, '{}'),
(71, 16, '{}'),
(72, 17, '{}'),
(73, 17, '{}'),
(74, 17, '{}'),
(75, 19, '[]'),
(76, 19, '[]'),
(77, 19, '[]'),
(78, 15, '{}'),
(79, 15, '{}'),
(80, 15, '{}'),
(81, 19, '[]'),
(82, 19, '[]'),
(83, 19, '[]'),
(84, 17, '{}'),
(85, 19, '[]'),
(86, 19, '[]'),
(87, 22, '{}'),
(88, 22, '{}'),
(89, 22, '{}'),
(90, 16, '{}'),
(91, 16, '{}'),
(92, 16, '{}'),
(93, 17, '{}'),
(94, 17, '{}'),
(95, 17, '{}'),
(96, 17, '{}'),
(97, 17, '{}'),
(98, 17, '{}'),
(99, 16, '{}'),
(100, 16, '{}'),
(101, 16, '{}'),
(102, 16, '{}'),
(103, 16, '{}'),
(104, 16, '{}'),
(105, 16, '{}'),
(106, 16, '{}'),
(107, 16, '{}'),
(108, 19, '[]'),
(109, 19, '[]'),
(110, 19, '[]'),
(111, 19, '[]'),
(112, 19, '[]'),
(113, 19, '[]'),
(114, 19, '[]'),
(115, 19, '[]'),
(116, 19, '[]'),
(117, 19, '[]'),
(118, 19, '[]'),
(119, 19, '[]'),
(120, 19, '[]'),
(121, 19, '[]'),
(122, 19, '[]'),
(123, 16, '{}'),
(124, 16, '{}'),
(125, 16, '{}'),
(126, 19, '[]'),
(127, 19, '[]'),
(128, 19, '[]'),
(129, 19, '[]'),
(130, 19, '[]'),
(131, 19, '[]'),
(132, 19, '[]'),
(133, 19, '[]'),
(134, 19, '[]'),
(135, 16, '{}'),
(136, 16, '{}'),
(137, 16, '{}'),
(138, 16, '{}'),
(139, 16, '{}'),
(140, 19, '[]'),
(141, 19, '[]'),
(142, 19, '[]'),
(143, 19, '[]'),
(144, 19, '[]'),
(145, 19, '[]'),
(146, 19, '[]'),
(147, 19, '[]'),
(148, 19, '[]'),
(149, 19, '[]'),
(150, 19, '[]'),
(151, 19, '[]'),
(152, 19, '[]'),
(153, 19, '[]'),
(154, 19, '[]'),
(155, 19, '[]'),
(156, 19, '[]'),
(157, 19, '[]'),
(158, 19, '[]'),
(159, 19, '[]'),
(160, 19, '[]'),
(161, 19, '[]'),
(162, 19, '[]'),
(163, 19, '[]'),
(164, 19, '[]'),
(165, 19, '[]'),
(166, 19, '[]'),
(167, 19, '[]'),
(168, 19, '[]'),
(169, 19, '[]'),
(170, 19, '[]'),
(171, 19, '[]'),
(172, 19, '[]'),
(173, 19, '[]'),
(174, 19, '[]'),
(175, 19, '[]'),
(176, 19, '[]'),
(177, 19, '[]'),
(178, 19, '[]'),
(179, 19, '[]'),
(180, 19, '[]'),
(181, 19, '[]'),
(182, 19, '[]'),
(183, 19, '[]'),
(184, 19, '[]'),
(185, 19, '[]'),
(186, 19, '[]'),
(187, 19, '[]'),
(188, 19, '[]'),
(189, 19, '[]'),
(190, 19, '[]'),
(191, 19, '[]'),
(192, 19, '[]'),
(193, 19, '[]'),
(194, 19, '[]'),
(195, 19, '[]'),
(196, 19, '[]'),
(197, 19, '[]'),
(198, 19, '[]'),
(199, 19, '[]'),
(200, 19, '[]'),
(201, 19, '[]'),
(202, 19, '[]'),
(203, 19, '[]'),
(204, 19, '[]'),
(205, 19, '[]'),
(206, 19, '[]'),
(207, 19, '[]'),
(208, 19, '[]'),
(209, 19, '[]'),
(210, 19, '[]'),
(211, 19, '[]'),
(212, 19, '[]'),
(213, 19, '[]'),
(214, 19, '[]'),
(215, 19, '[]'),
(216, 19, '[]'),
(217, 19, '[]'),
(218, 19, '[]'),
(219, 19, '[]'),
(220, 19, '[]'),
(221, 19, '[]'),
(222, 19, '[]'),
(223, 17, '{}'),
(224, 17, '{}'),
(225, 17, '{}'),
(226, 16, '{}'),
(227, 16, '{}'),
(228, 20, '{}'),
(229, 20, '{}'),
(230, 16, '{}'),
(231, 20, '{}'),
(232, 16, '{}'),
(233, 16, '{}'),
(234, 16, '{}'),
(235, 17, '{}'),
(236, 17, '{}'),
(237, 17, '{}'),
(238, 19, '[]'),
(239, 19, '[]'),
(240, 19, '[]'),
(241, 19, '[]'),
(242, 19, '[]'),
(243, 19, '[]'),
(244, 19, '[]'),
(245, 19, '[]'),
(246, 19, '[]'),
(247, 19, '[]'),
(248, 19, '[]'),
(249, 19, '[]'),
(250, 19, '[]'),
(251, 19, '[]'),
(252, 19, '[]'),
(253, 19, '[]'),
(254, 19, '[]'),
(255, 19, '[]'),
(256, 19, '[]'),
(257, 19, '[]'),
(258, 19, '[]'),
(259, 16, '{}'),
(260, 16, '{}'),
(261, 16, '{}'),
(262, 19, '[]'),
(263, 19, '[]'),
(264, 19, '[]'),
(265, 19, '[]'),
(266, 19, '[]'),
(267, 19, '[]'),
(268, 16, '{}'),
(269, 16, '{}'),
(270, 16, '{}'),
(271, 24, '{}'),
(272, 24, '{}'),
(273, 24, '{}'),
(274, 24, '{}'),
(275, 24, '{}'),
(276, 24, '{}'),
(277, 24, '{}'),
(278, 16, '{}'),
(279, 16, '{}'),
(280, 16, '{}'),
(281, 16, '{}'),
(282, 20, '{}'),
(283, 20, '{}'),
(284, 20, '{}'),
(285, 20, '{}'),
(286, 20, '{}'),
(287, 20, '{}'),
(288, 19, '[]'),
(289, 19, '[]'),
(290, 19, '[]'),
(291, 16, '{}'),
(292, 16, '{}'),
(293, 16, '{}'),
(294, 17, '{}'),
(295, 17, '{}'),
(296, 17, '{}'),
(297, 19, '[]'),
(298, 19, '[]'),
(299, 20, '{}'),
(300, 20, '{}'),
(301, 19, '[]'),
(302, 20, '{}'),
(303, 19, '[]'),
(304, 19, '[]'),
(305, 19, '[]'),
(306, 19, '[]'),
(307, 19, '[]'),
(308, 19, '[]'),
(309, 20, '{}'),
(310, 20, '{}'),
(311, 20, '{}'),
(312, 19, '[]'),
(313, 19, '[]'),
(314, 19, '[]'),
(315, 19, '[]'),
(316, 19, '[]'),
(317, 19, '[]'),
(318, 19, '[]'),
(319, 19, '[]'),
(320, 19, '[]'),
(321, 19, '[]'),
(322, 19, '[]'),
(323, 19, '[]'),
(324, 19, '[]'),
(325, 19, '[]'),
(326, 19, '[]'),
(327, 20, '{}'),
(328, 20, '{}'),
(329, 20, '{}'),
(330, 19, '[]'),
(331, 19, '[]'),
(332, 19, '[]'),
(333, 17, '{}'),
(334, 17, '{}'),
(335, 17, '{}'),
(336, 16, '{}'),
(337, 16, '{}'),
(338, 21, '{}'),
(339, 21, '{}'),
(340, 16, '{}'),
(341, 21, '{}'),
(342, 20, '{}'),
(343, 20, '{}'),
(344, 20, '{}'),
(345, 17, '{}'),
(346, 17, '{}'),
(347, 21, '{}'),
(348, 21, '{}'),
(349, 21, '{}'),
(350, 21, '{}'),
(351, 21, '{}'),
(352, 19, '[]'),
(353, 19, '[]'),
(354, 19, '[]'),
(355, 17, '{}'),
(356, 17, '{}'),
(357, 17, '{}'),
(358, 16, '{}'),
(359, 16, '{}'),
(360, 16, '{}'),
(361, 16, '{}'),
(362, 16, '{}'),
(363, 16, '{}'),
(364, 19, '[]'),
(365, 19, '[]'),
(366, 19, '[]'),
(367, 16, '{}'),
(368, 16, '{}'),
(369, 16, '{}'),
(370, 19, '[]'),
(371, 19, '[]'),
(372, 19, '[]'),
(373, 20, '{}'),
(374, 20, '{}'),
(375, 20, '{}'),
(376, 25, '{}'),
(377, 25, '{}'),
(378, 25, '{}'),
(379, 25, '{}'),
(380, 19, '[]'),
(381, 19, '[]'),
(382, 19, '[]'),
(383, 19, '[]'),
(384, 19, '[]'),
(385, 19, '[]'),
(386, 20, '{}'),
(387, 20, '{}'),
(388, 20, '{}'),
(389, 16, '{}'),
(390, 16, '{}'),
(391, 16, '{}'),
(392, 25, '{}'),
(393, 25, '{}'),
(394, 25, '{}'),
(395, 17, '{}'),
(396, 17, '{}'),
(397, 17, '{}'),
(398, 28, '{}'),
(399, 28, '{}'),
(400, 28, '{}'),
(401, 28, '{}'),
(402, 19, '[]'),
(403, 19, '[]'),
(404, 19, '[]'),
(405, 19, '[]'),
(406, 19, '[]'),
(407, 19, '[]'),
(408, 19, '[]'),
(409, 19, '[]'),
(410, 19, '[]'),
(411, 19, '[]'),
(412, 19, '[]'),
(413, 19, '[]'),
(414, 19, '[]'),
(415, 19, '[]'),
(416, 19, '[]'),
(417, 19, '[]'),
(418, 19, '[]'),
(419, 19, '[]'),
(420, 19, '[]'),
(421, 19, '[]'),
(422, 19, '[]'),
(423, 19, '[]'),
(424, 19, '[]'),
(425, 19, '[]'),
(426, 19, '[]'),
(427, 19, '[]'),
(428, 19, '[]'),
(429, 29, '{}'),
(430, 29, '{}'),
(431, 29, '{}'),
(432, 29, '{}'),
(433, 30, '{}'),
(434, 30, '{}'),
(435, 30, '{}'),
(436, 30, '{}'),
(437, 30, '{}'),
(438, 30, '{}'),
(439, 30, '{}'),
(440, 30, '{}'),
(441, 30, '{}'),
(442, 30, '{}'),
(443, 30, '{}'),
(444, 30, '{}'),
(445, 30, '{}'),
(446, 30, '{}'),
(447, 30, '{}'),
(448, 30, '{}'),
(449, 30, '{}'),
(450, 31, '{}'),
(451, 31, '{}'),
(452, 31, '{}'),
(453, 31, '{}'),
(454, 31, '{}'),
(455, 31, '{}'),
(456, 19, '[]'),
(457, 19, '[]'),
(458, 19, '[]'),
(459, 19, '[]'),
(460, 19, '[]'),
(461, 19, '[]'),
(462, 32, '{}'),
(463, 32, '{}'),
(464, 32, '{}'),
(465, 32, '{}'),
(466, 33, '{}'),
(467, 33, '{}'),
(468, 33, '{}'),
(469, 33, '{}'),
(470, 34, '{}'),
(471, 34, '{}'),
(472, 34, '{}'),
(473, 34, '{}'),
(474, 35, '{}'),
(475, 35, '{}'),
(476, 35, '{}'),
(477, 35, '{}'),
(478, 36, '{}'),
(479, 36, '{}'),
(480, 36, '{}'),
(481, 36, '{}'),
(482, 37, '{}'),
(483, 37, '{}'),
(484, 37, '{}'),
(485, 37, '{}'),
(486, 38, '{}'),
(487, 38, '{}'),
(488, 38, '{}'),
(489, 38, '{}'),
(490, 39, '{}'),
(491, 39, '{}'),
(492, 39, '{}'),
(493, 39, '{}'),
(494, 39, '{}'),
(495, 39, '{}'),
(496, 39, '{}'),
(497, 40, '{}'),
(498, 40, '{}'),
(499, 40, '{}'),
(500, 40, '{}'),
(501, 19, '[]'),
(502, 19, '[]'),
(503, 19, '[]'),
(504, 41, '{}'),
(505, 41, '{}'),
(506, 41, '{}'),
(507, 41, '{}'),
(508, 19, '[]'),
(509, 19, '[]'),
(510, 19, '[]'),
(511, 19, '[]'),
(512, 19, '[]'),
(513, 19, '[]'),
(514, 42, '{}'),
(515, 42, '{}'),
(516, 42, '{}'),
(517, 42, '{}'),
(518, 42, '{}'),
(519, 42, '{}'),
(520, 42, '{}'),
(521, 19, '[]'),
(522, 19, '[]'),
(523, 19, '[]'),
(524, 19, '[]'),
(525, 19, '[]'),
(526, 19, '[]'),
(527, 19, '[]'),
(528, 19, '[]'),
(529, 19, '[]'),
(530, 19, '[]'),
(531, 19, '[]'),
(532, 19, '[]'),
(533, 19, '[]'),
(534, 19, '[]'),
(535, 19, '[]'),
(536, 19, '[]'),
(537, 19, '[]'),
(538, 19, '[]'),
(539, 19, '[]'),
(540, 19, '[]'),
(541, 19, '[]'),
(542, 19, '[]'),
(543, 19, '[]'),
(544, 19, '[]'),
(545, 20, '{}'),
(546, 20, '{}'),
(547, 20, '{}'),
(548, 19, '[]'),
(549, 19, '[]'),
(550, 19, '[]'),
(551, 20, '{}'),
(552, 20, '{}'),
(553, 20, '{}'),
(554, 16, '{}'),
(555, 16, '{}'),
(556, 16, '{}'),
(557, 20, '{}'),
(558, 20, '{}'),
(559, 20, '{}'),
(560, 43, '{}'),
(561, 43, '{}'),
(562, 43, '{}'),
(563, 43, '{}'),
(564, 19, '[]'),
(565, 19, '[]'),
(566, 19, '[]'),
(567, 16, '{}'),
(568, 16, '{}'),
(569, 16, '{}'),
(570, 19, '[]'),
(571, 19, '[]'),
(572, 19, '[]'),
(573, 19, '[]'),
(574, 19, '[]'),
(575, 19, '[]'),
(576, 19, '[]'),
(577, 19, '[]'),
(578, 19, '[]'),
(579, 19, '[]'),
(580, 19, '[]'),
(581, 19, '[]'),
(582, 19, '[]'),
(583, 19, '[]'),
(584, 19, '[]'),
(585, 19, '[]'),
(586, 19, '[]'),
(587, 19, '[]'),
(588, 19, '[]'),
(589, 19, '[]'),
(590, 19, '[]'),
(591, 19, '[]'),
(592, 19, '[]'),
(593, 19, '[]'),
(594, 19, '[]'),
(595, 19, '[]'),
(596, 19, '[]'),
(597, 19, '[]'),
(598, 19, '[]'),
(599, 19, '[]'),
(600, 19, '[]'),
(601, 19, '[]'),
(602, 19, '[]'),
(603, 19, '[]'),
(604, 19, '[]'),
(605, 19, '[]'),
(606, 19, '[]'),
(607, 19, '[]'),
(608, 19, '[]'),
(609, 19, '[]'),
(610, 19, '[]'),
(611, 19, '[]'),
(612, 19, '[]'),
(613, 19, '[]'),
(614, 19, '[]'),
(615, 19, '[]'),
(616, 19, '[]'),
(617, 19, '[]'),
(618, 19, '[]'),
(619, 19, '[]'),
(620, 19, '[]'),
(621, 19, '[]'),
(622, 19, '[]'),
(623, 19, '[]'),
(624, 19, '[]'),
(625, 19, '[]'),
(626, 19, '[]'),
(627, 19, '[]'),
(628, 19, '[]'),
(629, 19, '[]'),
(630, 17, '{}'),
(631, 17, '{}'),
(632, 17, '{}'),
(633, 19, '[]'),
(634, 19, '[]'),
(635, 19, '[]'),
(636, 19, '[]'),
(637, 19, '[]'),
(638, 19, '[]'),
(639, 16, '{}'),
(640, 16, '{}'),
(641, 16, '{}'),
(642, 20, '{}'),
(643, 20, '{}'),
(644, 20, '{}'),
(645, 19, '[]'),
(646, 19, '[]'),
(647, 19, '[]'),
(648, 17, '{}'),
(649, 17, '{}'),
(650, 17, '{}'),
(651, 16, '{}'),
(652, 16, '{}'),
(653, 16, '{}'),
(654, 20, '{}'),
(655, 20, '{}'),
(656, 20, '{}'),
(657, 19, '[]'),
(658, 19, '[]'),
(659, 19, '[]'),
(660, 19, '[]'),
(661, 19, '[]'),
(662, 19, '[]'),
(663, 19, '[]'),
(664, 19, '[]'),
(665, 19, '[]'),
(666, 15, '{}'),
(667, 15, '{}'),
(668, 15, '{}'),
(669, 15, '{}'),
(670, 15, '{}'),
(671, 15, '{}'),
(672, 15, '{}'),
(673, 15, '{}'),
(674, 15, '{}'),
(675, 15, '{}'),
(676, 15, '{}'),
(677, 15, '{}'),
(678, 15, '{}'),
(679, 15, '{}'),
(680, 15, '{}'),
(681, 15, '{}'),
(682, 15, '{}'),
(683, 15, '{}'),
(684, 15, '{}'),
(685, 15, '{}'),
(686, 15, '{}'),
(687, 15, '{}'),
(688, 15, '{}'),
(689, 15, '{}'),
(690, 15, '{}'),
(691, 15, '{}'),
(692, 15, '{}'),
(693, 15, '{}'),
(694, 15, '{}'),
(695, 15, '{}'),
(696, 15, '{}'),
(697, 15, '{}'),
(698, 15, '{}'),
(699, 15, '{}'),
(700, 15, '{}'),
(701, 15, '{}'),
(702, 15, '{}'),
(703, 15, '{}'),
(704, 15, '{}'),
(705, 15, '{}'),
(706, 15, '{}'),
(707, 15, '{}'),
(708, 19, '[]'),
(709, 19, '[]'),
(710, 19, '[]'),
(711, 19, '[]'),
(712, 19, '[]'),
(713, 19, '[]'),
(714, 19, '[]'),
(715, 19, '[]'),
(716, 19, '[]'),
(717, 19, '[]'),
(718, 19, '[]'),
(719, 19, '[]'),
(720, 19, '[]'),
(721, 19, '[]'),
(722, 19, '[]'),
(723, 19, '[]'),
(724, 19, '[]'),
(725, 19, '[]'),
(726, 19, '[]'),
(727, 19, '[]'),
(728, 19, '[]'),
(729, 19, '[]'),
(730, 19, '[]'),
(731, 19, '[]'),
(732, 19, '[]'),
(733, 19, '[]'),
(734, 19, '[]'),
(735, 19, '[]'),
(736, 19, '[]'),
(737, 19, '[]'),
(738, 19, '[]'),
(739, 19, '[]'),
(740, 19, '[]'),
(741, 19, '[]'),
(742, 19, '[]'),
(743, 19, '[]'),
(744, 19, '[]'),
(745, 19, '[]'),
(746, 19, '[]'),
(747, 19, '[]'),
(748, 19, '[]'),
(749, 19, '[]'),
(750, 19, '[]'),
(751, 19, '[]'),
(752, 19, '[]'),
(753, 19, '[]'),
(754, 19, '[]'),
(755, 19, '[]'),
(756, 19, '[]'),
(757, 19, '[]'),
(758, 19, '[]'),
(759, 19, '[]'),
(760, 19, '[]'),
(761, 19, '[]'),
(762, 19, '[]'),
(763, 19, '[]'),
(764, 19, '[]'),
(765, 19, '[]'),
(766, 19, '[]'),
(767, 19, '[]'),
(768, 19, '[]'),
(769, 19, '[]'),
(770, 19, '[]'),
(771, 19, '[]'),
(772, 19, '[]'),
(773, 19, '[]'),
(774, 15, '{}'),
(775, 15, '{}'),
(776, 15, '{}'),
(777, 19, '[]'),
(778, 19, '[]'),
(779, 19, '[]'),
(780, 19, '[]'),
(781, 19, '[]'),
(782, 19, '[]'),
(783, 19, '[]'),
(784, 19, '[]'),
(785, 19, '[]'),
(786, 19, '[]'),
(787, 19, '[]'),
(788, 19, '[]'),
(789, 19, '[]'),
(790, 19, '[]'),
(791, 19, '[]'),
(792, 19, '[]'),
(793, 19, '[]'),
(794, 19, '[]'),
(795, 1, '{}'),
(796, 2, '{}'),
(797, 3, '{}'),
(798, 45, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL,
  `sender` int(11) DEFAULT 0,
  `reciever` int(11) DEFAULT 0,
  `amount` int(11) DEFAULT 0,
  `info` text DEFAULT '',
  `paid` varchar(255) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_job`
--

CREATE TABLE `delivery_job` (
  `id` int(11) NOT NULL,
  `active` float DEFAULT NULL,
  `jobType` varchar(50) DEFAULT NULL,
  `dropAmount` int(2) DEFAULT NULL,
  `pickup` varchar(255) DEFAULT NULL,
  `drop` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_job`
--

INSERT INTO `delivery_job` (`id`, `active`, `jobType`, `dropAmount`, `pickup`, `drop`) VALUES
(1, 1, 'trucker', 5, '{2747.82, 3454.10,56.01}', '{-441.81, -75.55, 41.18}'),
(2, 1, 'trucker', 6, '{2747.82, 3454.10,56.01}', '{1170.60, -291.72, 69.02}'),
(3, 1, 'trucker', 4, '{2747.82, 3454.10,56.01}', '{-45.31, -1662.97, 29.28}'),
(4, 0, 'trucker', 5, '{2747.82, 3454.10,56.01}', '{378.23, -1028.82, 29.33}'),
(5, 0, 'trucker', 3, '{2747.82, 3454.10,56.01}', '{-580.60, -1008.78, 22.32}');

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_code`
--

CREATE TABLE `dispatch_code` (
  `id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `display_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_important` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `playsound` varchar(255) DEFAULT NULL,
  `soundname` varchar(255) DEFAULT NULL,
  `blip_color` varchar(255) DEFAULT NULL,
  `is_police` varchar(255) DEFAULT NULL,
  `is_ems` varchar(255) DEFAULT NULL,
  `is_news` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_log`
--

CREATE TABLE `dispatch_log` (
  `dispatch_id` varchar(255) DEFAULT NULL,
  `cid` varchar(255) DEFAULT NULL,
  `first_street` varchar(255) DEFAULT NULL,
  `second_street` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  `origin_x` varchar(255) DEFAULT NULL,
  `origin_y` varchar(255) DEFAULT NULL,
  `origin_z` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_vehicle`
--

CREATE TABLE `dispatch_vehicle` (
  `id` int(11) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `first_color` varchar(255) DEFAULT NULL,
  `second_color` varchar(255) DEFAULT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `event_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `driving_tests`
--

CREATE TABLE `driving_tests` (
  `id` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `icid` int(11) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `points` varchar(255) DEFAULT '0',
  `passed` varchar(255) DEFAULT 'false',
  `results` text DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exploiters`
--

CREATE TABLE `exploiters` (
  `type` text DEFAULT NULL,
  `log` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `steam_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_variables`
--

CREATE TABLE `general_variables` (
  `id` int(11) NOT NULL,
  `value` text DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group_banking`
--

CREATE TABLE `group_banking` (
  `group_type` mediumtext DEFAULT NULL,
  `bank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_patients`
--

CREATE TABLE `hospital_patients` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `illness` text NOT NULL DEFAULT '',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_patients`
--

INSERT INTO `hospital_patients` (`id`, `cid`, `level`, `illness`, `time`) VALUES
(1, 1, 0, 'none', 0),
(2, 2, 0, 'none', 0),
(3, 3, 0, 'none', 0),
(4, 45, 0, 'none', 0);

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `model` text DEFAULT '',
  `data` text DEFAULT '{}',
  `furniture` text DEFAULT '{}',
  `mykeys` text NOT NULL DEFAULT '{}',
  `house_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_whitelist`
--

CREATE TABLE `jobs_whitelist` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT 'unemployed',
  `rank` int(11) DEFAULT 0,
  `callsign` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `type` text DEFAULT NULL,
  `log` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `steam_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`type`, `log`, `data`, `cid`, `steam_id`) VALUES
('Player Left', 'kempppii Has left the server', 'None', 0, 'STEAM_0:0:452073520'),
('Player Left', 'kempppii Has left the server', 'None', 0, 'STEAM_0:0:452073520'),
('Player Left', 'kempppii Has left the server', 'None', 0, 'STEAM_0:0:452073520'),
('Player Left', 'kempppii Has left the server', 'None', 0, 'STEAM_0:0:452073520'),
('Admin', 'Spawned car', '{\"car\":\"370z\"}', 0, 'steam:110000135e43060'),
('Admin', 'Spawned item', '{\"item\":\"lockpick\",\"amount\":\"1\"}', 0, 'steam:110000135e43060'),
('Admin', '04/22/23 - 05:15:28 - ADMIN: kempppii [steam:110000135e43060] set cloak: true', 'None', 0, 'steam:110000135e43060'),
('Cash Removed', 'Money removed from user, amount: 104', 'None', 0, 'STEAM_0:0:452073520'),
('Admin', '04/22/23 - 05:16:22 - ADMIN: kempppii [steam:110000135e43060] set cloak: false', 'None', 0, 'steam:110000135e43060'),
('Admin', 'Spawned item', '{\"item\":\"crowbar\",\"amount\":\"1\"}', 0, 'steam:110000135e43060'),
('Admin', '04/22/23 - 05:18:18 - ADMIN: kempppii [steam:110000135e43060] set cloak: true', 'None', 0, 'steam:110000135e43060'),
('Admin', '04/22/23 - 05:18:23 - ADMIN: kempppii [steam:110000135e43060] set cloak: false', 'None', 0, 'steam:110000135e43060'),
('Admin', '04/22/23 - 05:25:34 - ADMIN: kempppii [steam:110000135e43060] set cloak: true', 'None', 0, 'steam:110000135e43060'),
('Admin', '04/22/23 - 05:25:34 - ADMIN: kempppii [steam:110000135e43060] set cloak: false', 'None', 0, 'steam:110000135e43060'),
('Admin', '04/22/23 - 05:27:22 - ADMIN: kempppii [steam:110000135e43060] Teleported to Coords', 'None', 0, 'steam:110000135e43060'),
('Admin', 'Spawned car', '{\"car\":\"sultan\"}', 0, 'steam:110000135e43060'),
('Cash Removed', 'Money removed from user, amount: 100', 'None', 0, 'STEAM_0:0:452073520'),
('Admin', 'Spawned item', '{\"item\":\"knife\",\"amount\":\"1\"}', 0, 'steam:110000135e43060'),
('Job Pay', 'User recieved paycheck, amount: 10', 'None', 0, 'STEAM_0:0:452073520'),
('Cash Added', 'Money added to user, amount: 92', 'None', 0, 'STEAM_0:0:452073520'),
('Player Left', 'kempppii Has left the server', 'None', 0, 'STEAM_0:0:452073520');

-- --------------------------------------------------------

--
-- Table structure for table `mech_materials`
--

CREATE TABLE `mech_materials` (
  `garage` text DEFAULT 'Tow Garage',
  `Scrap` int(11) DEFAULT 0,
  `Plastic` int(11) DEFAULT 0,
  `Glass` int(11) DEFAULT 0,
  `Steel` int(11) DEFAULT 0,
  `Aluminium` int(11) DEFAULT 0,
  `Rubber` int(11) DEFAULT 0,
  `Copper` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mech_materials`
--

INSERT INTO `mech_materials` (`garage`, `Scrap`, `Plastic`, `Glass`, `Steel`, `Aluminium`, `Rubber`, `Copper`) VALUES
('Tow Garage 1', 250, 52, 0, 0, 0, 0, 0),
('Tow Garage 2', 250, 12, 0, 0, 0, 0, 11),
('Tow Garage 3', 250, 12, 0, 11, 11, 0, 0),
('Tow Garage 4', 215, 245, 235, 243, 20, 20, 15),
('Tow Garage 5', 12, 0, 0, 0, 0, 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `modded_cars`
--

CREATE TABLE `modded_cars` (
  `id` int(11) DEFAULT NULL,
  `license_plate` varchar(255) DEFAULT NULL,
  `Extractors` varchar(255) DEFAULT '{}',
  `Filter` varchar(255) DEFAULT '{}',
  `Suspension` varchar(255) DEFAULT '{}',
  `Rollbars` varchar(255) DEFAULT '{}',
  `Bored` varchar(255) DEFAULT '{}',
  `Carbon` varchar(255) DEFAULT '{}',
  `LFront` varchar(255) DEFAULT '{}',
  `RFront` varchar(255) DEFAULT '{}',
  `LBack` varchar(255) DEFAULT '{}',
  `RBack` varchar(255) DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_yp`
--

CREATE TABLE `phone_yp` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `job` varchar(500) DEFAULT NULL,
  `phonenumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone_yp`
--

INSERT INTO `phone_yp` (`id`, `name`, `job`, `phonenumber`) VALUES
(87, 'Test Test', 'Delivery Driver', '6874389648'),
(88, 'Test Test', 'Delivery Driver', '6874389648'),
(89, 'Test Test', 'Delivery Driver', '6874389648');

-- --------------------------------------------------------

--
-- Table structure for table `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `identifier` int(11) DEFAULT NULL,
  `tattoos` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `racing_tracks`
--

CREATE TABLE `racing_tracks` (
  `id` int(11) NOT NULL,
  `checkPoints` text DEFAULT NULL,
  `track_names` text DEFAULT NULL,
  `creator` text DEFAULT NULL,
  `distance` text DEFAULT NULL,
  `races` text DEFAULT NULL,
  `fastest_car` text DEFAULT NULL,
  `fastest_name` text DEFAULT NULL,
  `fastest_lap` int(11) DEFAULT NULL,
  `fastest_sprint` int(11) DEFAULT NULL,
  `fastest_sprint_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `secondary_jobs`
--

CREATE TABLE `secondary_jobs` (
  `id` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stash`
--

CREATE TABLE `stash` (
  `owner_cid` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `x` int(122) DEFAULT NULL,
  `y` int(122) DEFAULT NULL,
  `z` int(122) DEFAULT NULL,
  `g_x` int(122) DEFAULT NULL,
  `g_y` int(122) DEFAULT NULL,
  `g_z` int(122) DEFAULT NULL,
  `owner_pin` int(11) DEFAULT NULL,
  `guest_pin` int(11) DEFAULT NULL,
  `useGarage` int(11) DEFAULT NULL,
  `tier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `handle` longtext NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `hex_id` varchar(100) DEFAULT NULL,
  `steam_id` varchar(50) DEFAULT NULL,
  `community_id` varchar(100) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Uknown',
  `ip` varchar(50) NOT NULL DEFAULT 'Uknown',
  `rank` varchar(50) NOT NULL DEFAULT 'user',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `controls` text DEFAULT '{}',
  `settings` text DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hex_id`, `steam_id`, `community_id`, `license`, `name`, `ip`, `rank`, `date_created`, `controls`, `settings`) VALUES
(1, 'steam:110000135e43060', 'STEAM_0:0:452073520', '76561198864412770', 'license:b7effe18f16187aefd4434e41c5f48770400354f', 'kempppii', '0.0.0.0', 'dev', '2023-04-22 13:31:50', '{\"housingMain\":\"H\",\"radiovolumeup\":\"]\",\"handheld\":\"LEFTSHIFT+P\",\"devcloak\":\"F3\",\"helirappel\":\"X\",\"helivision\":\"INPUTAIM\",\"generalScoreboard\":\"U\",\"generalPhone\":\"P\",\"vehicleCruise\":\"X\",\"movementCrouch\":\"X\",\"vehicleBelt\":\"B\",\"devmarker\":\"F6\",\"radiovolumedown\":\"[\",\"vehicleSnavigate\":\"R\",\"devnoclip\":\"F2\",\"radiotoggle\":\",\",\"housingSecondary\":\"G\",\"vehicleDoors\":\"L\",\"switchRadioEmergency\":\"9\",\"newsNormal\":\"E\",\"generalTackle\":\"LEFTSHIFT+E\",\"helispotlight\":\"G\",\"loudSpeaker\":\"-\",\"vehicleHotwire\":\"H\",\"generalInventory\":\"TAB\",\"devmenu\":\"F5\",\"newsTools\":\"H\",\"actionBar\":\"Z\",\"showDispatchLog\":\"z\",\"vehicleSsound\":\"LEFTALT\",\"vehicleSlights\":\"Q\",\"generalChat\":\"T\",\"generalEscapeMenu\":\"ESC\",\"newsMovie\":\"M\",\"tokoToggle\":\"LEFTCTRL\",\"generalProp\":\"7\",\"distanceChange\":\"G\",\"movementCrawl\":\"Z\",\"generalUse\":\"E\",\"vehicleSearch\":\"G\",\"tokoptt\":\"CAPS\",\"heliCam\":\"E\",\"carStereo\":\"LEFTALT+P\",\"helilockon\":\"SPACE\",\"generalMenu\":\"F1\",\"generalUseSecondary\":\"ENTER\",\"generalUseThird\":\"G\",\"generalUseSecondaryWorld\":\"F\"}', '{\"hud\":[],\"tokovoip\":{\"localClickOff\":true,\"remoteClickOff\":true,\"remoteClickOn\":true,\"stereoAudio\":true,\"localClickOn\":true,\"mainVolume\":6.0,\"radioVolume\":5.0,\"clickVolume\":10.0}}');

-- --------------------------------------------------------

--
-- Table structure for table `users_whitelist`
--

CREATE TABLE `users_whitelist` (
  `id` int(11) NOT NULL,
  `steam_id` varchar(50) DEFAULT NULL,
  `power` int(11) NOT NULL DEFAULT 0,
  `admin_name` text NOT NULL,
  `user_name` text NOT NULL,
  `user_ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_apartment`
--

CREATE TABLE `user_apartment` (
  `room` int(11) NOT NULL,
  `roomType` int(1) DEFAULT NULL,
  `cid` mediumtext NOT NULL,
  `mykeys` varchar(50) NOT NULL DEFAULT '[]',
  `ilness` mediumtext NOT NULL DEFAULT 'Alive',
  `isImprisoned` mediumtext NOT NULL DEFAULT '0',
  `isClothesSpawn` mediumtext NOT NULL DEFAULT 'true',
  `cash` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_bans`
--

CREATE TABLE `user_bans` (
  `id` int(11) NOT NULL,
  `admin` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Unknown',
  `ip` varchar(255) NOT NULL,
  `steam_id` varchar(100) NOT NULL,
  `license` varchar(255) NOT NULL,
  `bandate` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT 'No Reason',
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_boat`
--

CREATE TABLE `user_boat` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT '{}',
  `boat_name` varchar(255) DEFAULT '{}',
  `boat_model` varchar(255) DEFAULT '{}',
  `boat_price` varchar(255) DEFAULT '{}',
  `boat_plate` varchar(255) DEFAULT '{}',
  `boat_state` varchar(255) DEFAULT '{}',
  `boat_colorprimary` varchar(255) DEFAULT '{}',
  `boat_colorsecondary` varchar(255) DEFAULT '{}',
  `boat_pearlescentcolor` varchar(255) DEFAULT '{}',
  `boat_wheelcolor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_controls`
--

CREATE TABLE `user_controls` (
  `hex_id` varchar(255) NOT NULL DEFAULT '',
  `controls` varchar(255) DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `item_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `information` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL,
  `dropped` tinyint(4) NOT NULL DEFAULT 0,
  `creationDate` bigint(20) NOT NULL DEFAULT 0,
  `quality` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory2`
--

CREATE TABLE `user_inventory2` (
  `item_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `information` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL,
  `dropped` tinyint(4) NOT NULL DEFAULT 0,
  `creationDate` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_inventory2`
--

INSERT INTO `user_inventory2` (`item_id`, `id`, `name`, `information`, `slot`, `dropped`, `creationDate`) VALUES
('mobilephone', 1, 'ply-18', '{}', 13, 0, 1610848306798),
('idcard', 2, 'motel2-1', '{\"identifier\":\"1\",\"Name\":\"Daniel\",\"Surname\":\"Walker\",\"Sex\":0,\"DOB\":\"1999-12-01\"}', 7, 0, 1610848306797),
('1593441988', 3, 'ply-33', '{\"cartridge\":\"iYq-212\",\"serial\":89391}', 1, 0, 1610852208614),
('thermite', 46, 'motel2-1', '{}', 8, 0, 1610855410963),
('thermite', 47, 'motel2-1', '{}', 8, 0, 1610855411014),
('thermite', 48, 'motel2-1', '{}', 8, 0, 1610855411113),
('rollcash', 54, 'motel2-1', '{}', 1, 0, 1610855520050),
('rollcash', 55, 'motel2-1', '{}', 1, 0, 1610855520050),
('rollcash', 56, 'motel2-1', '{}', 1, 0, 1610855531866),
('rollcash', 57, 'motel2-1', '{}', 1, 0, 1610855531866),
('rollcash', 58, 'motel2-1', '{}', 1, 0, 1610855549384),
('rollcash', 59, 'motel2-1', '{}', 1, 0, 1610855549384),
('mobilephone', 74, 'StashHouse-1', '{}', 21, 0, 1610927984602),
('453432689', 85, 'StashHouse-1', '{\"cartridge\":\"XwS-530\",\"serial\":72821}', 18, 0, 1610995721447),
('cuffs', 138, 'ply-1', '{}', 37, 0, 1610997327266),
('idcard', 156, 'StashHouse-1', '{\"identifier\":\"1\",\"Name\":\"Daniel\",\"Surname\":\"Walker\",\"Sex\":0,\"DOB\":\"1999-12-01\"}', 37, 0, 1611016116152),
('radio', 161, 'ply-32', '{}', 3, 0, 1611020745627),
('mobilephone', 162, 'ply-32', '{}', 2, 0, 1611021230542),
('idcard', 163, 'ply-32', '{\"identifier\":\"32\",\"Name\":\"Trevor\",\"Surname\":\"Jackson\",\"Sex\":0,\"DOB\":\"1965-09-09\"}', 4, 0, 1611021230541),
('rollcash', 168, 'ply-32', '{}', 5, 0, 1611022588104),
('rollcash', 169, 'ply-32', '{}', 5, 0, 1611022588104),
('rollcash', 170, 'ply-32', '{}', 5, 0, 1611022588104),
('rollcash', 171, 'ply-32', '{}', 5, 0, 1611022588104),
('rollcash', 172, 'ply-32', '{}', 5, 0, 1611022588104),
('rollcash', 173, 'ply-32', '{}', 5, 0, 1611022588104),
('rollcash', 174, 'ply-32', '{}', 5, 0, 1611022588104),
('rollcash', 175, 'ply-32', '{}', 5, 0, 1611022588104),
('sandwich', 176, 'ply-32', '{}', 6, 0, 1611023089032),
('sandwich', 177, 'ply-32', '{}', 6, 0, 1611023089232),
('sandwich', 178, 'ply-32', '{}', 6, 0, 1611023092337),
('sandwich', 179, 'ply-32', '{}', 6, 0, 1611023092337),
('sandwich', 180, 'ply-32', '{}', 6, 0, 1611023092337),
('sandwich', 181, 'ply-32', '{}', 6, 0, 1611023092337),
('sandwich', 182, 'ply-32', '{}', 6, 0, 1611023092337),
('radio', 183, 'ply-1', '{}', 40, 0, 1611027799477),
('lockpick', 255, 'ply-50', '{}', 18, 0, 1611087991936),
('lockpick', 256, 'ply-50', '{}', 18, 0, 1611087991936),
('lockpick', 257, 'StashHouse-1', '{}', 26, 0, 1611087991936),
('lockpick', 258, 'StashHouse-1', '{}', 26, 0, 1611087991936),
('lockpick', 259, 'StashHouse-1', '{}', 26, 0, 1611087991936),
('Gruppe6Card', 260, 'ply-18', '{}', 7, 0, 1611092438587),
('-771403250', 261, 'ply-19', '{}', 1, 0, 1611093056350),
('rollcash', 267, 'motel2-1', '{}', 1, 0, 1611093589080),
('rollcash', 268, 'motel2-1', '{}', 1, 0, 1611093589080),
('mobilephone', 269, 'ply-33', '{}', 40, 0, 1611094812100),
('idcard', 270, 'ply-33', '{\"identifier\":\"33\",\"Name\":\"penis\",\"Surname\":\"penisee\",\"Sex\":0,\"DOB\":\"1999-11-11\"}', 39, 0, 1611094812099),
('pistolammo', 277, 'ply-33', '{}', 2, 0, 1611095178094),
('pistolammo', 278, 'ply-33', '{}', 2, 0, 1611095178244),
('joint', 287, 'ply-33', '{}', 3, 0, 1611095299222),
('joint', 288, 'ply-33', '{}', 3, 0, 1611095299222),
('joint', 289, 'ply-33', '{}', 3, 0, 1611095299323),
('joint', 290, 'ply-33', '{}', 3, 0, 1611095299323),
('joint', 291, 'ply-33', '{}', 3, 0, 1611095299323),
('joint', 292, 'ply-33', '{}', 3, 0, 1611095299323),
('joint', 293, 'ply-33', '{}', 3, 0, 1611095299323),
('joint', 294, 'ply-33', '{}', 3, 0, 1611095299423),
('joint', 295, 'ply-33', '{}', 3, 0, 1611095299423),
('joint', 296, 'ply-33', '{}', 3, 0, 1611095299423),
('joint', 297, 'ply-33', '{}', 3, 0, 1611095299423),
('joint', 298, 'ply-33', '{}', 3, 0, 1611095299423),
('joint', 299, 'ply-33', '{}', 3, 0, 1611095299523),
('joint', 300, 'ply-33', '{}', 3, 0, 1611095299523),
('joint', 301, 'ply-33', '{}', 3, 0, 1611095299523),
('joint', 302, 'ply-33', '{}', 3, 0, 1611095299523),
('joint', 303, 'ply-33', '{}', 3, 0, 1611095299523),
('joint', 304, 'ply-33', '{}', 3, 0, 1611095299623),
('joint', 305, 'ply-33', '{}', 3, 0, 1611095299623),
('joint', 306, 'ply-33', '{}', 3, 0, 1611095299623),
('joint', 307, 'ply-33', '{}', 3, 0, 1611095299623),
('joint', 308, 'ply-33', '{}', 3, 0, 1611095299623),
('joint', 309, 'ply-33', '{}', 3, 0, 1611095299723),
('joint', 310, 'ply-33', '{}', 3, 0, 1611095299723),
('joint', 311, 'ply-33', '{}', 3, 0, 1611095299723),
('joint', 312, 'ply-33', '{}', 3, 0, 1611095299723),
('joint', 313, 'ply-33', '{}', 3, 0, 1611095299723),
('joint', 314, 'ply-33', '{}', 3, 0, 1611095299923),
('joint', 315, 'ply-33', '{}', 3, 0, 1611095299923),
('joint', 316, 'ply-33', '{}', 3, 0, 1611095299923),
('joint', 317, 'ply-33', '{}', 3, 0, 1611095299923),
('joint', 318, 'ply-33', '{}', 3, 0, 1611095299923),
('mobilephone', 359, 'ply-19', '{}', 36, 0, 1611096738471),
('mobilephone', 361, 'ply-34', '{}', 2, 0, 1611103889663),
('idcard', 362, 'ply-34', '{\"identifier\":\"34\",\"Name\":\"John\",\"Surname\":\"Cena\",\"Sex\":0,\"DOB\":\"1995-05-05\"}', 1, 0, 1611103889662),
('pix1', 370, 'ply-32', '{}', 1, 0, 1611106565290),
('coffee', 375, 'ply-32', '{}', 7, 0, 1611106859057),
('lockpick', 379, 'ply-32', '{}', 9, 0, 1611108198614),
('moneyshot', 381, 'ply-32', '{}', 8, 0, 1611109770653),
('mobilephone', 409, 'ply-1', '{}', 38, 0, 1611160797198),
('lockpick', 419, 'ply-18', '{}', 3, 0, 1611179815975),
('lockpick', 420, 'ply-18', '{}', 3, 0, 1611179815975),
('lockpick', 421, 'ply-18', '{}', 3, 0, 1611179815975),
('lockpick', 422, 'ply-18', '{}', 3, 0, 1611179815975),
('lockpick', 423, 'ply-18', '{}', 3, 0, 1611179815975),
('lockpick', 424, 'ply-18', '{}', 3, 0, 1611179815975),
('lockpick', 425, 'ply-18', '{}', 3, 0, 1611179815975),
('lockpick', 426, 'ply-18', '{}', 3, 0, 1611179815975),
('lockpick', 427, 'ply-18', '{}', 3, 0, 1611179815975),
('lockpick', 428, 'ply-18', '{}', 3, 0, 1611179815975),
('mobilephone', 444, 'ply-35', '{}', 40, 0, 1611186572419),
('idcard', 445, 'Glovebox-86BAO827', '{\"identifier\":\"35\",\"Name\":\"Jaxon\",\"Surname\":\"Cole\",\"Sex\":0,\"DOB\":\"1995-04-24\"}', 1, 0, 1611186572418),
('mobilephone', 449, 'ply-36', '{}', 2, 0, 1611273066313),
('idcard', 450, 'ply-36', '{\"identifier\":\"36\",\"Name\":\"pew\",\"Surname\":\"pew\",\"Sex\":0,\"DOB\":\"1999-11-11\"}', 1, 0, 1611273066312),
('radio', 451, 'ply-36', '{}', 3, 0, 1611273342476),
('mobilephone', 498, 'ply-37', '{}', 9, 0, 1611300811795),
('idcard', 499, 'ply-37', '{\"identifier\":\"37\",\"Name\":\"Carter\",\"Surname\":\"Johnson\",\"Sex\":0,\"DOB\":\"1998-08-28\"}', 6, 0, 1611300811794),
('pistolammo', 505, 'ply-37', '{}', 15, 0, 1611301443407),
('pistolammo', 506, 'ply-37', '{}', 15, 0, 1611301443557),
('pistolammo', 507, 'ply-37', '{}', 15, 0, 1611301443557),
('pistolammo', 508, 'ply-37', '{}', 15, 0, 1611301443557),
('pistolammo', 509, 'ply-37', '{}', 15, 0, 1611301443557),
('pistolammo', 510, 'ply-37', '{}', 15, 0, 1611301443557),
('-771403250', 695, 'ply-37', '{}', 1, 0, 1611305130522),
('joint', 725, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 726, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 727, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 728, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 729, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 730, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 731, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 732, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 733, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 734, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 735, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 736, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 737, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 738, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 739, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 740, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 741, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 742, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 743, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 744, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 745, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 746, 'ply-37', '{}', 7, 0, 1611305354068),
('joint', 747, 'ply-37', '{}', 7, 0, 1611305354068),
('Gruppe6Card2', 1071, 'StashHouse-1', '{}', 8, 0, 1611357955836),
('Gruppe6Card2', 1072, 'StashHouse-1', '{}', 8, 0, 1611357955836),
('Gruppe6Card2', 1073, 'StashHouse-1', '{}', 8, 0, 1611357955836),
('Gruppe6Card2', 1074, 'StashHouse-1', '{}', 8, 0, 1611357955836),
('Gruppe6Card2', 1075, 'StashHouse-1', '{}', 8, 0, 1611357955836),
('Gruppe6Card2', 1076, 'StashHouse-1', '{}', 8, 0, 1611357955836),
('Gruppe6Card2', 1077, 'StashHouse-1', '{}', 8, 0, 1611357955836),
('Gruppe6Card2', 1078, 'StashHouse-1', '{}', 8, 0, 1611357955836),
('Gruppe6Card2', 1079, 'StashHouse-1', '{}', 8, 0, 1611357955836),
('locksystem', 1087, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1088, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1089, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1090, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1091, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1092, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1093, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1094, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1095, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1096, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1097, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1098, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('locksystem', 1099, 'StashHouse-1', '{}', 22, 0, 1611358030042),
('markedbills', 1244, 'Trunk-26PYT022', '{}', 1, 0, 1611358065853),
('markedbills', 1245, 'Trunk-26PYT022', '{}', 1, 0, 1611358065853),
('mobilephone', 1246, 'StashHouse-1', '{}', 21, 0, 1611358235374),
('radio', 1248, 'StashHouse-1', '{}', 19, 0, 1611358565643),
('Gruppe6Card22', 1541, 'StashHouse-1', '{}', 9, 0, 1611385951670),
('locksystem', 1615, 'StashHouse-1', '{}', 17, 0, 1611390438614),
('locksystem', 1616, 'StashHouse-1', '{}', 17, 0, 1611390438614),
('locksystem', 1617, 'StashHouse-1', '{}', 17, 0, 1611390438614),
('markedbills', 1657, 'StashHouse-1', '{}', 5, 0, 1611390440617),
('markedbills', 1658, 'StashHouse-1', '{}', 5, 0, 1611390440617),
('-1074790547', 1739, 'StashHouse-1', '{}', 1, 0, 1611392863710),
('IFAK', 1748, 'StashHouse-1', '{}', 16, 0, 1611392964162),
('watch', 1750, 'ply-50', '{}', 19, 0, 1611393145912),
('oxy', 1797, 'ply-1', '{}', 33, 0, 1611393516329),
('oxy', 1798, 'ply-1', '{}', 33, 0, 1611393516329),
('rubber', 1936, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1937, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1938, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1939, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1940, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1941, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1942, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1943, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1944, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1945, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1946, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1947, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1948, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1949, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1950, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1951, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1952, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1953, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1954, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1955, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1956, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1957, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1958, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1959, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1960, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1961, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1962, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1963, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1964, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1965, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1966, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1967, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1968, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1969, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1970, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1971, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1972, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1973, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1974, 'ply-18', '{}', 8, 0, 1611421024296),
('rubber', 1975, 'ply-18', '{}', 8, 0, 1611421024296),
('scrapmetal', 1976, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1977, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1978, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1979, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1980, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1981, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1982, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1983, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1984, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1985, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1986, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1987, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1988, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1989, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1990, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1991, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1992, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1993, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1994, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1995, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1996, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1997, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1998, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 1999, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2000, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2001, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2002, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2003, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2004, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2005, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2006, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2007, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2008, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2009, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2010, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2011, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2012, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2013, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2014, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2015, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2016, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2017, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2018, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2019, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2020, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2021, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2022, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2023, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2024, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2025, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2026, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2027, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2028, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2029, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2030, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2031, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2032, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2033, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2034, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2035, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2036, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2037, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2038, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2039, 'ply-18', '{}', 9, 0, 1611421129115),
('scrapmetal', 2040, 'ply-18', '{}', 9, 0, 1611421129115),
('plastic', 2046, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2047, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2048, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2049, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2050, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2051, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2052, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2053, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2054, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2055, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2056, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2057, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2058, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2059, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2060, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2061, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2062, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2063, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2064, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2065, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2066, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2067, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2068, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2069, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2070, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2071, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2072, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2073, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2074, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2075, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2076, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2077, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2078, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2079, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2080, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2081, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2082, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2083, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2084, 'ply-18', '{}', 10, 0, 1611421374770),
('plastic', 2085, 'ply-18', '{}', 10, 0, 1611421374770),
('recyclablematerial', 2086, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2087, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2088, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2089, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2090, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2091, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2092, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2093, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2094, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2095, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2096, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2097, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2098, 'ply-18', '{}', 12, 0, 1611421374820),
('recyclablematerial', 2099, 'ply-18', '{}', 12, 0, 1611421374820),
('aluminium', 2150, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2151, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2152, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2153, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2154, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2155, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2156, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2157, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2158, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2159, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2160, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2161, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2162, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2163, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2164, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2165, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2166, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2167, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2168, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2169, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2170, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2171, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2172, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2173, 'ply-18', '{}', 6, 0, 1611421543431),
('aluminium', 2174, 'ply-18', '{}', 6, 0, 1611421543431),
('recyclablematerial', 2245, 'ply-18', '{}', 12, 0, 1611421793089),
('recyclablematerial', 2246, 'ply-18', '{}', 12, 0, 1611421793089),
('recyclablematerial', 2247, 'ply-18', '{}', 12, 0, 1611421793089),
('recyclablematerial', 2248, 'ply-18', '{}', 12, 0, 1611421793089),
('recyclablematerial', 2249, 'ply-18', '{}', 12, 0, 1611421793089),
('recyclablematerial', 2250, 'ply-18', '{}', 12, 0, 1611421793089),
('recyclablematerial', 2251, 'ply-18', '{}', 12, 0, 1611421793089),
('recyclablematerial', 2252, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2253, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2254, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2255, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2256, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2257, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2258, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2259, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2260, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2261, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2262, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2263, 'ply-18', '{}', 12, 0, 1611421971855),
('recyclablematerial', 2270, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2271, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2272, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2273, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2274, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2275, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2276, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2277, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2278, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2279, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2280, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2281, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2282, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2283, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2284, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2285, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2286, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2287, 'ply-18', '{}', 12, 0, 1611422038809),
('recyclablematerial', 2288, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2289, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2290, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2291, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2292, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2293, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2294, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2295, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2296, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2297, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2298, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2299, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2300, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2301, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2302, 'ply-18', '{}', 12, 0, 1611422083576),
('recyclablematerial', 2303, 'ply-18', '{}', 12, 0, 1611422150954),
('recyclablematerial', 2304, 'ply-18', '{}', 12, 0, 1611422150954),
('recyclablematerial', 2305, 'ply-18', '{}', 12, 0, 1611422150954),
('recyclablematerial', 2306, 'ply-18', '{}', 12, 0, 1611422150954),
('recyclablematerial', 2307, 'ply-18', '{}', 12, 0, 1611422150954),
('recyclablematerial', 2308, 'ply-18', '{}', 12, 0, 1611422150954),
('recyclablematerial', 2309, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2310, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2311, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2312, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2313, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2314, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2315, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2316, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2317, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2318, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2319, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2320, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2321, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2322, 'ply-18', '{}', 12, 0, 1611422583639),
('recyclablematerial', 2323, 'ply-18', '{}', 12, 0, 1611422583639),
('pix1', 2324, 'StashHouse-1', '{}', 2, 0, 1611422583639),
('pix1', 2325, 'StashHouse-1', '{}', 2, 0, 1611422583639),
('pix1', 2326, 'StashHouse-1', '{}', 2, 0, 1611422583639),
('recyclablematerial', 2327, 'ply-18', '{}', 12, 0, 1611422651773),
('recyclablematerial', 2328, 'ply-18', '{}', 12, 0, 1611422651773),
('recyclablematerial', 2329, 'ply-18', '{}', 12, 0, 1611422651773),
('recyclablematerial', 2330, 'ply-18', '{}', 12, 0, 1611422651773),
('recyclablematerial', 2331, 'ply-18', '{}', 12, 0, 1611422651773),
('recyclablematerial', 2332, 'ply-18', '{}', 12, 0, 1611422651773),
('1593441988', 2343, 'StashHouse-1', '{\"cartridge\":\"kMy-507\",\"serial\":14498}', 23, 0, 1611423555673),
('rifleammo', 2643, 'StashHouse-1', '{}', 30, 0, 1611429566190),
('radio', 2664, 'ply-19', '{}', 37, 0, 1611430019947),
('radio', 2665, 'ply-18', '{}', 11, 0, 1611430413800),
('lockpick', 2666, 'ply-18', '{}', 3, 0, 1611434981214),
('lockpick', 2667, 'ply-18', '{}', 3, 0, 1611434981364),
('lockpick', 2668, 'ply-18', '{}', 3, 0, 1611434981564),
('lockpick', 2669, 'ply-18', '{}', 3, 0, 1611434981714),
('idcard', 2705, 'StashHouse-1', '{\"identifier\":\"1\",\"Name\":\"Daniel\",\"Surname\":\"Walker\",\"Sex\":0,\"DOB\":\"1999-12-01\"}', 38, 0, 1611453156384),
('idcard', 2706, 'ply-21', '{\"identifier\":\"21\",\"Name\":\"Noah\",\"Surname\":\"Jamerson\",\"Sex\":0,\"DOB\":\"1995-08-20\"}', 6, 0, 1611453286420),
('idcard', 2707, 'ply-1', '{\"identifier\":\"1\",\"Name\":\"Daniel\",\"Surname\":\"Walker\",\"Sex\":0,\"DOB\":\"1999-12-01\"}', 39, 0, 1611455738234),
('-771403250', 2839, 'ply-1', '{}', 1, 0, 1611458503663),
('584646201', 2869, 'StashHouse-1', '{}', 20, 0, 1611460426860),
('584646201', 2870, 'StashHouse-1', '{}', 15, 0, 1611460434820),
('radio', 2910, 'ply-50', '{}', 16, 0, 1611478964614),
('mobilephone', 2911, 'ply-50', '{}', 17, 0, 1611479229965),
('pix2', 2920, 'motel2-19', '{}', 1, 0, 1611518054502),
('pix2', 2921, 'motel2-19', '{}', 1, 0, 1611518054502),
('pistolammo', 3269, 'ply-19', '{}', 6, 0, 1611519084606),
('pistolammo', 3270, 'ply-19', '{}', 6, 0, 1611519084606),
('pistolammo', 3271, 'ply-19', '{}', 6, 0, 1611519084606),
('pistolammo', 3272, 'ply-19', '{}', 6, 0, 1611519084606),
('idcard', 3273, 'StashHouse-1', '{\"identifier\":\"18\",\"Name\":\"Lor\",\"Surname\":\"Spas\",\"Sex\":0,\"DOB\":\"1990-01-05\"}', 36, 0, 1611519241491),
('idcard', 3274, 'ply-19', '{\"identifier\":\"19\",\"Name\":\"Chris\",\"Surname\":\"Standerson\",\"Sex\":0,\"DOB\":\"1990-10-10\"}', 14, 0, 1611519249800),
('oxy', 3324, 'ply-19', '{}', 2, 0, 1611519520215),
('oxy', 3325, 'ply-19', '{}', 2, 0, 1611519665405),
('oxy', 3326, 'ply-19', '{}', 2, 0, 1611519665405),
('oxy', 3327, 'ply-19', '{}', 2, 0, 1611519665405),
('oxy', 3328, 'ply-19', '{}', 2, 0, 1611519665405),
('oxy', 3329, 'ply-19', '{}', 2, 0, 1611519665405),
('oxy', 3330, 'ply-19', '{}', 2, 0, 1611519665405),
('oxy', 3331, 'ply-19', '{}', 2, 0, 1611519665405),
('oxy', 3332, 'ply-19', '{}', 2, 0, 1611519665405),
('oxy', 3333, 'ply-19', '{}', 2, 0, 1611519665405),
('oxy', 3334, 'ply-19', '{}', 2, 0, 1611519665405),
('cuffs', 3335, 'ply-19', '{}', 39, 0, 1611519672131),
('lockpick', 3337, 'ply-19', '{}', 38, 0, 1611519907161),
('lockpick', 3338, 'ply-19', '{}', 38, 0, 1611519907161),
('lockpick', 3339, 'ply-19', '{}', 38, 0, 1611519907161),
('lockpick', 3340, 'ply-19', '{}', 38, 0, 1611519907161),
('locksystem', 3357, 'StashHouse-1', '{}', 22, 0, 1611526439874),
('locksystem', 3358, 'StashHouse-1', '{}', 22, 0, 1611526439874),
('locksystem', 3359, 'StashHouse-1', '{}', 22, 0, 1611526439874),
('locksystem', 3360, 'StashHouse-1', '{}', 22, 0, 1611526439874),
('pix1', 3370, 'StashHouse-1', '{}', 2, 0, 1611526689625),
('nitrous', 3397, 'motel2-19', '{}', 2, 0, 1611532958481),
('nitrous', 3398, 'motel2-19', '{}', 2, 0, 1611532958631),
('nitrous', 3399, 'motel2-19', '{}', 2, 0, 1611532958831),
('nitrous', 3400, 'motel2-19', '{}', 2, 0, 1611532959631),
('nitrous', 3401, 'motel2-19', '{}', 2, 0, 1611532959781),
('453432689', 3402, 'ply-50', '{\"cartridge\":\"PzK-750\",\"serial\":19197}', 1, 0, 1611533404695),
('Gruppe6Card222', 3414, 'StashHouse-1', '{}', 10, 0, 1611533833334),
('Gruppe6Card22', 3415, 'StashHouse-1', '{}', 9, 0, 1611533840206),
('Gruppe6Card2', 3416, 'StashHouse-1', '{}', 8, 0, 1611533848316),
('3219281620', 3423, 'ply-50', '{\"cartridge\":\"sto-759\",\"serial\":92121}', 9, 0, 1611539683352),
('911657153', 3424, 'ply-50', '{\"cartridge\":\"xKS-139\",\"serial\":76854}', 8, 0, 1611539685956),
('1737195953', 3425, 'ply-50', '{\"cartridge\":\"pVI-783\",\"serial\":30545}', 15, 0, 1611539687556),
('pistolammo', 3426, 'ply-50', '{}', 14, 0, 1611539689509),
('pistolammo', 3427, 'ply-50', '{}', 14, 0, 1611539689509),
('pistolammo', 3428, 'ply-50', '{}', 14, 0, 1611539689509),
('pistolammo', 3429, 'ply-50', '{}', 14, 0, 1611539690560),
('watch', 3442, 'ply-50', '{}', 10, 0, 1611539706882),
('mobilephone', 3475, 'ply-40', '{}', 8, 0, 1611558716241),
('radio', 3476, 'ply-40', '{}', 4, 0, 1611559714330),
('okaylockpick', 3480, 'jail-container|1631|2526', '{}', 6, 0, 1611559831923),
('recyclablematerial', 3481, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3482, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3483, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3484, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3485, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3486, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3487, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3488, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3489, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3490, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3491, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3492, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3493, 'ply-50', '{}', 12, 0, 1611561968145),
('recyclablematerial', 3494, 'ply-50', '{}', 12, 0, 1611561968145),
('oxy', 3507, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3508, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3509, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3510, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3511, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3512, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3513, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3514, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3515, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3516, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3517, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3518, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3519, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3520, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3521, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3522, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3523, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3524, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3525, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3526, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3527, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3528, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3529, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3530, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3531, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3532, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3533, 'ply-50', '{}', 13, 0, 1611562396921),
('oxy', 3534, 'ply-50', '{}', 13, 0, 1611562396921),
('joint', 3614, 'StashHouse-1', '{}', 28, 0, 1611564999222),
('joint', 3615, 'StashHouse-1', '{}', 28, 0, 1611564999222),
('joint', 3616, 'StashHouse-1', '{}', 28, 0, 1611564999222),
('joint', 3617, 'StashHouse-1', '{}', 28, 0, 1611564999222),
('joint', 3618, 'StashHouse-1', '{}', 28, 0, 1611564999222),
('joint', 3619, 'StashHouse-1', '{}', 28, 0, 1611564999222),
('joint', 3620, 'StashHouse-1', '{}', 28, 0, 1611564999222),
('joint', 3621, 'StashHouse-1', '{}', 28, 0, 1611564999222),
('joint', 3622, 'StashHouse-1', '{}', 28, 0, 1611564999222),
('joint', 3623, 'StashHouse-1', '{}', 28, 0, 1611564999222),
('joint', 3624, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3625, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3626, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3627, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3628, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3629, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3630, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3631, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3632, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3633, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3634, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3635, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3636, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3637, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3638, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3639, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('joint', 3640, 'StashHouse-1', '{}', 28, 0, 1611564999874),
('-86904375', 3647, 'ply-40', '{\"cartridge\":\"kGa-190\",\"serial\":69422}', 1, 0, 1611568371749),
('2343591895', 3649, 'ply-40', '{\"cartridge\":\"Rkk-641\",\"serial\":24398}', 5, 0, 1611568391854),
('okaylockpick', 3654, 'jail-container|1631|2526', '{}', 6, 0, 1611616379697),
('okaylockpick', 3659, 'jail-container|1631|2526', '{}', 6, 0, 1611616928569),
('mobilephone', 3660, 'ply-47', '{}', 2, 0, 1611617608474),
('idcard', 3661, 'ply-47', '{\"identifier\":\"47\",\"Name\":\"Jack\",\"Surname\":\"Brickley\",\"Sex\":0,\"DOB\":\"1990-08-10\"}', 1, 0, 1611617608473),
('mobilephone', 3662, 'ply-41', '{}', 36, 0, 1611618081389),
('idcard', 3663, 'personalMRPD-41', '{\"identifier\":\"41\",\"Name\":\"Ron\",\"Surname\":\"Gunners\",\"Sex\":0,\"DOB\":\"1989-10-10\"}', 1, 0, 1611618081389),
('methbag', 3665, 'jail-container|1631|2526', '{}', 3, 0, 1611618554758),
('armor', 3669, 'ply-37', '{}', 10, 0, 1611619082522),
('armor', 3670, 'ply-37', '{}', 10, 0, 1611619082522),
('thermite', 3680, 'ply-37', '{}', 5, 0, 1611621648363),
('okaylockpick', 3682, 'jail-container|1631|2526', '{}', 6, 0, 1611623544668),
('oxy', 3689, 'ply-37', '{}', 4, 0, 1611624722768),
('oxy', 3690, 'ply-37', '{}', 4, 0, 1611624722768),
('oxy', 3691, 'ply-37', '{}', 4, 0, 1611624722768),
('oxy', 3692, 'ply-37', '{}', 4, 0, 1611624722768),
('oxy', 3693, 'ply-37', '{}', 4, 0, 1611624722768),
('oxy', 3694, 'ply-37', '{}', 4, 0, 1611624722768),
('oxy', 3695, 'ply-37', '{}', 4, 0, 1611624722768),
('oxy', 3696, 'ply-37', '{}', 4, 0, 1611624722768),
('oxy', 3697, 'ply-37', '{}', 4, 0, 1611624722768),
('oxy', 3698, 'ply-37', '{}', 4, 0, 1611624722768),
('okaylockpick', 3699, 'jail-container|1631|2526', '{}', 6, 0, 1611625147256),
('sandwich', 3702, 'ply-37', '{}', 8, 0, 1611625195642),
('sandwich', 3703, 'ply-37', '{}', 8, 0, 1611625195642),
('sandwich', 3704, 'ply-37', '{}', 8, 0, 1611625195642),
('615608432', 3718, 'ply-37', '{}', 11, 0, 1611625305135),
('615608432', 3719, 'ply-37', '{}', 11, 0, 1611625305135),
('3231910285', 3734, 'ply-37', '{}', 2, 0, 1611625594822),
('rifleammo', 3742, 'ply-37', '{}', 3, 0, 1611625618603),
('rifleammo', 3743, 'ply-37', '{}', 3, 0, 1611625618603),
('rifleammo', 3744, 'ply-37', '{}', 3, 0, 1611625618603),
('rifleammo', 3745, 'ply-37', '{}', 3, 0, 1611625618603),
('rifleammo', 3746, 'ply-37', '{}', 3, 0, 1611625618603),
('rifleammo', 3747, 'ply-37', '{}', 3, 0, 1611625618603),
('rifleammo', 3748, 'ply-37', '{}', 3, 0, 1611625618603),
('rifleammo', 3749, 'ply-37', '{}', 3, 0, 1611625618603),
('assphone', 3751, 'jail-container|1631|2526', '{}', 1, 0, 1611625846060),
('MediumScope', 3753, 'ply-37', '{}', 12, 0, 1611625886716),
('silencer_l', 3754, 'ply-37', '{}', 13, 0, 1611626008837),
('silencer_l2', 3755, 'ply-37', '{}', 14, 0, 1611626025893),
('mobilephone', 3756, 'ply-48', '{}', 2, 0, 1611626236640),
('idcard', 3757, 'ply-48', '{\"identifier\":\"48\",\"Name\":\"Logan\",\"Surname\":\"Thomas\",\"Sex\":0,\"DOB\":\"1995-08-28\"}', 1, 0, 1611626236639),
('okaylockpick', 3758, 'ply-43', '{}', 37, 0, 1611626286553),
('shitlockpick', 3761, 'jail-container|1631|2526', '{}', 9, 0, 1611626459459),
('mobilephone', 3762, 'ply-49', '{}', 2, 0, 1611628319608),
('idcard', 3763, 'ply-49', '{\"identifier\":\"49\",\"Name\":\"pew\",\"Surname\":\"pawa\",\"Sex\":0,\"DOB\":\"1995-11-11\"}', 1, 0, 1611628319607),
('3219281620', 3764, 'ply-38', '{\"cartridge\":\"VnR-797\",\"serial\":8170}', 1, 0, 1611629710437),
('armor', 3765, 'ply-38', '{}', 9, 0, 1611629730450),
('armor', 3766, 'ply-38', '{}', 26, 0, 1611629730450),
('radio', 3767, 'ply-38', '{}', 37, 0, 1611629734057),
('911657153', 3768, 'ply-40', '{\"cartridge\":\"Vtu-112\",\"serial\":41409}', 7, 0, 1611631563220),
('3219281620', 3769, 'ply-40', '{\"cartridge\":\"PaP-339\",\"serial\":65262}', 2, 0, 1611631580582),
('pistolammo', 3771, 'ply-1', '{}', 2, 0, 1611631585168),
('pistolammo', 3772, 'ply-1', '{}', 2, 0, 1611631587524),
('pistolammo', 3773, 'ply-1', '{}', 2, 0, 1611631589981),
('bandage', 3776, 'ply-50', '{}', 3, 0, 1611632699861),
('bandage', 3777, 'ply-50', '{}', 3, 0, 1611632699861),
('rolexwatch', 3783, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3784, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3785, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3786, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3787, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3788, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3789, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3790, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3791, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3792, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3793, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3794, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3795, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3796, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3797, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3798, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('rolexwatch', 3799, 'StashHouse-1', '{}', 12, 0, 1611634720366),
('goldbar', 3800, 'StashHouse-1', '{}', 13, 0, 1611634720367),
('goldbar', 3801, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3802, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3803, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3804, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3805, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3806, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3807, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3808, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3809, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3810, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3811, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3812, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3813, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3814, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3815, 'StashHouse-1', '{}', 13, 0, 1611634720366),
('goldbar', 3816, 'StashHouse-1', '{}', 13, 0, 1611634729139),
('rolexwatch', 3817, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3818, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3819, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3820, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3821, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3822, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3823, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3824, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3825, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3826, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3827, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3828, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3829, 'StashHouse-1', '{}', 12, 0, 1611634729139),
('rolexwatch', 3830, 'StashHouse-1', '{}', 12, 0, 1611634742658),
('rolexwatch', 3831, 'StashHouse-1', '{}', 12, 0, 1611634742658),
('rolexwatch', 3832, 'StashHouse-1', '{}', 12, 0, 1611634742658),
('rolexwatch', 3833, 'StashHouse-1', '{}', 12, 0, 1611634742658),
('rolexwatch', 3834, 'StashHouse-1', '{}', 12, 0, 1611634742658),
('rolexwatch', 3835, 'StashHouse-1', '{}', 12, 0, 1611634742658),
('rolexwatch', 3836, 'StashHouse-1', '{}', 12, 0, 1611634742658),
('rolexwatch', 3837, 'StashHouse-1', '{}', 12, 0, 1611634742658),
('goldbar', 3838, 'StashHouse-1', '{}', 13, 0, 1611634742659),
('rolexwatch', 3839, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3840, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3841, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3842, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3843, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3844, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3845, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3846, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3847, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3848, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3849, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('rolexwatch', 3850, 'StashHouse-1', '{}', 12, 0, 1611634757145),
('goldbar', 3851, 'StashHouse-1', '{}', 13, 0, 1611634757145),
('rolexwatch', 3852, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3853, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3854, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3855, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3856, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3857, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3858, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3859, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3860, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3861, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3862, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3863, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3864, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3865, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3866, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('rolexwatch', 3867, 'StashHouse-1', '{}', 12, 0, 1611634897473),
('goldbar', 3868, 'StashHouse-1', '{}', 13, 0, 1611634897473),
('securitygreen', 3869, 'StashHouse-1', '{}', 6, 0, 1611634906545),
('rolexwatch', 3870, 'StashHouse-1', '{}', 12, 0, 1611634906546),
('rolexwatch', 3871, 'StashHouse-1', '{}', 12, 0, 1611634906546),
('rolexwatch', 3872, 'StashHouse-1', '{}', 12, 0, 1611634906546),
('rolexwatch', 3873, 'StashHouse-1', '{}', 12, 0, 1611634906546),
('rolexwatch', 3874, 'StashHouse-1', '{}', 12, 0, 1611634906546),
('rolexwatch', 3875, 'StashHouse-1', '{}', 12, 0, 1611634906546),
('rolexwatch', 3876, 'StashHouse-1', '{}', 12, 0, 1611634906546),
('rolexwatch', 3877, 'StashHouse-1', '{}', 12, 0, 1611634906546),
('rolexwatch', 3878, 'StashHouse-1', '{}', 12, 0, 1611634906546),
('goldbar', 3879, 'StashHouse-1', '{}', 13, 0, 1611634906546),
('goldbar', 3880, 'StashHouse-1', '{}', 13, 0, 1611634917272),
('rolexwatch', 3881, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3882, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3883, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3884, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3885, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3886, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3887, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3888, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3889, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3890, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3891, 'StashHouse-1', '{}', 12, 0, 1611634917272),
('rolexwatch', 3892, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3893, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3894, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3895, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3896, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3897, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3898, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3899, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3900, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3901, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3902, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('rolexwatch', 3903, 'StashHouse-1', '{}', 12, 0, 1611634926247),
('goldbar', 3904, 'StashHouse-1', '{}', 13, 0, 1611634926248),
('goldbar', 3905, 'StashHouse-1', '{}', 13, 0, 1611634945647),
('rolexwatch', 3906, 'StashHouse-1', '{}', 12, 0, 1611634945646),
('rolexwatch', 3907, 'StashHouse-1', '{}', 12, 0, 1611634945646),
('rolexwatch', 3908, 'StashHouse-1', '{}', 12, 0, 1611634945646),
('rolexwatch', 3909, 'StashHouse-1', '{}', 12, 0, 1611634945646),
('rolexwatch', 3910, 'StashHouse-1', '{}', 12, 0, 1611634945646),
('rolexwatch', 3911, 'StashHouse-1', '{}', 12, 0, 1611634945646),
('rolexwatch', 3912, 'StashHouse-1', '{}', 12, 0, 1611634945646),
('rolexwatch', 3913, 'StashHouse-1', '{}', 12, 0, 1611634945646),
('rolexwatch', 3914, 'StashHouse-1', '{}', 12, 0, 1611634945646),
('rolexwatch', 3915, 'StashHouse-1', '{}', 12, 0, 1611634945646),
('lockpick', 3967, 'ply-41', '{}', 37, 0, 1611709255254),
('lockpick', 3968, 'StashHouse-1', '{}', 26, 0, 1611709255354),
('lockpick', 3969, 'StashHouse-1', '{}', 26, 0, 1611709255404),
('lockpick', 3970, 'StashHouse-1', '{}', 26, 0, 1611709255604),
('lockpick', 3971, 'StashHouse-1', '{}', 26, 0, 1611709255705),
('lockpick', 3972, 'StashHouse-1', '{}', 26, 0, 1611709255754),
('3219281620', 3977, 'ply-41', '{\"cartridge\":\"ITf-59\",\"serial\":78520}', 1, 0, 1611758261479),
('watch', 3978, 'ply-41', '{}', 40, 0, 1611758271840),
('radio', 3979, 'ply-41', '{}', 39, 0, 1611758279802),
('2343591895', 3981, 'ply-41', '{\"cartridge\":\"vSe-65\",\"serial\":34247}', 31, 0, 1611758338762),
('ciggy', 3986, 'jail-container|1631|2526', '{}', 5, 0, 1611758987522),
('ciggy', 3987, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3988, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3989, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3990, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3991, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3992, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3993, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3994, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3995, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3996, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3997, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3998, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 3999, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4000, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4001, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4002, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4003, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4004, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4005, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4006, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4007, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4008, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4009, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4010, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4011, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4012, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4013, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4014, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4015, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4016, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4017, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4018, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647);
INSERT INTO `user_inventory2` (`item_id`, `id`, `name`, `information`, `slot`, `dropped`, `creationDate`) VALUES
('ciggy', 4019, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4020, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4021, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4022, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4023, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4024, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4025, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4026, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4027, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4028, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4029, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4030, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4031, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4032, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4033, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4034, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4035, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4036, 'jail-container|1631|2526', '{}', 5, 0, 1611758992647),
('ciggy', 4037, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4038, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4039, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4040, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4041, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4042, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4043, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4044, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4045, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4046, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4047, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4048, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4049, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4050, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4051, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4052, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4053, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4054, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4055, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4056, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4057, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4058, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4059, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4060, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4061, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4062, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4063, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4064, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4065, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4066, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4067, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4068, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4069, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4070, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4071, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4072, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4073, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4074, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4075, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4076, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4077, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4078, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4079, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4080, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4081, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4082, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4083, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4084, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4085, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4086, 'jail-container|1631|2526', '{}', 5, 0, 1611758992747),
('ciggy', 4087, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4088, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4089, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4090, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4091, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4092, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4093, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4094, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4095, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4096, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4097, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4098, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4099, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4100, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4101, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4102, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4103, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4104, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4105, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4106, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4107, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4108, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4109, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4110, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4111, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4112, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4113, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4114, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4115, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4116, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4117, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4118, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4119, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4120, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4121, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4122, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4123, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4124, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4125, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4126, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4127, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4128, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4129, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4130, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4131, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4132, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4133, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4134, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4135, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4136, 'jail-container|1631|2526', '{}', 5, 0, 1611758992897),
('ciggy', 4137, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4138, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4139, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4140, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4141, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4142, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4143, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4144, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4145, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4146, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4147, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4148, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4149, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4150, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4151, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4152, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4153, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4154, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4155, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4156, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4157, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4158, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4159, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4160, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4161, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4162, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4163, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4164, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4165, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4166, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4167, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4168, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4169, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4170, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4171, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4172, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4173, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4174, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4175, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4176, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4177, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4178, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4179, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4180, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4181, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4182, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4183, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4184, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4185, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4186, 'jail-container|1631|2526', '{}', 5, 0, 1611758993148),
('ciggy', 4187, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4188, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4189, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4190, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4191, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4192, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4193, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4194, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4195, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4196, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4197, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4198, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4199, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4200, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4201, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4202, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4203, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4204, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4205, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4206, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4207, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4208, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4209, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4210, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4211, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4212, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4213, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4214, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4215, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4216, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4217, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4218, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4219, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4220, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4221, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4222, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4223, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4224, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4225, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4226, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4227, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4228, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4229, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4230, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4231, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4232, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4233, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4234, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4235, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('ciggy', 4236, 'jail-container|1631|2526', '{}', 5, 0, 1611758994248),
('watch', 4244, 'ply-38', '{}', 40, 0, 1611759631163),
('camera', 4245, 'ply-38', '{}', 38, 0, 1611759635670),
('evidencebag', 4246, 'ply-38', '{}', 39, 0, 1611759637072),
('911657153', 4247, 'ply-38', '{\"cartridge\":\"HTJ-785\",\"serial\":31440}', 2, 0, 1611759688547),
('1593441988', 4253, 'ply-18', '{\"cartridge\":\"CGx-336\",\"serial\":48944}', 1, 0, 1611763940312),
('615608432', 4284, 'StashHouse-1', '{}', 27, 0, 1611764234697),
('615608432', 4285, 'StashHouse-1', '{}', 27, 0, 1611764234697),
('moneyshot', 4287, 'ply-50', '{}', 11, 0, 1611805606349),
('moneyshot', 4288, 'ply-50', '{}', 11, 0, 1611805606349),
('mobilephone', 4289, 'ply-50', '{}', 40, 0, 1611809726475),
('idcard', 4290, 'ply-50', '{\"identifier\":\"50\",\"Name\":\"Brandon\",\"Surname\":\"Philips\",\"Sex\":0,\"DOB\":\"1998-10-06\"}', 39, 0, 1611809726474),
('thermite', 4308, 'jail-container|1631|2526', '{}', 2, 0, 1611810793027),
('locksystem', 4314, 'ply-50', '{}', 7, 0, 1611810802436),
('locksystem', 4315, 'ply-50', '{}', 7, 0, 1611810802436),
('locksystem', 4316, 'ply-50', '{}', 7, 0, 1611810802436),
('inkedmoneybag', 4318, 'jail-container|1631|2526', '{}', 8, 0, 1611810867498),
('inkedmoneybag', 4319, 'jail-container|1631|2526', '{}', 8, 0, 1611810874958),
('markedbills', 4320, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4321, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4322, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4323, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4324, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4325, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4326, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4327, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4328, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4329, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4330, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4331, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4332, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4333, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4334, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4335, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4336, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4337, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4338, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4339, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4340, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4341, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4342, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4343, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4344, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('markedbills', 4345, 'jail-container|1631|2526', '{}', 7, 0, 1611810881462),
('inkedmoneybag', 4346, 'jail-container|1631|2526', '{}', 8, 0, 1611810887367),
('inkedmoneybag', 4347, 'jail-container|1631|2526', '{}', 8, 0, 1611810887367),
('inkedmoneybag', 4348, 'jail-container|1631|2526', '{}', 8, 0, 1611810895222),
('okaylockpick', 4349, 'ply-50', '{}', 4, 0, 1611811272135),
('oxy', 4355, 'ply-50', '{}', 2, 0, 1611811550866),
('oxy', 4356, 'ply-50', '{}', 2, 0, 1611811550866),
('locksystem', 4357, 'ply-50', '{}', 7, 0, 1611811550865),
('locksystem', 4358, 'ply-50', '{}', 7, 0, 1611811550865),
('Gruppe6Card', 4359, 'ply-50', '{}', 6, 0, 1611811550865),
('pistolammo', 4360, 'ply-50', '{}', 5, 0, 1611813358678),
('pistolammo', 4361, 'ply-50', '{}', 5, 0, 1611813358678),
('pistolammo', 4362, 'ply-50', '{}', 5, 0, 1611813358678),
('pistolammo', 4363, 'ply-50', '{}', 5, 0, 1611813358678),
('thermite', 4390, 'Glovebox-68VFR787', '{}', 4, 0, 1611843294340),
('thermite', 4391, 'Glovebox-68VFR787', '{}', 4, 0, 1611843294340),
('thermite', 4392, 'Glovebox-68VFR787', '{}', 5, 0, 1611843294340),
('electronickit', 4402, 'StashHouse-1', '{}', 14, 0, 1611843562506),
('Gruppe6Card22', 4406, 'StashHouse-1', '{}', 9, 0, 1611843883935),
('Gruppe6Card22', 4407, 'StashHouse-1', '{}', 9, 0, 1611843884035),
('Gruppe6Card22', 4408, 'StashHouse-1', '{}', 9, 0, 1611843884086),
('mobilephone', 4409, 'ply-51', '{}', 2, 0, 1611843920681),
('idcard', 4410, 'ply-51', '{\"identifier\":\"51\",\"Name\":\"Zack\",\"Surname\":\"Banks\",\"Sex\":0,\"DOB\":\"1995-04-03\"}', 1, 0, 1611843920681),
('markedbills', 4414, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4415, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4416, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4417, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4418, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4419, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4420, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4421, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4422, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4423, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4424, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4425, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4426, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4427, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4428, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4429, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4430, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4431, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4432, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4433, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4434, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4435, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4436, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4437, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4438, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4439, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4440, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4441, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4442, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4443, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4444, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4445, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4446, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4447, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4448, 'StashHouse-1', '{}', 5, 0, 1611844163400),
('markedbills', 4449, 'StashHouse-1', '{}', 5, 0, 1611844168955),
('markedbills', 4450, 'StashHouse-1', '{}', 5, 0, 1611844168955),
('markedbills', 4451, 'StashHouse-1', '{}', 5, 0, 1611844168955),
('markedbills', 4452, 'StashHouse-1', '{}', 5, 0, 1611844168955),
('markedbills', 4453, 'StashHouse-1', '{}', 5, 0, 1611844168955),
('markedbills', 4454, 'StashHouse-1', '{}', 5, 0, 1611844168955),
('markedbills', 4455, 'StashHouse-1', '{}', 5, 0, 1611844168955),
('markedbills', 4456, 'StashHouse-1', '{}', 5, 0, 1611844168955),
('markedbills', 4457, 'StashHouse-1', '{}', 5, 0, 1611844168955),
('markedbills', 4458, 'StashHouse-1', '{}', 5, 0, 1611844168955),
('inkedmoneybag', 4459, 'Glovebox-66TRN568', '{}', 1, 0, 1611844178367),
('inkedmoneybag', 4460, 'Trunk-66TRN568', '{}', 3, 0, 1611844178367),
('markedbills', 4462, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4463, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4464, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4465, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4466, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4467, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4468, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4469, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4470, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4471, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4472, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4473, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4474, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4475, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4476, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4477, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4478, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4479, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4480, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4481, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('markedbills', 4482, 'StashHouse-1', '{}', 5, 0, 1611844184977),
('mobilephone', 4483, 'jail-container|1631|2526', '{}', 4, 0, 1611844635901),
('2343591895', 4484, 'Glovebox-68VFR787', '{\"cartridge\":\"Ukm-10\",\"serial\":27860}', 3, 0, 1611849573428),
('453432689', 4485, 'Glovebox-68VFR787', '{}', 2, 0, 1611849714113),
('453432689', 4486, 'StashHouse-1', '{\"cartridge\":\"cDZ-909\",\"serial\":31328}', 29, 0, 1611849714113),
('911657153', 4488, 'Glovebox-68VFR787', '{\"cartridge\":\"Ycy-338\",\"serial\":24277}', 1, 0, 1611854506788),
('-86904375', 4489, 'ply-41', '{\"cartridge\":\"kFi-758\",\"serial\":67662}', 12, 0, 1611854528323),
('rifleammo', 4491, 'ply-41', '{}', 9, 0, 1611854535286),
('rifleammo', 4492, 'ply-41', '{}', 9, 0, 1611854535286),
('rifleammo', 4493, 'ply-41', '{}', 9, 0, 1611854535286),
('rifleammo', 4494, 'ply-41', '{}', 9, 0, 1611854535286),
('pistolammo', 4495, 'ply-1', '{}', 2, 0, 1611854540007),
('pistolammo', 4496, 'ply-1', '{}', 2, 0, 1611854540007),
('pistolammo', 4497, 'ply-1', '{}', 2, 0, 1611854540007),
('pistolammo', 4498, 'ply-1', '{}', 2, 0, 1611854540007),
('pistolammo', 4499, 'ply-1', '{}', 2, 0, 1611854540007),
('pistolammo', 4500, 'ply-1', '{}', 2, 0, 1611854541610),
('pistolammo', 4501, 'ply-1', '{}', 2, 0, 1611854541610),
('pistolammo', 4502, 'ply-1', '{}', 2, 0, 1611854541610),
('pistolammo', 4503, 'ply-1', '{}', 2, 0, 1611854541610),
('pistolammo', 4504, 'ply-41', '{}', 6, 0, 1611854541610),
('911657153', 4505, 'ply-41', '{\"cartridge\":\"ZJe-8\",\"serial\":82153}', 2, 0, 1611854558583),
('repairkit', 4506, 'ply-41', '{}', 38, 0, 1611854567356),
('repairkit', 4507, 'ply-41', '{}', 38, 0, 1611854567356),
('lockpick', 4510, 'ply-1', '{}', 36, 0, 1611855633793),
('911657153', 4511, 'StashHouse-1', '{\"cartridge\":\"rmJ-707\",\"serial\":82072}', 25, 0, 1611856866828),
('1748076076', 4514, 'Glovebox-21BXF125', '{}', 1, 0, 1611857181132),
('1593441988', 4517, 'StashHouse-1', '{}', 24, 0, 1611859933720),
('-120179019', 4518, 'Glovebox-21BXF125', '{}', 2, 0, 1611860000831),
('repairkit', 4519, 'ply-40', '{}', 10, 0, 1611861490617),
('453432689', 4535, 'hidden-container|18|-1118', '{}', 3, 0, 1611912195189),
('453432689', 4536, 'hidden-container|18|-1118', '{\"cartridge\":\"ZiJ-926\",\"serial\":54478}', 2, 0, 1611912195189),
('-120179019', 4537, 'hidden-container|18|-1118', '{}', 1, 0, 1611912694304),
('453432689', 4539, 'hidden-container|18|-1118', '{\"cartridge\":\"kHE-981\",\"serial\":30813}', 5, 0, 1611913698032),
('453432689', 4551, 'hidden-container|18|-1118', '{\"cartridge\":\"vzz-413\",\"serial\":65707}', 4, 0, 1611914150442),
('453432689', 4590, 'Trunk-66TRN568', '{\"cartridge\":\"DhA-730\",\"serial\":52970}', 1, 0, 1611916033332),
('okaylockpick', 4592, 'jail-container|1631|2526', '{}', 6, 0, 1611918468751),
('tuner', 4594, 'StashHouse-1', '{}', 32, 0, 1611920083167),
('nitrous', 4658, 'ply-18', '{}', 2, 0, 1611944325998),
('nitrous', 4662, 'Trunk-66TRN568', '{}', 2, 0, 1611945471803),
('nitrous', 4664, 'Trunk-66TRN568', '{}', 2, 0, 1611945583548),
('nitrous', 4665, 'Trunk-66TRN568', '{}', 2, 0, 1611945583698),
('repairkit', 4666, 'Glovebox-01UNW163', '{}', 3, 0, 1611988625715),
('cgummies', 4671, 'StashHouse-1', '{}', 31, 0, 1611992237284),
('securityred', 4680, 'StashHouse-1', '{}', 11, 0, 1611993468783),
('rollcash', 4681, 'StashHouse-1', '{}', 4, 0, 1611993468783),
('rollcash', 4682, 'StashHouse-1', '{}', 4, 0, 1611993472771),
('rollcash', 4683, 'StashHouse-1', '{}', 4, 0, 1611993472771),
('rollcash', 4684, 'StashHouse-1', '{}', 4, 0, 1611993472771),
('band', 4685, 'StashHouse-1', '{}', 3, 0, 1611993476776),
('rollcash', 4686, 'StashHouse-1', '{}', 4, 0, 1611993476776),
('band', 4687, 'StashHouse-1', '{}', 3, 0, 1611993480786),
('band', 4688, 'StashHouse-1', '{}', 3, 0, 1611993480786),
('rollcash', 4689, 'StashHouse-1', '{}', 4, 0, 1611993480786),
('rollcash', 4690, 'StashHouse-1', '{}', 4, 0, 1611993484798),
('rollcash', 4691, 'StashHouse-1', '{}', 4, 0, 1611993484798),
('rollcash', 4692, 'StashHouse-1', '{}', 4, 0, 1611993484798),
('rollcash', 4693, 'StashHouse-1', '{}', 4, 0, 1611993484798),
('rollcash', 4694, 'StashHouse-1', '{}', 4, 0, 1611993484798),
('rollcash', 4695, 'StashHouse-1', '{}', 4, 0, 1611993484798),
('band', 4696, 'StashHouse-1', '{}', 3, 0, 1611993489553),
('rollcash', 4697, 'StashHouse-1', '{}', 4, 0, 1611993489553),
('rollcash', 4698, 'StashHouse-1', '{}', 4, 0, 1611993489553),
('band', 4699, 'StashHouse-1', '{}', 3, 0, 1611993493560),
('band', 4700, 'StashHouse-1', '{}', 3, 0, 1611993493560),
('band', 4701, 'StashHouse-1', '{}', 3, 0, 1611993493560),
('rollcash', 4702, 'StashHouse-1', '{}', 4, 0, 1611993493560),
('rollcash', 4703, 'StashHouse-1', '{}', 4, 0, 1611993493560),
('rollcash', 4704, 'StashHouse-1', '{}', 4, 0, 1611993493560),
('band', 4705, 'StashHouse-1', '{}', 3, 0, 1611993497569),
('band', 4706, 'StashHouse-1', '{}', 3, 0, 1611993497569),
('band', 4707, 'StashHouse-1', '{}', 3, 0, 1611993497569),
('band', 4708, 'StashHouse-1', '{}', 3, 0, 1611993497569),
('rollcash', 4709, 'StashHouse-1', '{}', 4, 0, 1611993497571),
('rollcash', 4710, 'StashHouse-1', '{}', 4, 0, 1611993497571),
('rollcash', 4711, 'StashHouse-1', '{}', 4, 0, 1611993497571),
('rollcash', 4712, 'StashHouse-1', '{}', 4, 0, 1611993497571),
('securityblue', 4713, 'StashHouse-1', '{}', 7, 0, 1611993501589),
('rollcash', 4714, 'StashHouse-1', '{}', 4, 0, 1611993501589),
('rollcash', 4715, 'StashHouse-1', '{}', 4, 0, 1611993501589),
('rollcash', 4716, 'StashHouse-1', '{}', 4, 0, 1611993505560),
('rollcash', 4717, 'StashHouse-1', '{}', 4, 0, 1611993509572),
('rollcash', 4718, 'StashHouse-1', '{}', 4, 0, 1611993509572),
('rollcash', 4719, 'StashHouse-1', '{}', 4, 0, 1611993509572),
('rollcash', 4720, 'StashHouse-1', '{}', 4, 0, 1611993509572),
('rollcash', 4721, 'StashHouse-1', '{}', 4, 0, 1611993509572),
('rollcash', 4722, 'StashHouse-1', '{}', 4, 0, 1611993509572),
('band', 4723, 'StashHouse-1', '{}', 3, 0, 1611993513564),
('band', 4724, 'StashHouse-1', '{}', 3, 0, 1611993513564),
('rollcash', 4725, 'StashHouse-1', '{}', 4, 0, 1611993513564),
('rollcash', 4726, 'StashHouse-1', '{}', 4, 0, 1611993513564),
('rollcash', 4727, 'StashHouse-1', '{}', 4, 0, 1611993513564),
('rollcash', 4728, 'StashHouse-1', '{}', 4, 0, 1611993513564),
('rollcash', 4729, 'StashHouse-1', '{}', 4, 0, 1611993513564),
('rollcash', 4730, 'StashHouse-1', '{}', 4, 0, 1611993513564),
('rollcash', 4731, 'StashHouse-1', '{}', 4, 0, 1611993517581),
('rollcash', 4732, 'StashHouse-1', '{}', 4, 0, 1611993517581),
('rollcash', 4733, 'StashHouse-1', '{}', 4, 0, 1611993517581),
('rollcash', 4734, 'StashHouse-1', '{}', 4, 0, 1611993517581),
('rollcash', 4735, 'StashHouse-1', '{}', 4, 0, 1611993521577),
('rollcash', 4736, 'StashHouse-1', '{}', 4, 0, 1611993521577),
('rollcash', 4737, 'StashHouse-1', '{}', 4, 0, 1611993521577),
('rollcash', 4738, 'StashHouse-1', '{}', 4, 0, 1611993521577),
('rollcash', 4739, 'StashHouse-1', '{}', 4, 0, 1611993521577),
('rollcash', 4740, 'StashHouse-1', '{}', 4, 0, 1611993521577),
('rollcash', 4741, 'StashHouse-1', '{}', 4, 0, 1611993521577),
('rollcash', 4742, 'StashHouse-1', '{}', 4, 0, 1611993521577),
('rollcash', 4743, 'StashHouse-1', '{}', 4, 0, 1611993521577),
('rollcash', 4744, 'StashHouse-1', '{}', 4, 0, 1611993521577),
('band', 4745, 'StashHouse-1', '{}', 3, 0, 1611993525586),
('band', 4746, 'StashHouse-1', '{}', 3, 0, 1611993525586),
('band', 4747, 'StashHouse-1', '{}', 3, 0, 1611993525586),
('band', 4748, 'StashHouse-1', '{}', 3, 0, 1611993525586),
('band', 4749, 'StashHouse-1', '{}', 3, 0, 1611993525586),
('band', 4750, 'StashHouse-1', '{}', 3, 0, 1611993525586),
('band', 4751, 'StashHouse-1', '{}', 3, 0, 1611993525586),
('band', 4752, 'StashHouse-1', '{}', 3, 0, 1611993525586),
('band', 4753, 'StashHouse-1', '{}', 3, 0, 1611993525586),
('rollcash', 4754, 'StashHouse-1', '{}', 4, 0, 1611993525587),
('rollcash', 4755, 'StashHouse-1', '{}', 4, 0, 1611993525587),
('rollcash', 4756, 'StashHouse-1', '{}', 4, 0, 1611993525587),
('rollcash', 4757, 'StashHouse-1', '{}', 4, 0, 1611993525587),
('rollcash', 4758, 'StashHouse-1', '{}', 4, 0, 1611993529664),
('rollcash', 4759, 'StashHouse-1', '{}', 4, 0, 1611993529664),
('rollcash', 4760, 'StashHouse-1', '{}', 4, 0, 1611993529664),
('rollcash', 4761, 'StashHouse-1', '{}', 4, 0, 1611993529664),
('rollcash', 4762, 'StashHouse-1', '{}', 4, 0, 1611993533693),
('rollcash', 4763, 'StashHouse-1', '{}', 4, 0, 1611993533693),
('rollcash', 4764, 'StashHouse-1', '{}', 4, 0, 1611993533693),
('rollcash', 4765, 'StashHouse-1', '{}', 4, 0, 1611993533693),
('rollcash', 4766, 'StashHouse-1', '{}', 4, 0, 1611993533693),
('rollcash', 4767, 'StashHouse-1', '{}', 4, 0, 1611993533693),
('rollcash', 4768, 'StashHouse-1', '{}', 4, 0, 1611993533693),
('rollcash', 4769, 'StashHouse-1', '{}', 4, 0, 1611993537795),
('band', 4770, 'StashHouse-1', '{}', 3, 0, 1611993541776),
('band', 4771, 'StashHouse-1', '{}', 3, 0, 1611993541776),
('band', 4772, 'StashHouse-1', '{}', 3, 0, 1611993541776),
('band', 4773, 'StashHouse-1', '{}', 3, 0, 1611993541776),
('rollcash', 4774, 'StashHouse-1', '{}', 4, 0, 1611993541776),
('rollcash', 4775, 'StashHouse-1', '{}', 4, 0, 1611993541776),
('rollcash', 4776, 'StashHouse-1', '{}', 4, 0, 1611993541776),
('rollcash', 4777, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4778, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4779, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4780, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4781, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4782, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4783, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4784, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4785, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4786, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4787, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('rollcash', 4788, 'StashHouse-1', '{}', 4, 0, 1611993545833),
('band', 4789, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('band', 4790, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('band', 4791, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('band', 4792, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('band', 4793, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('band', 4794, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('band', 4795, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('band', 4796, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('band', 4797, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('band', 4798, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('band', 4799, 'StashHouse-1', '{}', 3, 0, 1611993549843),
('rollcash', 4800, 'StashHouse-1', '{}', 4, 0, 1611993549843),
('rollcash', 4801, 'StashHouse-1', '{}', 4, 0, 1611993549843),
('rollcash', 4802, 'StashHouse-1', '{}', 4, 0, 1611993549843),
('rollcash', 4803, 'StashHouse-1', '{}', 4, 0, 1611993549843),
('rollcash', 4804, 'StashHouse-1', '{}', 4, 0, 1611993553864),
('rollcash', 4805, 'StashHouse-1', '{}', 4, 0, 1611993553864),
('rollcash', 4806, 'StashHouse-1', '{}', 4, 0, 1611993553864),
('rollcash', 4807, 'StashHouse-1', '{}', 4, 0, 1611993553864),
('rollcash', 4808, 'StashHouse-1', '{}', 4, 0, 1611993553864),
('rollcash', 4809, 'StashHouse-1', '{}', 4, 0, 1611993553864),
('rollcash', 4810, 'StashHouse-1', '{}', 4, 0, 1611993553864),
('rollcash', 4811, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4812, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4813, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4814, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4815, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4816, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4817, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4818, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4819, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4820, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4821, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4822, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4823, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('rollcash', 4824, 'StashHouse-1', '{}', 4, 0, 1611993557879),
('band', 4825, 'StashHouse-1', '{}', 3, 0, 1611993561879),
('band', 4826, 'StashHouse-1', '{}', 3, 0, 1611993561879),
('band', 4827, 'StashHouse-1', '{}', 3, 0, 1611993561879),
('rollcash', 4828, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4829, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4830, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4831, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4832, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4833, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4834, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4835, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4836, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4837, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4838, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4839, 'StashHouse-1', '{}', 4, 0, 1611993561880),
('rollcash', 4840, 'StashHouse-1', '{}', 4, 0, 1611993565877),
('rollcash', 4841, 'StashHouse-1', '{}', 4, 0, 1611993565877),
('band', 4842, 'StashHouse-1', '{}', 3, 0, 1611993569906),
('band', 4843, 'StashHouse-1', '{}', 3, 0, 1611993569906),
('band', 4844, 'StashHouse-1', '{}', 3, 0, 1611993569906),
('band', 4845, 'StashHouse-1', '{}', 3, 0, 1611993569906),
('band', 4846, 'StashHouse-1', '{}', 3, 0, 1611993569906),
('band', 4847, 'StashHouse-1', '{}', 3, 0, 1611993569906),
('band', 4848, 'StashHouse-1', '{}', 3, 0, 1611993569906),
('band', 4849, 'StashHouse-1', '{}', 3, 0, 1611993569906),
('band', 4850, 'StashHouse-1', '{}', 3, 0, 1611993569906),
('rollcash', 4851, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4852, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4853, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4854, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4855, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4856, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4857, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4858, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4859, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4860, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4861, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4862, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4863, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('rollcash', 4864, 'StashHouse-1', '{}', 4, 0, 1611993569906),
('band', 4865, 'StashHouse-1', '{}', 3, 0, 1611993573908),
('rollcash', 4866, 'StashHouse-1', '{}', 4, 0, 1611993573908),
('rollcash', 4867, 'StashHouse-1', '{}', 4, 0, 1611993573908),
('rollcash', 4868, 'StashHouse-1', '{}', 4, 0, 1611993573908),
('rollcash', 4869, 'StashHouse-1', '{}', 4, 0, 1611993573908),
('rollcash', 4870, 'StashHouse-1', '{}', 4, 0, 1611993573908),
('rollcash', 4871, 'StashHouse-1', '{}', 4, 0, 1611993573908),
('rollcash', 4872, 'StashHouse-1', '{}', 4, 0, 1611993573908),
('rollcash', 4873, 'StashHouse-1', '{}', 4, 0, 1611993573908),
('rollcash', 4874, 'StashHouse-1', '{}', 4, 0, 1611993573908),
('rollcash', 4875, 'StashHouse-1', '{}', 4, 0, 1611993573908),
('band', 4876, 'StashHouse-1', '{}', 3, 0, 1611993577914),
('band', 4877, 'StashHouse-1', '{}', 3, 0, 1611993577914),
('band', 4878, 'StashHouse-1', '{}', 3, 0, 1611993577914),
('band', 4879, 'StashHouse-1', '{}', 3, 0, 1611993577914),
('band', 4880, 'StashHouse-1', '{}', 3, 0, 1611993577914),
('band', 4881, 'StashHouse-1', '{}', 3, 0, 1611993577914),
('band', 4882, 'StashHouse-1', '{}', 3, 0, 1611993577914),
('band', 4883, 'StashHouse-1', '{}', 3, 0, 1611993577914),
('rollcash', 4884, 'StashHouse-1', '{}', 4, 0, 1611993577914),
('rollcash', 4885, 'StashHouse-1', '{}', 4, 0, 1611993577914),
('rollcash', 4886, 'StashHouse-1', '{}', 4, 0, 1611993581920),
('rollcash', 4887, 'StashHouse-1', '{}', 4, 0, 1611993581920),
('rollcash', 4888, 'StashHouse-1', '{}', 4, 0, 1611993581920),
('rollcash', 4889, 'StashHouse-1', '{}', 4, 0, 1611993581920),
('rollcash', 4890, 'StashHouse-1', '{}', 4, 0, 1611993581920),
('rollcash', 4891, 'StashHouse-1', '{}', 4, 0, 1611993581920),
('rollcash', 4892, 'StashHouse-1', '{}', 4, 0, 1611993581920),
('rollcash', 4893, 'StashHouse-1', '{}', 4, 0, 1611993581920),
('rollcash', 4894, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4895, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4896, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4897, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4898, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4899, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4900, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4901, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4902, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4903, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4904, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('rollcash', 4905, 'StashHouse-1', '{}', 4, 0, 1611993585924),
('band', 4906, 'StashHouse-1', '{}', 3, 0, 1611993589930),
('band', 4907, 'StashHouse-1', '{}', 3, 0, 1611993589930),
('band', 4908, 'StashHouse-1', '{}', 3, 0, 1611993589930),
('band', 4909, 'StashHouse-1', '{}', 3, 0, 1611993589930),
('band', 4910, 'StashHouse-1', '{}', 3, 0, 1611993589930),
('band', 4911, 'StashHouse-1', '{}', 3, 0, 1611993589930),
('rollcash', 4912, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4913, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4914, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4915, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4916, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4917, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4918, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4919, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4920, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4921, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4922, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4923, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4924, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4925, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4926, 'StashHouse-1', '{}', 4, 0, 1611993589930),
('rollcash', 4927, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4928, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4929, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4930, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4931, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4932, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4933, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4934, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4935, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4936, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4937, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4938, 'StashHouse-1', '{}', 4, 0, 1611993593913),
('rollcash', 4939, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4940, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4941, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4942, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4943, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4944, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4945, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4946, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4947, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4948, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4949, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('rollcash', 4950, 'StashHouse-1', '{}', 4, 0, 1611993597922),
('band', 4951, 'StashHouse-1', '{}', 3, 0, 1611993597922),
('rollcash', 4952, 'StashHouse-1', '{}', 4, 0, 1611993601902),
('band', 4953, 'StashHouse-1', '{}', 3, 0, 1611993605912),
('band', 4954, 'StashHouse-1', '{}', 3, 0, 1611993605912),
('band', 4955, 'StashHouse-1', '{}', 3, 0, 1611993605912),
('band', 4956, 'StashHouse-1', '{}', 3, 0, 1611993605912),
('band', 4957, 'StashHouse-1', '{}', 3, 0, 1611993605912),
('band', 4958, 'StashHouse-1', '{}', 3, 0, 1611993605912),
('band', 4959, 'StashHouse-1', '{}', 3, 0, 1611993605912),
('band', 4960, 'StashHouse-1', '{}', 3, 0, 1611993605912),
('band', 4961, 'StashHouse-1', '{}', 3, 0, 1611993605912),
('rollcash', 4962, 'StashHouse-1', '{}', 4, 0, 1611993605912),
('rollcash', 4963, 'StashHouse-1', '{}', 4, 0, 1611993605912),
('rollcash', 4964, 'StashHouse-1', '{}', 4, 0, 1611993605912),
('rollcash', 4965, 'StashHouse-1', '{}', 4, 0, 1611993605912),
('rollcash', 4966, 'StashHouse-1', '{}', 4, 0, 1611993605912),
('rollcash', 4967, 'StashHouse-1', '{}', 4, 0, 1611993605912),
('rollcash', 4968, 'StashHouse-1', '{}', 4, 0, 1611993609923),
('rollcash', 4969, 'StashHouse-1', '{}', 4, 0, 1611993609923),
('rollcash', 4970, 'StashHouse-1', '{}', 4, 0, 1611993613948),
('rollcash', 4971, 'StashHouse-1', '{}', 4, 0, 1611993613948),
('rollcash', 4972, 'StashHouse-1', '{}', 4, 0, 1611993613948),
('rollcash', 4973, 'StashHouse-1', '{}', 4, 0, 1611993613948),
('rollcash', 4974, 'StashHouse-1', '{}', 4, 0, 1611993617930),
('rollcash', 4975, 'StashHouse-1', '{}', 4, 0, 1611993617930),
('rollcash', 4976, 'StashHouse-1', '{}', 4, 0, 1611993617930),
('rollcash', 4977, 'StashHouse-1', '{}', 4, 0, 1611993617930),
('rollcash', 4978, 'StashHouse-1', '{}', 4, 0, 1611993617930),
('rollcash', 4979, 'StashHouse-1', '{}', 4, 0, 1611993617930),
('band', 4980, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('band', 4981, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('band', 4982, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('band', 4983, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('band', 4984, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('band', 4985, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('band', 4986, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('band', 4987, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('band', 4988, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('band', 4989, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('band', 4990, 'StashHouse-1', '{}', 3, 0, 1611993621952),
('rollcash', 4991, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 4992, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 4993, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 4994, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 4995, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 4996, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 4997, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 4998, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 4999, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 5000, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 5001, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 5002, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('rollcash', 5003, 'StashHouse-1', '{}', 4, 0, 1611993621952),
('band', 5004, 'StashHouse-1', '{}', 3, 0, 1611993625932),
('band', 5005, 'StashHouse-1', '{}', 3, 0, 1611993625932),
('band', 5006, 'StashHouse-1', '{}', 3, 0, 1611993625932),
('band', 5007, 'StashHouse-1', '{}', 3, 0, 1611993625932),
('rollcash', 5008, 'StashHouse-1', '{}', 4, 0, 1611993625932),
('rollcash', 5009, 'StashHouse-1', '{}', 4, 0, 1611993625932),
('rollcash', 5010, 'StashHouse-1', '{}', 4, 0, 1611993625932),
('rollcash', 5011, 'StashHouse-1', '{}', 4, 0, 1611993625932),
('band', 5012, 'StashHouse-1', '{}', 3, 0, 1611993630003),
('band', 5013, 'StashHouse-1', '{}', 3, 0, 1611993630003),
('band', 5014, 'StashHouse-1', '{}', 3, 0, 1611993630003),
('band', 5015, 'StashHouse-1', '{}', 3, 0, 1611993630003),
('rollcash', 5016, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5017, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5018, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5019, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5020, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5021, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5022, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5023, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5024, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5025, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5026, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5027, 'StashHouse-1', '{}', 4, 0, 1611993630003),
('rollcash', 5028, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5029, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5030, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5031, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5032, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5033, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5034, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5035, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5036, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5037, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5038, 'StashHouse-1', '{}', 4, 0, 1611993633932),
('rollcash', 5039, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5040, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5041, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5042, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5043, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5044, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5045, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5046, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5047, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5048, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5049, 'StashHouse-1', '{}', 4, 0, 1611993637936),
('rollcash', 5050, 'StashHouse-1', '{}', 4, 0, 1611993641923),
('rollcash', 5051, 'StashHouse-1', '{}', 4, 0, 1611993641923),
('rollcash', 5052, 'StashHouse-1', '{}', 4, 0, 1611993641923),
('rollcash', 5053, 'StashHouse-1', '{}', 4, 0, 1611993641923),
('rollcash', 5054, 'StashHouse-1', '{}', 4, 0, 1611993641923);
INSERT INTO `user_inventory2` (`item_id`, `id`, `name`, `information`, `slot`, `dropped`, `creationDate`) VALUES
('band', 5055, 'StashHouse-1', '{}', 3, 0, 1611993645941),
('rollcash', 5056, 'StashHouse-1', '{}', 4, 0, 1611993645941),
('rollcash', 5057, 'StashHouse-1', '{}', 4, 0, 1611993645941),
('rollcash', 5058, 'StashHouse-1', '{}', 4, 0, 1611993645941),
('rollcash', 5059, 'StashHouse-1', '{}', 4, 0, 1611993645941),
('rollcash', 5060, 'StashHouse-1', '{}', 4, 0, 1611993645941),
('rollcash', 5061, 'StashHouse-1', '{}', 4, 0, 1611993645941),
('rollcash', 5062, 'StashHouse-1', '{}', 4, 0, 1611993645941),
('rollcash', 5063, 'StashHouse-1', '{}', 4, 0, 1611993645941),
('mobilephone', 5065, 'ply-21', '{}', 13, 0, 1611995892709),
('securityred', 5069, 'Glovebox-86PHL390', '{}', 3, 0, 1611999901934),
('rollcash', 5070, 'ply-1', '{}', 31, 0, 1611999901934),
('band', 5071, 'ply-1', '{}', 32, 0, 1611999905980),
('rollcash', 5072, 'ply-1', '{}', 31, 0, 1611999905980),
('rollcash', 5073, 'ply-1', '{}', 31, 0, 1611999905980),
('band', 5074, 'ply-1', '{}', 32, 0, 1611999909976),
('band', 5075, 'ply-1', '{}', 32, 0, 1611999909976),
('band', 5076, 'ply-1', '{}', 32, 0, 1611999909976),
('band', 5077, 'ply-1', '{}', 32, 0, 1611999909976),
('rollcash', 5078, 'ply-1', '{}', 31, 0, 1611999909976),
('rollcash', 5079, 'ply-1', '{}', 31, 0, 1611999913972),
('rollcash', 5080, 'ply-1', '{}', 31, 0, 1611999913972),
('rollcash', 5081, 'ply-1', '{}', 31, 0, 1611999913972),
('rollcash', 5082, 'ply-1', '{}', 31, 0, 1611999913972),
('band', 5083, 'ply-1', '{}', 32, 0, 1611999917992),
('band', 5084, 'ply-1', '{}', 32, 0, 1611999917992),
('band', 5085, 'ply-1', '{}', 32, 0, 1611999917992),
('band', 5086, 'ply-1', '{}', 32, 0, 1611999917992),
('band', 5087, 'ply-1', '{}', 32, 0, 1611999917992),
('rollcash', 5088, 'ply-1', '{}', 31, 0, 1611999917992),
('band', 5089, 'ply-1', '{}', 32, 0, 1611999921979),
('band', 5090, 'ply-1', '{}', 32, 0, 1611999921979),
('band', 5091, 'ply-1', '{}', 32, 0, 1611999921979),
('band', 5092, 'ply-1', '{}', 32, 0, 1611999921979),
('band', 5093, 'ply-1', '{}', 32, 0, 1611999921979),
('band', 5094, 'ply-1', '{}', 32, 0, 1611999921979),
('band', 5095, 'ply-1', '{}', 32, 0, 1611999921979),
('rollcash', 5096, 'ply-1', '{}', 31, 0, 1611999921980),
('rollcash', 5097, 'ply-1', '{}', 31, 0, 1611999921980),
('rollcash', 5098, 'ply-1', '{}', 31, 0, 1611999921980),
('rollcash', 5099, 'ply-1', '{}', 31, 0, 1611999921980),
('rollcash', 5100, 'ply-1', '{}', 31, 0, 1611999921980),
('rollcash', 5101, 'ply-1', '{}', 31, 0, 1611999925962),
('rollcash', 5102, 'ply-1', '{}', 31, 0, 1611999929976),
('rollcash', 5103, 'ply-1', '{}', 31, 0, 1611999929976),
('band', 5104, 'ply-1', '{}', 32, 0, 1611999933952),
('rollcash', 5105, 'ply-1', '{}', 31, 0, 1611999933952),
('rollcash', 5106, 'ply-1', '{}', 31, 0, 1611999933952),
('band', 5107, 'ply-1', '{}', 32, 0, 1611999938012),
('band', 5108, 'ply-1', '{}', 32, 0, 1611999938012),
('band', 5109, 'ply-1', '{}', 32, 0, 1611999938012),
('band', 5110, 'ply-1', '{}', 32, 0, 1611999938012),
('rollcash', 5111, 'ply-1', '{}', 31, 0, 1611999938012),
('rollcash', 5112, 'ply-1', '{}', 31, 0, 1611999938012),
('rollcash', 5113, 'ply-1', '{}', 31, 0, 1611999941990),
('band', 5114, 'ply-1', '{}', 32, 0, 1611999946004),
('band', 5115, 'ply-1', '{}', 32, 0, 1611999946004),
('rollcash', 5116, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5117, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5118, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5119, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5120, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5121, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5122, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5123, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5124, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5125, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5126, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5127, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5128, 'ply-1', '{}', 31, 0, 1611999946004),
('rollcash', 5129, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5130, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5131, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5132, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5133, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5134, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5135, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5136, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5137, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5138, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5139, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5140, 'ply-1', '{}', 31, 0, 1611999949974),
('rollcash', 5141, 'ply-1', '{}', 31, 0, 1611999953993),
('rollcash', 5142, 'ply-1', '{}', 31, 0, 1611999953993),
('rollcash', 5143, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5144, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5145, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5146, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5147, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5148, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5149, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5150, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5151, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5152, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5153, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5154, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5155, 'ply-1', '{}', 31, 0, 1611999958005),
('rollcash', 5156, 'ply-1', '{}', 31, 0, 1611999958005),
('band', 5157, 'ply-1', '{}', 32, 0, 1611999961981),
('band', 5158, 'ply-1', '{}', 32, 0, 1611999961981),
('band', 5159, 'ply-1', '{}', 32, 0, 1611999961981),
('band', 5160, 'ply-1', '{}', 32, 0, 1611999961981),
('band', 5161, 'ply-1', '{}', 32, 0, 1611999961981),
('rollcash', 5162, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5163, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5164, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5165, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5166, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5167, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5168, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5169, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5170, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5171, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5172, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5173, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5174, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5175, 'ply-1', '{}', 31, 0, 1611999961981),
('rollcash', 5176, 'ply-1', '{}', 31, 0, 1611999961981),
('band', 5177, 'ply-1', '{}', 32, 0, 1611999965977),
('band', 5178, 'ply-1', '{}', 32, 0, 1611999965977),
('band', 5179, 'ply-1', '{}', 32, 0, 1611999965977),
('band', 5180, 'ply-1', '{}', 32, 0, 1611999965977),
('band', 5181, 'ply-1', '{}', 32, 0, 1611999965977),
('band', 5182, 'ply-1', '{}', 32, 0, 1611999965977),
('band', 5183, 'ply-1', '{}', 32, 0, 1611999965977),
('band', 5184, 'ply-1', '{}', 32, 0, 1611999965977),
('band', 5185, 'ply-1', '{}', 32, 0, 1611999965977),
('rollcash', 5186, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5187, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5188, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5189, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5190, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5191, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5192, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5193, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5194, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5195, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5196, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5197, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5198, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5199, 'ply-1', '{}', 31, 0, 1611999965977),
('rollcash', 5200, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5201, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5202, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5203, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5204, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5205, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5206, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5207, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5208, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5209, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5210, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5211, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5212, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5213, 'ply-1', '{}', 31, 0, 1611999969985),
('rollcash', 5214, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5215, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5216, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5217, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5218, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5219, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5220, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5221, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5222, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5223, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5224, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5225, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5226, 'ply-1', '{}', 31, 0, 1611999973994),
('rollcash', 5227, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5228, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5229, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5230, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5231, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5232, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5233, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5234, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5235, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5236, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5237, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5238, 'ply-1', '{}', 31, 0, 1611999978021),
('rollcash', 5239, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5240, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5241, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5242, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5243, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5244, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5245, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5246, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5247, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5248, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5249, 'ply-1', '{}', 31, 0, 1611999982039),
('rollcash', 5250, 'ply-1', '{}', 31, 0, 1611999986008),
('rollcash', 5251, 'ply-1', '{}', 31, 0, 1611999986008),
('rollcash', 5252, 'ply-1', '{}', 31, 0, 1611999986008),
('rollcash', 5253, 'ply-1', '{}', 31, 0, 1611999990023),
('rollcash', 5254, 'ply-1', '{}', 31, 0, 1611999990023),
('rollcash', 5255, 'ply-1', '{}', 31, 0, 1611999990023),
('rollcash', 5256, 'ply-1', '{}', 31, 0, 1611999990023),
('rollcash', 5257, 'ply-1', '{}', 31, 0, 1611999990023),
('rollcash', 5258, 'ply-1', '{}', 31, 0, 1611999990023),
('rollcash', 5259, 'ply-1', '{}', 31, 0, 1611999994027),
('rollcash', 5260, 'ply-1', '{}', 31, 0, 1611999994027),
('rollcash', 5261, 'ply-1', '{}', 31, 0, 1611999994027),
('rollcash', 5262, 'ply-1', '{}', 31, 0, 1611999994027),
('rollcash', 5263, 'ply-1', '{}', 31, 0, 1611999994027),
('band', 5264, 'ply-1', '{}', 32, 0, 1611999998032),
('band', 5265, 'ply-1', '{}', 32, 0, 1611999998032),
('band', 5266, 'ply-1', '{}', 32, 0, 1611999998032),
('rollcash', 5267, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5268, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5269, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5270, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5271, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5272, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5273, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5274, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5275, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5276, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5277, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5278, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5279, 'ply-1', '{}', 31, 0, 1611999998032),
('rollcash', 5280, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5281, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5282, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5283, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5284, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5285, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5286, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5287, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5288, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5289, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5290, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5291, 'ply-1', '{}', 31, 0, 1612000002038),
('rollcash', 5292, 'ply-1', '{}', 31, 0, 1612000002038),
('band', 5293, 'ply-1', '{}', 32, 0, 1612000006041),
('band', 5294, 'ply-1', '{}', 32, 0, 1612000006041),
('band', 5295, 'ply-1', '{}', 32, 0, 1612000006041),
('band', 5296, 'ply-1', '{}', 32, 0, 1612000006041),
('band', 5297, 'ply-1', '{}', 32, 0, 1612000006041),
('band', 5298, 'ply-1', '{}', 32, 0, 1612000006041),
('band', 5299, 'ply-1', '{}', 32, 0, 1612000006041),
('band', 5300, 'ply-1', '{}', 32, 0, 1612000006041),
('band', 5301, 'ply-1', '{}', 32, 0, 1612000006041),
('rollcash', 5302, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5303, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5304, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5305, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5306, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5307, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5308, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5309, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5310, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5311, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5312, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5313, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5314, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5315, 'ply-1', '{}', 31, 0, 1612000006041),
('rollcash', 5316, 'ply-1', '{}', 31, 0, 1612000010045),
('rollcash', 5317, 'ply-1', '{}', 31, 0, 1612000010045),
('rollcash', 5318, 'ply-1', '{}', 31, 0, 1612000014097),
('rollcash', 5319, 'ply-1', '{}', 31, 0, 1612000014097),
('rollcash', 5320, 'ply-1', '{}', 31, 0, 1612000014097),
('rollcash', 5321, 'ply-1', '{}', 31, 0, 1612000014097),
('rollcash', 5322, 'ply-1', '{}', 31, 0, 1612000014097),
('rollcash', 5323, 'ply-1', '{}', 31, 0, 1612000014097),
('rollcash', 5324, 'ply-1', '{}', 31, 0, 1612000014097),
('rollcash', 5325, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5326, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5327, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5328, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5329, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5330, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5331, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5332, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5333, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5334, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5335, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5336, 'ply-1', '{}', 31, 0, 1612000018053),
('rollcash', 5337, 'ply-1', '{}', 31, 0, 1612000018053),
('band', 5338, 'ply-1', '{}', 32, 0, 1612000022108),
('band', 5339, 'ply-1', '{}', 32, 0, 1612000022108),
('band', 5340, 'ply-1', '{}', 32, 0, 1612000022108),
('band', 5341, 'ply-1', '{}', 32, 0, 1612000022108),
('band', 5342, 'ply-1', '{}', 32, 0, 1612000022108),
('band', 5343, 'ply-1', '{}', 32, 0, 1612000022108),
('band', 5344, 'ply-1', '{}', 32, 0, 1612000022108),
('rollcash', 5345, 'ply-1', '{}', 31, 0, 1612000022108),
('rollcash', 5346, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5347, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5348, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5349, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5350, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5351, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5352, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5353, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5354, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5355, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5356, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5357, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5358, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5359, 'ply-1', '{}', 31, 0, 1612000026111),
('rollcash', 5360, 'ply-1', '{}', 31, 0, 1612000026111),
('band', 5361, 'ply-1', '{}', 32, 0, 1612000030116),
('band', 5362, 'ply-1', '{}', 32, 0, 1612000030116),
('band', 5363, 'ply-1', '{}', 32, 0, 1612000030116),
('band', 5364, 'ply-1', '{}', 32, 0, 1612000030116),
('rollcash', 5365, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5366, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5367, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5368, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5369, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5370, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5371, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5372, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5373, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5374, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5375, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5376, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5377, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5378, 'ply-1', '{}', 31, 0, 1612000030116),
('rollcash', 5379, 'ply-1', '{}', 31, 0, 1612000030116),
('securityred', 5383, 'Glovebox-86PHL390', '{}', 3, 0, 1612000278844),
('rollcash', 5384, 'ply-1', '{}', 31, 0, 1612000278844),
('rollcash', 5385, 'ply-1', '{}', 31, 0, 1612000282849),
('rollcash', 5386, 'ply-1', '{}', 31, 0, 1612000282849),
('rollcash', 5387, 'ply-1', '{}', 31, 0, 1612000282849),
('band', 5388, 'ply-1', '{}', 32, 0, 1612000286852),
('rollcash', 5389, 'ply-1', '{}', 31, 0, 1612000286852),
('rollcash', 5390, 'ply-1', '{}', 31, 0, 1612000286852),
('band', 5391, 'ply-1', '{}', 32, 0, 1612000290859),
('band', 5392, 'ply-1', '{}', 32, 0, 1612000290859),
('rollcash', 5393, 'ply-1', '{}', 31, 0, 1612000290859),
('rollcash', 5394, 'ply-1', '{}', 31, 0, 1612000290859),
('rollcash', 5395, 'ply-1', '{}', 31, 0, 1612000290859),
('advlockpick', 5400, 'ply-41', '{}', 13, 0, 1612000724161),
('advlockpick', 5401, 'Glovebox-01UNW163', '{}', 2, 0, 1612000903680),
('thermite', 5410, 'Glovebox-86PHL390', '{}', 2, 0, 1612001828835),
('thermite', 5432, 'ply-41', '{}', 5, 0, 1612003282160),
('thermite', 5433, 'ply-41', '{}', 5, 0, 1612003282160),
('thermite', 5434, 'ply-41', '{}', 5, 0, 1612003282160),
('thermite', 5435, 'Glovebox-86PHL390', '{}', 2, 0, 1612003296445),
('thermite', 5436, 'Glovebox-86PHL390', '{}', 2, 0, 1612003296545),
('thermite', 5437, 'Glovebox-86PHL390', '{}', 2, 0, 1612003296745),
('electronickit', 5440, 'Glovebox-86PHL390', '{}', 1, 0, 1612003595001),
('decrypterenzo', 5449, 'ply-21', '{}', 5, 0, 1612005785081),
('decrypterfv2', 5450, 'ply-21', '{}', 3, 0, 1612006479909),
('decryptersess', 5451, 'ply-21', '{}', 4, 0, 1612006487627),
('usbdevice', 5452, 'ply-21', '{}', 2, 0, 1612006632093),
('Gruppe6Card2', 5462, 'ply-21', '{}', 12, 0, 1612008482471),
('-771403250', 5465, 'ply-21', '{}', 1, 0, 1612009000307),
('mobilephone', 5466, 'ply-52', '{}', 2, 0, 1612024787351),
('idcard', 5467, 'ply-52', '{\"identifier\":\"52\",\"Name\":\"penis\",\"Surname\":\"man\",\"Sex\":0,\"DOB\":\"1999-11-11\"}', 1, 0, 1612024787350),
('scanner', 5469, 'Glovebox-01UNW163', '{}', 1, 0, 1612032375482),
('bandage', 5483, 'ply-19', '{}', 3, 0, 1612035542127),
('bandage', 5484, 'ply-19', '{}', 3, 0, 1612035544333),
('bandage', 5485, 'ply-19', '{}', 3, 0, 1612035544333),
('bandage', 5486, 'ply-19', '{}', 3, 0, 1612035544333),
('bandage', 5487, 'ply-19', '{}', 3, 0, 1612035544333),
('bandage', 5488, 'ply-19', '{}', 3, 0, 1612035544333),
('mobilephone', 5489, 'ply-2', '{}', 1, 0, 1682171663400),
('idcard', 5490, 'ply-2', '{\"identifier\":\"2\",\"Name\":\"Kempppii\",\"Surname\":\"Dev\",\"Sex\":0,\"DOB\":\"1999-02-03\"}', 2, 0, 1682171663403),
('mobilephone', 5491, 'ply-3', '{}', 1, 0, 1682172401072),
('idcard', 5492, 'ply-3', '{\"identifier\":\"3\",\"Name\":\"Kempppii\",\"Surname\":\"Dve\",\"Sex\":0,\"DOB\":\"1999-02-03\"}', 2, 0, 1682172401074),
('mobilephone', 5493, 'ply-45', '{}', 1, 0, 1682172701573),
('idcard', 5494, 'ply-45', '{\"identifier\":\"45\",\"Name\":\"Test\",\"Surname\":\"Test\",\"Sex\":0,\"DOB\":\"2000-01-01\"}', 2, 0, 1682172701574),
('lockpick', 5495, 'ply-45', '{}', 3, 0, 1682172861982),
('2227010557', 5496, 'ply-45', '{}', 4, 0, 1682173011861),
('rentalpapers', 5497, 'ply-45', '{\"Name\":\"Test Test\",\"Plate\":\"RENTAL75\",\"Vehicle\":\"Bison\"}', 5, 0, 1682173837971),
('2578778090', 5504, 'ply-45', '{}', 7, 0, 1682174592473),
('packaged_chicken', 5512, 'ply-45', '{}', 6, 0, 1682174739081);

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `cid` longtext NOT NULL,
  `type` longtext NOT NULL,
  `owner` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_licenses`
--

INSERT INTO `user_licenses` (`cid`, `type`, `owner`, `status`) VALUES
('15', 'Hunting', '', 0),
('15', 'Driver', '', 1),
('15', 'Weapon', '', 1),
('15', 'Fishing', '', 0),
('15', 'Pilot', '', 0),
('15', 'Bar', '', 0),
('15', 'Business', '', 0),
('19', 'Weapon', '', 1),
('19', 'Driver', '', 1),
('19', 'Hunting', '', 0),
('19', 'Fishing', '', 0),
('19', 'Pilot', '', 0),
('19', 'Business', '', 0),
('19', 'Bar', '', 0),
('16', 'Weapon', '', 0),
('16', 'Driver', '', 1),
('16', 'Hunting', '', 0),
('16', 'Fishing', '', 1),
('16', 'Pilot', '', 0),
('16', 'Business', '', 0),
('16', 'Bar', '', 0),
('17', 'Weapon', '', 0),
('17', 'Driver', '', 1),
('17', 'Bar', '', 0),
('17', 'Business', '', 0),
('17', 'Pilot', '', 0),
('17', 'Hunting', '', 0),
('17', 'Fishing', '', 0),
('20', 'Weapon', '', 0),
('20', 'Driver', '', 1),
('20', 'Hunting', '', 0),
('20', 'Fishing', '', 0),
('20', 'Pilot', '', 0),
('20', 'Bar', '', 0),
('20', 'Business', '', 0),
('21', 'Weapon', '', 0),
('21', 'Driver', '', 1),
('21', 'Hunting', '', 0),
('21', 'Fishing', '', 0),
('21', 'Pilot', '', 0),
('21', 'Business', '', 0),
('21', 'Bar', '', 0),
('22', 'Weapon', '', 0),
('22', 'Fishing', '', 0),
('22', 'Driver', '', 1),
('22', 'Pilot', '', 0),
('22', 'Bar', '', 0),
('22', 'Hunting', '', 0),
('22', 'Business', '', 0),
('23', 'Weapon', '', 0),
('23', 'Driver', '', 1),
('23', 'Hunting', '', 0),
('23', 'Fishing', '', 0),
('23', 'Pilot', '', 0),
('23', 'Business', '', 0),
('23', 'Bar', '', 0),
('24', 'Pilot', '', 0),
('24', 'Hunting', '', 0),
('24', 'Business', '', 0),
('24', 'Fishing', '', 0),
('24', 'Weapon', '', 0),
('24', 'Driver', '', 1),
('24', 'Bar', '', 0),
('25', 'Driver', '', 1),
('25', 'Pilot', '', 0),
('25', 'Business', '', 0),
('25', 'Fishing', '', 0),
('25', 'Hunting', '', 0),
('25', 'Weapon', '', 0),
('25', 'Bar', '', 0),
('28', 'Weapon', '', 0),
('28', 'Driver', '', 1),
('28', 'Hunting', '', 0),
('28', 'Fishing', '', 0),
('28', 'Pilot', '', 0),
('28', 'Bar', '', 0),
('28', 'Business', '', 0),
('29', 'Weapon', '', 0),
('29', 'Hunting', '', 0),
('29', 'Driver', '', 1),
('29', 'Pilot', '', 0),
('29', 'Fishing', '', 0),
('29', 'Bar', '', 0),
('29', 'Business', '', 0),
('30', 'Weapon', '', 0),
('30', 'Driver', '', 1),
('30', 'Hunting', '', 0),
('30', 'Pilot', '', 0),
('30', 'Fishing', '', 0),
('30', 'Bar', '', 0),
('30', 'Business', '', 0),
('31', 'Weapon', '', 0),
('31', 'Driver', '', 1),
('31', 'Fishing', '', 0),
('31', 'Hunting', '', 0),
('31', 'Bar', '', 0),
('31', 'Business', '', 0),
('31', 'Pilot', '', 0),
('32', 'Weapon', '', 0),
('32', 'Driver', '', 1),
('32', 'Hunting', '', 0),
('32', 'Fishing', '', 0),
('32', 'Bar', '', 0),
('32', 'Business', '', 0),
('32', 'Pilot', '', 0),
('33', 'Weapon', '', 0),
('33', 'Fishing', '', 0),
('33', 'Hunting', '', 0),
('33', 'Pilot', '', 0),
('33', 'Driver', '', 1),
('33', 'Bar', '', 0),
('33', 'Business', '', 0),
('34', 'Bar', '', 0),
('34', 'Business', '', 0),
('34', 'Pilot', '', 0),
('34', 'Fishing', '', 0),
('34', 'Hunting', '', 0),
('34', 'Driver', '', 1),
('34', 'Weapon', '', 0),
('35', 'Driver', '', 1),
('35', 'Hunting', '', 0),
('35', 'Fishing', '', 0),
('35', 'Weapon', '', 0),
('35', 'Pilot', '', 0),
('35', 'Business', '', 0),
('35', 'Bar', '', 0),
('36', 'Weapon', '', 0),
('36', 'Driver', '', 1),
('36', 'Hunting', '', 0),
('36', 'Pilot', '', 0),
('36', 'Business', '', 0),
('36', 'Fishing', '', 0),
('36', 'Bar', '', 0),
('37', 'Driver', '', 1),
('37', 'Hunting', '', 0),
('37', 'Fishing', '', 0),
('37', 'Bar', '', 0),
('37', 'Weapon', '', 0),
('37', 'Business', '', 0),
('37', 'Pilot', '', 0),
('38', 'Hunting', '', 0),
('38', 'Driver', '', 1),
('38', 'Weapon', '', 0),
('38', 'Pilot', '', 0),
('38', 'Bar', '', 0),
('38', 'Fishing', '', 0),
('38', 'Business', '', 0),
('39', 'Weapon', '', 0),
('39', 'Driver', '', 1),
('39', 'Hunting', '', 0),
('39', 'Fishing', '', 0),
('39', 'Business', '', 0),
('39', 'Pilot', '', 0),
('39', 'Bar', '', 0),
('40', 'Bar', '', 0),
('40', 'Pilot', '', 0),
('40', 'Business', '', 0),
('40', 'Fishing', '', 0),
('40', 'Hunting', '', 0),
('40', 'Weapon', '', 0),
('40', 'Driver', '', 1),
('41', 'Driver', '', 1),
('41', 'Weapon', '', 0),
('41', 'Hunting', '', 0),
('41', 'Bar', '', 0),
('41', 'Fishing', '', 0),
('41', 'Pilot', '', 0),
('41', 'Business', '', 0),
('42', 'Driver', '', 1),
('42', 'Weapon', '', 0),
('42', 'Bar', '', 0),
('42', 'Pilot', '', 0),
('42', 'Fishing', '', 0),
('42', 'Hunting', '', 0),
('42', 'Business', '', 0),
('43', 'Weapon', '', 0),
('43', 'Bar', '', 0),
('43', 'Driver', '', 1),
('43', 'Fishing', '', 0),
('43', 'Business', '', 0),
('43', 'Pilot', '', 0),
('43', 'Hunting', '', 0),
('', 'Firearm', '3', 0),
('', 'Driver', '3', 0),
('', 'Hunting', '3', 0),
('', 'Fishing', '3', 0),
('', 'Hunting', '45', 0),
('', 'Driver', '45', 0),
('', 'Fishing', '45', 0),
('', 'Firearm', '45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `hex_id` varchar(255) NOT NULL DEFAULT '',
  `settings` varchar(255) DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_display`
--

CREATE TABLE `vehicle_display` (
  `id` int(11) NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `commission` int(11) NOT NULL DEFAULT 10,
  `baseprice` int(11) NOT NULL DEFAULT 25,
  `price` int(11) DEFAULT 25000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Dumping data for table `vehicle_display`
--

INSERT INTO `vehicle_display` (`id`, `model`, `name`, `commission`, `baseprice`, `price`) VALUES
(1, 'gauntlet', 'Gauntlet', 15, 100000, 35000),
(2, 'dubsta3', 'Dubsta3', 15, 100000, 100000),
(3, 'landstalker', 'landstalker', 15, 100000, 100000),
(4, 'bobcatxl', 'bobcatxl', 15, 100000, 100000),
(5, 'surfer', 'surfer', 15, 100000, 100000),
(6, 'glendale', 'glendale', 15, 100000, 100000),
(7, 'washington', 'washington', 15, 100000, 100000),
(8, 'fixter', 'Fixter (velo)', 10, 25, 25),
(9, 'trophytruck', 'Trophy Truck', 10, 25, 25);

-- --------------------------------------------------------

--
-- Table structure for table `vip_list`
--

CREATE TABLE `vip_list` (
  `id` int(11) DEFAULT NULL,
  `steamid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` int(11) NOT NULL,
  `owner` int(11) DEFAULT 0,
  `name` varchar(50) DEFAULT '',
  `keywords` text DEFAULT '',
  `description` text DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `weed_plants`
--

CREATE TABLE `weed_plants` (
  `id` int(11) DEFAULT 0,
  `coords` varchar(500) DEFAULT '',
  `seed` varchar(255) DEFAULT NULL,
  `growth` varchar(50) DEFAULT '0',
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `_character_crypto_wallet`
--

CREATE TABLE `_character_crypto_wallet` (
  `id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `_vehicle`
--

CREATE TABLE `_vehicle` (
  `id` int(11) UNSIGNED NOT NULL,
  `cid` int(11) UNSIGNED NOT NULL,
  `vin` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `size` int(11) NOT NULL,
  `plate` varchar(50) NOT NULL DEFAULT '',
  `model` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `garage` varchar(59) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `appearance` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid('appearance')),
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid('mods')),
  `data` longtext DEFAULT NULL,
  `damage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid('damage')),
  `degredation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid('degredation'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters_cars`
--
ALTER TABLE `characters_cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_motel`
--
ALTER TABLE `character_motel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_passes`
--
ALTER TABLE `character_passes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `character_tattoos`
--
ALTER TABLE `character_tattoos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_job`
--
ALTER TABLE `delivery_job`
  ADD KEY `id` (`id`);

--
-- Indexes for table `driving_tests`
--
ALTER TABLE `driving_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_variables`
--
ALTER TABLE `general_variables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_patients`
--
ALTER TABLE `hospital_patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_whitelist`
--
ALTER TABLE `jobs_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_yp`
--
ALTER TABLE `phone_yp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `racing_tracks`
--
ALTER TABLE `racing_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secondary_jobs`
--
ALTER TABLE `secondary_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_whitelist`
--
ALTER TABLE `users_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_apartment`
--
ALTER TABLE `user_apartment`
  ADD PRIMARY KEY (`room`) USING BTREE;

--
-- Indexes for table `user_bans`
--
ALTER TABLE `user_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_boat`
--
ALTER TABLE `user_boat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_controls`
--
ALTER TABLE `user_controls`
  ADD PRIMARY KEY (`hex_id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_inventory2`
--
ALTER TABLE `user_inventory2`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`hex_id`);

--
-- Indexes for table `vehicle_display`
--
ALTER TABLE `vehicle_display`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_vehicle`
--
ALTER TABLE `_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `characters_cars`
--
ALTER TABLE `characters_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `character_motel`
--
ALTER TABLE `character_motel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `character_passes`
--
ALTER TABLE `character_passes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `character_tattoos`
--
ALTER TABLE `character_tattoos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=799;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_job`
--
ALTER TABLE `delivery_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `driving_tests`
--
ALTER TABLE `driving_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_variables`
--
ALTER TABLE `general_variables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital_patients`
--
ALTER TABLE `hospital_patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phone_yp`
--
ALTER TABLE `phone_yp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `racing_tracks`
--
ALTER TABLE `racing_tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secondary_jobs`
--
ALTER TABLE `secondary_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_whitelist`
--
ALTER TABLE `users_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_apartment`
--
ALTER TABLE `user_apartment`
  MODIFY `room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_bans`
--
ALTER TABLE `user_bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_boat`
--
ALTER TABLE `user_boat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2861;

--
-- AUTO_INCREMENT for table `user_inventory2`
--
ALTER TABLE `user_inventory2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5513;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7517;

--
-- AUTO_INCREMENT for table `vehicle_display`
--
ALTER TABLE `vehicle_display`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `_vehicle`
--
ALTER TABLE `_vehicle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
