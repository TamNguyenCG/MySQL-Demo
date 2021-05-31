-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2021 at 09:28 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `id` int NOT NULL,
  `productCode` int NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productPrice` int NOT NULL,
  `productAmount` int NOT NULL,
  `productDescription` varchar(50) NOT NULL,
  `productStatus` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`id`, `productCode`, `productName`, `productPrice`, `productAmount`, `productDescription`, `productStatus`) VALUES
(1, 5001, 'Freemen', 500000, 150, 'Men Underwear', 0x31),
(2, 5002, 'Triumph', 600000, 50, 'Triumph Underwear', 0x31),
(3, 5003, 'Victoria\'s Secret', 700000, 70, 'Victoria\'s Secret', 0x31),
(4, 5004, 'Pierra Cardin', 550000, 100, 'Pierra Underwear', 0x31),
(5, 5005, 'Venus Charm', 650000, 60, 'Venus Charm Underwear', 0x31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD UNIQUE KEY `idx_code` (`productCode`),
  ADD KEY `idx_composite` (`productName`,`productPrice`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
