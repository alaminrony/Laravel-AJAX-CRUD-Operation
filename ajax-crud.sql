-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 10:05 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax-crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `district`, `created_at`, `updated_at`) VALUES
(1, 'alamin rony', '01912168339', 'admin@blog.com', 'dhaka', '2019-02-28 13:14:37', NULL),
(2, 'Laravel', '01912168339', 'admin@blog.com', 'dhaka', '2019-02-28 13:18:27', NULL),
(3, 'alamin rony', '01912168339', 'admin@blog.com', 'dhaka', '2019-02-28 13:26:32', NULL),
(4, 'Angular JS', '01912168339', 'alaminrony@gmail.com', 'dhaka', '2019-02-28 13:27:13', NULL),
(5, 'alamin rony', '01912168339', 'admin@blog.com', 'dhaka', '2019-02-28 13:28:11', NULL),
(6, 'Laravel', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 03:14:05', NULL),
(7, 'alamin rony', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 05:03:14', NULL),
(8, 'alamin rony new', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 06:59:57', NULL),
(9, 'alamin rony sm', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 07:52:06', NULL),
(10, 'alamin rony new', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 07:53:19', NULL),
(11, 'salam', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 07:56:01', NULL),
(12, 'new', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:14:07', NULL),
(13, 'new 1', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:14:53', NULL),
(14, 'alamin rony', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:15:27', NULL),
(15, 'alamin rony 22', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:17:17', NULL),
(16, 'alamin rony 222', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:17:52', NULL),
(17, 'Angular JS', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:18:57', NULL),
(18, 'alamin rony', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:22:03', NULL),
(19, 'naiam', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:22:26', NULL),
(20, 'alamin rony', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:25:01', NULL),
(21, 'alamin rony', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:25:31', NULL),
(24, 'new testing', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:37:22', NULL),
(27, 'alamin', '01912168339', 'admin@blog.com', 'dhaka', '2019-03-01 08:42:11', '2019-03-02 02:39:32'),
(29, 'alamin', '1912168339', 'admin@blog.com', 'dhaka', '2019-03-04 12:39:14', '2019-03-04 12:44:47'),
(31, 'alamin rony', '1912168339', 'admin@blog.com', 'dhaka', '2019-03-04 13:29:13', NULL),
(32, 'alamin rony 33', '1912168339', 'alaminrony49@gmail.com', 'sf', '2019-03-04 14:04:27', NULL),
(33, 'alamin rony', '1912168339', 'admin@blog.com', 'admin@blog.com', '2019-03-04 14:41:02', NULL),
(34, 'alamin rony', '1912168339', 'admin@blog.com', 'admin@blog.com', '2019-03-04 14:41:11', NULL),
(35, 'alamin rony', 'ffd1912168339', 'admin@blog.com', 'admin@blog.com', '2019-03-04 14:41:39', NULL),
(36, 'alamin rony', '01912168339', 'admin@blog.com', 'admin@blog.com', '2019-03-04 14:42:29', NULL),
(40, 'salam', '1912168339', 'admin@blog.com', 'admin@blog.com', '2019-03-04 14:44:36', NULL),
(43, 'chowriy', 'fdjdj', 'naiam', 'naiam', '2019-03-04 14:47:19', NULL),
(44, 'alamin rony', '1912168339', 'admin@blog.com', 'admin@blog.com', '2019-03-04 14:48:03', NULL),
(45, 'alamin rony  44', '1912168339', 'admin@blog.com', 'dhaka', '2019-03-04 14:51:07', NULL),
(46, 'kaiun khan', '1912168339', 'admin@blog.com', 'dhaka', '2019-03-04 14:57:05', '2019-03-04 15:07:34'),
(55, 'Jabari Carter', '1-980-661-6792 x219', 'obie02@example.com', 'Albinview', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(56, 'Raheem Feil', '1-710-408-1717', 'irutherford@example.org', 'South Cassandra', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(57, 'Ms. Angela', '674-538-4737 x7503', '.torp@example.org', 'Elinorchester', '2019-03-05 09:08:22', '2019-03-05 13:06:27'),
(58, 'Miss Sabina Yundt PhD', '861.761.4202', 'zackary37@example.org', 'Klockostad', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(59, 'Erik Kuphal', '994-705-1760', 'nschultz@example.com', 'Thielstad', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(60, 'Mrs. Karina Eichmann IV', '885.440.6143', 'oleta.parker@example.org', 'New Marcelochester', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(61, 'Mr. Dusty Moen', '1-904-995-2303 x2969', 'amber.lynch@example.org', 'North Orloland', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(62, 'Dr. Wilhelmine Deckow', '+1.276.775.9934', 'schaden.bella@example.com', 'Goyetteville', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(63, 'Millie Herzog', '375-854-0177 x949', 'samantha.treutel@example.com', 'Lilianemouth', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(64, 'Justine Frami', '+1-386-363-3564', 'caesar.leannon@example.com', 'Jaskolskifort', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(65, 'Skye Powlowski', '+1 (438) 719-8251', 'belle90@example.net', 'Port Giovani', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(66, 'Boyd Lehner', '870-840-0461 x573', 'hirthe.elody@example.org', 'Bartonborough', '2019-03-05 09:08:22', '2019-03-05 09:08:26'),
(67, 'salam rakha', '1912168339', 'admin@blog.com', 'dhaka', '2019-03-05 10:19:13', '2019-03-05 13:05:53'),
(68, 'alamin rony', '1912168339', 'unique@email.com', 'dhaka-1204', '2019-03-05 10:27:07', NULL),
(70, 'new data', '01682397506', 'newteting@gmail.com', 'borisal', '2019-03-05 12:59:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_28_171531_create_customers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
