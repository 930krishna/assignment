-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2020 at 09:31 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digit88`
--

-- --------------------------------------------------------

--
-- Table structure for table `bankaccounts`
--

CREATE TABLE `bankaccounts` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_number` varchar(45) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bankaccounts`
--

INSERT INTO `bankaccounts` (`id`, `users_id`, `bank_name`, `account_number`, `balance`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hermiston, Nitzsche and Morar', 'IL390050830089860094826', '100.00', '2020-11-12 20:43:22', '2020-11-12 20:43:22'),
(2, 1, 'Marks - Conn', 'NL87FFJK5096822442', '600.00', '2020-11-12 20:43:27', '2020-11-12 20:43:27'),
(3, 1, 'Stroman, Walsh and Dooley', 'GB24GMWG50099531004092', '25000.00', '2020-11-12 20:43:32', '2020-11-12 20:43:32'),
(4, 1, 'Boyer Group', 'FO1907693810546039', '5200.00', '2020-11-12 20:43:38', '2020-11-12 20:43:38'),
(5, 2, 'Turcotte, Strosin and Stehr', 'EE563056646127100839', '300.00', '2020-11-12 20:43:50', '2020-11-12 20:43:50'),
(6, 2, 'Hegmann - Torphy', 'DE33660090897688370449', '4502.00', '2020-11-12 20:43:57', '2020-11-12 20:43:57'),
(7, 3, 'Hodkiewicz - Huel', 'CY39558814145228403439550E55', '2542.00', '2020-11-12 20:44:05', '2020-11-12 20:44:05'),
(9, 3, 'Schaefer and Sons', 'MT55JVHZ94019YSY09S0I465300229U', '2542.00', '2020-11-13 08:17:54', '2020-11-13 08:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `address_line_one` varchar(255) NOT NULL,
  `address_line_two` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `contact`, `address_line_one`, `address_line_two`, `created_at`, `updated_at`) VALUES
(1, 'Quincy', 'Rolfson', 'Nick.Volkman80@gmail.com', '351-723-7012', '08216 Evie Estate', '5650 Hackett Islands', '2020-11-12 09:35:51', '2020-11-12 09:51:17'),
(2, 'Dwight', 'Carroll', 'River73@hotmail.com', '485-329-3248', '229 Cartwright Courts', '717 Veum Stream', '2020-11-12 09:35:56', '2020-11-12 09:35:56'),
(3, 'Della', 'Gottlieb', 'Freda.Dickinson15@gmail.com', '580-668-6913', '102 Breanna Haven', '7005 Earl Flats', '2020-11-12 09:51:31', '2020-11-12 09:51:31'),
(4, 'Deven', 'Jacobson', 'Elyse26@hotmail.com', '388-395-4056', '85054 Zulauf Pike', '5988 Jeramie Isle', '2020-11-12 09:51:32', '2020-11-12 09:51:32'),
(6, 'Zena', 'Kutch', 'Elissa.Hayes88@yahoo.com', '869-648-1989', '21872 Kirlin Fall', '2977 Toy Canyon', '2020-11-13 08:18:09', '2020-11-13 08:18:09'),
(7, 'Anita', 'Deckow', 'Dallas4@gmail.com', '346-724-1037', '71969 Considine Gateway', '28529 Jany Tunnel', '2020-11-13 08:22:18', '2020-11-13 08:22:18'),
(8, 'Magnus', 'Johns', 'Lizzie.Will81@gmail.com', '990-420-6443', '040 Little Wall', '13224 Maudie Mall', '2020-11-13 08:22:58', '2020-11-13 08:22:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
