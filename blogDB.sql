-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 13, 2018 at 12:25 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Id`, `title`, `body`, `author`, `created_at`) VALUES
(16, '', '', '', '2018-02-12 12:51:48'),
(17, 'Object Mapping', '\r\nBoth PDO and MySQLi can map results to objects. This comes in handy if you don\'t want to use a custom database abstraction layer, but still want ORM-like behavior. Let\'s imagine that we have a User class with some properties, which match field names from a database.', 'Aminux', '2018-02-12 12:51:53'),
(18, 'Summary', 'Ultimately, PDO wins this battle with ease. With support for twelve different database drivers (eighteen different databases!) and named parameters, we can ignore the small performance loss, and get used to its API. From a security standpoint, both of them are safe as long as the developer uses them the way they are supposed to be used (read: prepared statements).', 'Abdihalim Adam', '2018-02-12 12:51:56'),
(20, 'Performance', 'While both PDO and MySQLi are quite fast, MySQLi performs insignificantly faster in benchmarks - ~2.5% for non-prepared statements, and ~6.5% for prepared ones. Still, the native MySQL extension is even faster than both of these. So if you truly need to squeeze every last bit of performance, that is one thing you might consider.', 'Alex', '2018-02-12 12:59:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
