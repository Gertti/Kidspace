-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 05:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekti`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `password`, `confirm_password`) VALUES
(5, 'over coder', 'over', 'over@gmail.com', '$2y$10$uBDFywWPI026iahNwVaxEerQmsi8XIs3j1DhJTIZWp5UoWjzKKNYW', '$2y$10$vlwGYiesIEGKzSQ2l9pNM.K4qFAf2oB6ZnQK.xLN88ZhU4ODR4HLu'),
(6, 'felix krohnert', 'gert', 'felix@gmail.com', '$2y$10$JZcz6khdLeVtZhQhJmLZG.xID4ii.fjmXigM3pwAvRqC/U0ciSAha', '$2y$10$9JOv5TUXenzKmZrs/BZMpeGAi8B8a972c7mAlELlPXGAQfniO5yWu'),
(7, 'lorik ', 'lorik', 'lorik@gmail.com', '$2y$10$7YGZ.vQ08tWvSLFCTPKXreitiucH43S1uEd/krNIxJtQRULlzpdrG', '$2y$10$UH.ScWXvZtEUsWkj.TMtyOe..VVciWyVYjDgrsVIxf3ikyBWGfvVy'),
(8, 'reis b', 'gert', 'reis@gmail.com', '$2y$10$cVUjDGi1CJGk5uMyhdIFKe7L399tf6d9c/i9/kjLqCUliMg.m.uQm', '$2y$10$owgWVA.BBcVSex/rgYmfbeYuOds8AdXqhcvMSCFaQB6jXBezxC9bW'),
(9, 'Gerti Thaqi', 'hehe', 'gerti@gmail.com', '$2y$10$Tit6fbPy/tqg1W6XCr2pe.B/bvYr6mAEF/hBNrCEwgOQpJ8u64ixy', '$2y$10$AeToqhHfZXMu0NheaIabSe3FTCQqEsT8IlGugiaVQ0m2KF227it6W'),
(10, 'gerti', 'gerti', 'gerti@gmail.com', '$2y$10$BttzMIDHOyhD4.1DtjU0heP5AmKqDro/d1yN/tWPBST0ZfsVJvJ/2', '$2y$10$GxMVMSJXls5yv9voQpPiSujHiBt/nTqdT8TYIvcZbPyYTYcJwrKE6'),
(11, 'melos kuqi', 'melos', 'melos@gmail.com', '$2y$10$YRCtQkaosdtrZJOLqpQfE.vuOEh5d2k/VJz82rRKAAyD8AUltXsfK', '$2y$10$Sf35bgOwnTpzCF8f3v7MCOuWCISoc9gSRhHHfmom6ORtPdRlU1/vK'),
(12, 'beate rau', 'beate', 'beate@gmx.de', '$2y$10$T8UoCZc0cZNEb3R2pnbIA.Fu7eiBjC4JcElAZTSp71aSWWy4OoP0S', '$2y$10$v3o1ux.VWyln.kVp2krjEOQzT7oiqJ8cICCL9tpdGjSmyLbErSsOq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
