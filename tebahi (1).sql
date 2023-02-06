-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 05:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tebahi`
--

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `kategori-materi` enum('Beginner','Intermediate','Advance') NOT NULL,
  `materi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `kategori-materi`, `materi`) VALUES
(1, 'Beginner', 'Simple Present Tense'),
(2, 'Intermediate', 'Simple Past Tense'),
(3, 'Advance', 'Simple Future Tense');

-- --------------------------------------------------------

--
-- Table structure for table `statement`
--

CREATE TABLE `statement` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `tingkatan` enum('Beginner','Intermediate','Advanced') NOT NULL,
  `pilihan` varchar(255) NOT NULL COMMENT 'pisahkan pilihan dengan tanda koma(,)',
  `jawaban` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statement`
--

INSERT INTO `statement` (`id`, `pertanyaan`, `tingkatan`, `pilihan`, `jawaban`, `created_at`, `updated_at`) VALUES
(1, 'It ___ interesting.', 'Beginner', 'Am,Is,Are', 'Is', '2023-02-04 06:57:51', '2023-02-04 06:57:51'),
(2, 'The news ___ surprising.', 'Beginner', 'Am,Is,Are', 'Is', '2023-02-04 06:57:51', '2023-02-04 06:57:51'),
(3, 'The joke ___ funny.', 'Beginner', 'I‘m not,Isn’t,Aren’t', 'Isn’t', '2023-02-04 06:57:51', '2023-02-04 06:57:51'),
(4, 'He ___ so many questions.', 'Intermediate', 'Have,Had', 'Had', '2023-02-04 06:57:51', '2023-02-04 06:57:51'),
(5, 'She ___ him yesterday.', 'Intermediate', 'Didn’t call,Didn’t called', 'Didn’t call', '2023-02-04 06:57:51', '2023-02-04 06:57:51'),
(6, '___ She agree with you?', 'Intermediate', 'Was,Did', 'Was', '2023-02-04 06:57:51', '2023-02-04 06:57:51'),
(7, 'She will ___ to do it.', 'Advanced', 'Order,Orders', 'Order', '2023-02-04 06:57:51', '2023-02-04 06:57:51'),
(8, 'He won’t ___ a better offer.', 'Advanced', 'Make,Makes', 'Makes', '2023-02-04 06:57:51', '2023-02-04 06:57:51'),
(9, '___ it cost more money tomorrow?', 'Advanced', 'Will,Does', 'Will', '2023-02-04 06:57:51', '2023-02-04 06:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenisKelamin` enum('Laki - Laki','Perempuan','','') NOT NULL,
  `umur` int(11) NOT NULL,
  `noTelp` char(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('siswa','admin') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `jenisKelamin`, `umur`, `noTelp`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(3, 'Madu Sega', 'Laki - Laki', 12, '098383783922', 'admin@email.com', '$2y$10$K9YalF9XqMAnj61ikE.A1epE/GmqxVQVToqVUOvuRAqrBqQa3Kkiy', 'admin', '2023-02-02 11:41:38', '2023-02-02 11:41:38'),
(4, 'Kepiting Bakau', 'Perempuan', 12, '098383783922', 'theoneills@iol.ie', '$2y$10$Xi1ybPxvurEaaKziA9XGRu5czIvy.qFIMUx.ecodIjyMFflIG2S5y', 'siswa', '2023-02-02 20:10:58', '2023-02-02 20:10:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement`
--
ALTER TABLE `statement`
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
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statement`
--
ALTER TABLE `statement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
