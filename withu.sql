-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 28, 2023 at 08:41 AM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `withu`
--

-- --------------------------------------------------------

--
-- Table structure for table `donees`
--

CREATE TABLE `donees` (
  `id` int NOT NULL,
  `goal` int NOT NULL,
  `tittle` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `course` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donees`
--

INSERT INTO `donees` (`id`, `goal`, `tittle`, `category`, `course`, `image`, `description`, `status`) VALUES
(15, 1000, 'Pads', 'ILS', 'Information System', '../Uploads/2019-Lamborghini-Urus-011-2160-scaled.jpg', 'Hi \r\n\r\nI need money yoh', 'approved'),
(16, 100, 'dihd', 'ILS', 'djbdj', '../Uploads/2019-Lamborghini-Urus-011-2160-scaled.jpg', 'Hi djndjb', 'approved'),
(17, 1000, 'Books', 'Accounting', 'Information System', '../Uploads/2019-Lamborghini-Urus-011-2160-scaled.jpg', 'Hi djndnfinf', 'approved'),
(18, 0, 'd nml,', 'ILS', 'hbnjkml,;.', '../Uploads/2019-Lamborghini-Urus-011-2160-scaled.jpg', 'xhbnoxkmpl,dinipdomddkopodk', 'approved'),
(19, 0, 'Sifu', 'Accounting', 'Sifu', '../Uploads/2023-07-27_17-17.png', 'I need money bro', 'approved'),
(20, 0, 'h', 'ILS', 'h', '../Uploads/2019-Lamborghini-Urus-011-2160-scaled.jpg', 'g ', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `regform`
--

CREATE TABLE `regform` (
  `id` int NOT NULL,
  `Fname` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `UserType` varchar(7) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regform`
--

INSERT INTO `regform` (`id`, `Fname`, `email`, `password`, `UserType`) VALUES
(1, 'Zwivhuya Davhana', 'sli@gmail.com', '$2y$10$MWFls0z8/Etv6BgzS3aqa.jvQorJFDIgILGI7/ZBaKmn8QOdz41ju', 'Admin'),
(2, 'Somila Mfundi', 'money@gmail.com', '$2y$10$ibWq2.OTLkQ7o8Rlgr6MN.l7dBnYZ8aX745mvk.Ms7a/3AVFGzbBy', 'User'),
(3, 'ZwivhuyaDavhana', 'zwivhuyadavhana6132@gmail.com', '$2y$10$bJeYTYxxAuhM26xDNb7WbeCCogjrFnTi1wcyEuRFtBS7cygkVE9ou', 'User'),
(5, 'Miron', 'GUNDOPDAVHANA@GMAIL.COM', '$2y$10$FBOpKWVUIjO6dnDB89fTP.EOzsvyhwt0nOQ/3RpjA.MiFsaej6zNa', 'User'),
(6, 'mfundisi', 'miron@GMAIL.COM', '$2y$10$VRw4hHDTXNo8SyDOWZRywu7wpDnPUzXsXk3uIvqJ3yyd9EhmifOiC', 'User'),
(7, 'Zwivhuya Davhana', 'GUNDOPDAVHANAyyy@GMAIL.COM', '$2y$10$wNBxOkbB48C885ekcxrqTeOKTaFlG0VNS7kNT3HVogDClDX8H4hp.', 'User'),
(8, 'faith', 'faith@faith.com', '$2y$10$yyh37fOxnj6Vw4YXrQ/3m.7zsNH70sIcUQHgvovdGIch1RWNbFnou', 'User'),
(9, 'Sifu', 'Sifu@Sifun.com', '$2y$10$pgyYW1ccqZEQwankMW3rZOAXe9P6L6QFRmDyXdllth0Ia2q2TGFem', 'User'),
(10, 'Sifu', 'Sifu@sifu.com', '$2y$10$0v/6X3hxCU/qbsj4MljQLOqoYOZASf9WGpGJdZ55/liPe3JIrrj9W', 'Admin'),
(11, 'admin', 'admin@admin.com', '$2y$10$dQ4xcY7m0ms7u2Ix0f7o8.imgx5.XDTOhz7lhu.q.F/dmZVJVIG3y', 'Admin'),
(12, 'admin', 'admin1@admin.com', '$2y$10$ZHowk70ceJmn9.q5BsbaPe4aEgovZbrfMU7k1ATatzPY.VWGdL9t.', 'User'),
(13, 'with', 'with@with.com', '$2y$10$9wa/sL9wIejreVsllq.Vl.rlkqa/NP1GkS7cm599zyPgFD3xRG1sK', 'User'),
(14, 'Tlase', 'tlase@tlase.com', '$2y$10$jm3DlJBj4v8JueEGG75XwO.PDrHqm303JJciRm1kSazBRIK4Al5ci', 'User'),
(15, 'Sifundo Ngubane', '2190229@student.uj.ac.za', '$2y$10$LOPxtTmViAU0pHDDvmFWsu6cz5qAcSDFUHnaREQlIcpi6y.pgbrqq', 'User'),
(16, 'frans', 'frans@frans.com', '$2y$10$RlqyYEWyMhFX7bHaJwyLyu5lNJP.mpACYwj9EGX6ioaoUIedbRz4C', 'User'),
(17, 'bobo', 'bobo@bobo.com', '$2y$10$VXSrbyVMTboybQ/GorXc1.kXDess8W0DIqeJ.pufiGT/TCoWy.Kmq', 'User'),
(18, 'bob', 'bo@bo.com', '$2y$10$NYbvNdbGjbq5d2PIf1Q20uhdWzDuBFYJa.gu.yenoAEC1BzaxSJ22', 'User'),
(24, 'Thando', 'Thando@Thando.com', '$2y$10$Myr1MRqhQE2uKqjuNlHopOAXD3KraokDnhHa5aNp1e/tI63P6savy', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donees`
--
ALTER TABLE `donees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regform`
--
ALTER TABLE `regform`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donees`
--
ALTER TABLE `donees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `regform`
--
ALTER TABLE `regform`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
