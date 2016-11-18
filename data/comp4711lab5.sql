-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2016 at 08:52 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp4711lab5`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`) VALUES
('d', 'Drinks', 'Purees made from the finest of Venusian insects, government-inspected.', 'catd.png'),
('m', 'Mains', 'Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium "meat".', 'catm.png'),
('s', 'Sides', 'Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.', 'cats.png');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('afc0260167222ef111a9907f2a2d51103c6957af', '127.0.0.1', 1479493408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439333133303b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a343a7b693a383b693a313b693a313b693a323b693a32353b693a323b693a31303b693a313b7d7d),
('21c4d8ab95183ae09e57bfa865956658c906e2d9', '127.0.0.1', 1479493706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439333434303b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a373a7b693a383b693a313b693a313b693a343b693a32353b693a333b693a31303b693a323b693a32313b693a323b693a363b693a313b693a31313b693a323b7d7d),
('aa7bffd12af0b57f5a563ab35860f3256f553ec6', '127.0.0.1', 1479494368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439343036383b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a373a7b693a383b693a313b693a313b693a343b693a32353b693a32373b693a31303b693a323b693a32313b693a323b693a363b693a313b693a31313b693a323b7d7d75736572726f6c657c733a353a2261646d696e223b),
('07c7bd0e67f9aa91d00997fdaee813c4eede0ee0', '127.0.0.1', 1479494463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439343336393b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a373a7b693a383b693a313b693a313b693a353b693a32353b693a32373b693a31303b693a333b693a32313b693a323b693a363b693a323b693a31313b693a323b7d7d75736572726f6c657c733a343a2275736572223b),
('7549fb0f1461eb597dca6e9cd0a4365b7ac0da9a', '127.0.0.1', 1479494958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439343934303b75736572726f6c657c733a343a2275736572223b),
('da2ab4df65b26f2981f188f50d4a27e0219a3152', '127.0.0.1', 1479495575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439353332343b75736572726f6c657c733a343a2275736572223b),
('0d8e0961019bafe610abffb0b87cb61071f94415', '127.0.0.1', 1479495935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439353633353b75736572726f6c657c733a343a2275736572223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a323a7b693a31303b693a313b693a383b693a313b7d7d),
('5309df8a74b0f3d32b72e5bc3739efdfb8f4c44f', '127.0.0.1', 1479496259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439353933363b75736572726f6c657c733a343a2275736572223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a333a7b693a31303b693a313b693a383b693a313b693a313b693a313b7d7d),
('3fec3a1d39cd656741f83cab6fc24073c2b5d1a2', '127.0.0.1', 1479496508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439363235393b75736572726f6c657c733a343a2275736572223b),
('ed69ee82bb66ae009d8a72a5a3ac63f7a505ed31', '127.0.0.1', 1479496832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439363537373b75736572726f6c657c733a343a2275736572223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a363a7b693a313b693a373b693a383b693a363b693a31303b693a343b693a32313b693a343b693a363b693a343b693a32353b693a333b7d7d),
('fc15a47bfcd32564188eca5f795428b4e7178ecc', '127.0.0.1', 1479497214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439363933343b75736572726f6c657c733a343a2275736572223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a363a7b693a313b693a31393b693a383b693a31363b693a31303b693a31363b693a32313b693a393b693a363b693a31343b693a32353b693a31343b7d7d),
('0d01073cf7da828eaa0cd4e9315e1294a571b28c', '127.0.0.1', 1479497533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439373234363b75736572726f6c657c733a343a2275736572223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a363a7b693a313b693a32323b693a383b693a32303b693a31303b693a31383b693a32313b693a31303b693a363b693a31373b693a32353b693a31373b7d7d),
('48a79b9d5d795d3878d6cecc91b9445e1a0a6105', '127.0.0.1', 1479497981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439373831323b75736572726f6c657c733a343a2275736572223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a363a7b693a313b693a32323b693a383b693a32303b693a31303b693a31383b693a32313b693a31303b693a363b693a31373b693a32353b693a31373b7d7d),
('957d3ae32a1679321793e77bc41a43c76462bfe0', '127.0.0.1', 1479498351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439383132353b75736572726f6c657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `category` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `price`, `picture`, `category`) VALUES
(1, 'Cheeeeeeeeeese', 'Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.', '2.95', '1.png', 's'),
(6, 'Donut', 'Disgustingly sweet, topped with artery clogging chocolate and then sprinkled with Pixie dust', '1.25', '6.png', 's'),
(10, 'Bubbly', '1964 Moet Charmon, made from grapes crushed by elves with clean feet, perfectly chilled.', '14.50', '10.png', 'd'),
(11, 'Ice Cream', 'Combination of decadent chocolate topped with luscious strawberry, churned by gifted virgins using only cream from the Tajima strain of wagyu cattle', '3.75', '11.png', 's'),
(8, 'Hot Dog', 'Pork trimmings mixed with powdered preservatives, flavourings, red colouring and drenched in water before being squeezed into plastic tubes. Topped with onions, bacon, chili or cheese - no extra charge.', '6.90', '8.png', 'm'),
(25, 'Burger', 'Half-pound of beef, topped with bacon and served with your choice of a slice of American cheese, red onion, sliced tomato, and Heart Attack Grill''s own unique special sauce.', '9.99', 'burger.png', 'm'),
(21, 'Coffee', 'A delicious cup of the nectar of life, saviour of students, morning kick-starter; made with freshly grounds that you don''t want to know where they came from!', '2.95', 'coffee.png', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE `orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`order`,`item`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
