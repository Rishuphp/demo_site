-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2025 at 10:33 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fundaservices`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `paragraph` varchar(5000) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `paragraph`, `image`) VALUES
(1, 'About-us s', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eiuss nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!jhjhjhj11111111111333vxvfdgasvxjgsscsaassasshgh', 'assets/uploads/services/1748289710.Blue Futuristic Technology LinkedIn Background Photo.png');

-- --------------------------------------------------------

--
-- Table structure for table `bannerimg`
--

CREATE TABLE `bannerimg` (
  `id` int(11) UNSIGNED NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `intro` varchar(1000) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `heading` varchar(1000) DEFAULT NULL,
  `heading_description` varchar(1000) DEFAULT NULL,
  `slug` varchar(225) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bannerimg`
--

INSERT INTO `bannerimg` (`id`, `image`, `intro`, `title`, `heading`, `heading_description`, `slug`, `image2`, `image3`) VALUES
(71, 'assets/uploads/services/1747133038.Blue Futuristic Technology LinkedIn Background Photo.png', NULL, 'demos fdhagrs', 'Welcome Home Page', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a! Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a! Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a! Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a! Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos incidunt modi facilis eius nobis ab libero cum eveniet, placeat ipsa aperiam, sit obcaecati suscipit ea quia tempora eaque maxime a!Lorem ipsum dolor sit am', '', 'assets/uploads/services/1747133038.Purple Abstract Graphic Design LinkedIn Article Cover Image.png', 'assets/uploads/services/1747133038.8293505.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `enquires`
--

CREATE TABLE `enquires` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `service` varchar(200) NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending' COMMENT 'pending,completed,cancelled',
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquires`
--

INSERT INTO `enquires` (`id`, `name`, `email`, `phone`, `service`, `message`, `status`, `created_at`) VALUES
(2, 'user', 'adminuser@gmail.com', '5876542159', 'MI Device Services', 'hgjfhmnasg', 'completed', '2025-05-04'),
(12, 'user', 'moki123@gmail.com', '8888888888', 'demo', 'fshssfdgh4444444ay', 'pending', '2025-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) UNSIGNED NOT NULL,
  `footer_title1` varchar(200) DEFAULT NULL,
  `footer_title2` varchar(200) DEFAULT NULL,
  `footer_title3` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `footer_title1`, `footer_title2`, `footer_title3`) VALUES
(1, 'Social Media', 'User Menu', 'Contact Us');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `navbar1` varchar(100) DEFAULT NULL,
  `navbar2` varchar(100) DEFAULT NULL,
  `navbar3` varchar(100) DEFAULT NULL,
  `navbar4` varchar(100) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `title`, `navbar1`, `navbar2`, `navbar3`, `navbar4`, `logo`) VALUES
(1, '', 'Home', 'About', 'Services', 'Contact', 'assets/uploads/services/1747153993.Untitled design (6).png');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(300) NOT NULL,
  `small_description` varchar(500) DEFAULT NULL,
  `long_description` mediumtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `meta_title` varchar(500) NOT NULL,
  `meta_description` varchar(1000) DEFAULT NULL,
  `meta_keyword` varchar(1000) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=visible,1=hidden'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `slug`, `small_description`, `long_description`, `image`, `meta_title`, `meta_description`, `meta_keyword`, `status`) VALUES
(4, 'bfgsbsrtuqiuyt', 'bfgsbsrtuqiuyt', 'sdvbbsgretrytukdg', '<p>sbvssgerrtywiqkhs</p><p><br></p>', 'assets/uploads/services/1746720078.caps.jpg', 'fbvnghtyrureks', 'bcgdrelajgbhyu', 'vbvnghtyures', 0),
(8, 'demo', 'demo', 'demo', 'yyryrryr', 'assets/uploads/services/1747125862.Blue Futuristic Technology LinkedIn Background Photo.png', 'ddd', 'ddddd', 'ddd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services_title`
--

CREATE TABLE `services_title` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services_title`
--

INSERT INTO `services_title` (`id`, `title`) VALUES
(3, 'services');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(225) NOT NULL,
  `slug` varchar(225) DEFAULT NULL,
  `small_description` text DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL,
  `meta_keyword` varchar(1000) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `phone1` varchar(50) DEFAULT NULL,
  `phone2` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `slug`, `small_description`, `meta_description`, `meta_keyword`, `email1`, `email2`, `phone1`, `phone2`, `address`) VALUES
(1, '', 'www.bytosoft.com', 'ajdshgsakgf dfagasdgeatagsdgqearsd', 'device services n gfhgnbv', 'device services ny thgftn', 'moki123@gmail.com', '', '8788958795', '', 'moki123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` int(12) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=shown,1=hidden'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `name`, `url`, `status`) VALUES
(2, 'Instagram', 'www.instagram.com', 0),
(5, 'Twitter', 'www.twitter.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_ban` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unban,1=ban',
  `role` varchar(100) NOT NULL COMMENT 'admin,user,staff',
  `created_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `is_ban`, `role`, `created_at`) VALUES
(12, 'admin', '5555555555', 'moki123@gmail.com', '$2y$10$QfzGG7Y/umCVKsoggmLVEOJStkHO6NsNxJOfb.6SoWPW7KdA1Icy6', 0, 'user', '2025-05-02'),
(14, 'pizza', '8651234785', '545@78', '3333', 0, 'user', '2025-05-04'),
(15, 'answer', '5876541258', '545@78', '$2y$10$oEfh4QPCdSwr9oZwGIILme4iv/c8MlYzNevCZ0lZbT.e7rs13idu2', 0, 'user', '2025-05-04'),
(16, 'sdfa', '457896444', 'adminuser@gmail.com', '$2y$10$1l.LZShannYuklDNwQrQVutXAeFzsnIipyaenAc2THSkBGcwStJLO', 0, 'admin', '2025-05-04'),
(17, 'aaaaa', '8745698712', 'bnbfjhdfsdfjglhgfkjkgj@sdf', '$2y$10$xpazfYlZYZQ8McggfSUdnuagZAfkIjup7tZ06V.3fISEs1AfGa2eW', 0, 'admin', '2025-05-05'),
(18, 'KKK LLL m l', '88888888888', 'bnbfjhdfsdfjglhgfkjkgj@sdf', '$2y$10$5q05MPN/8W1sV09RLlV4D.xecIYNAP6JbhEaqz6Yjr.Ieuz4hseci', 0, 'admin', '2025-05-05'),
(19, 'aaaaaa', '8888888888', 'windowgaming017@gmail.com', '$2y$10$2wV73UtvnN3SVToDX6ccNuQWl9/9ZBtPObce0fozqqCIMKztImWue', 0, 'admin', '2025-05-05'),
(20, 'vn', '5478965412', '545@78', '$2y$10$CZbG3YwEGwF/8s3xS34xou3xuwgVTA/JV9YDl6nJgSquyqVYxf5aq', 0, 'admin', '2025-05-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bannerimg`
--
ALTER TABLE `bannerimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquires`
--
ALTER TABLE `enquires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_title`
--
ALTER TABLE `services_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bannerimg`
--
ALTER TABLE `bannerimg`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `enquires`
--
ALTER TABLE `enquires`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services_title`
--
ALTER TABLE `services_title`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
