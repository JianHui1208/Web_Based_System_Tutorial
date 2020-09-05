-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2020 at 05:33 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart2020b`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', '2020-08-28 12:45:07', '2020-08-28 12:45:07'),
(2, 'Huawei', '2020-08-28 12:45:23', '2020-08-28 12:45:23'),
(3, 'Xiaomi', '2020-08-28 12:45:34', '2020-08-28 12:45:34'),
(4, 'Apple', '2020-08-28 12:46:13', '2020-08-28 12:46:13'),
(5, 'Oppo', '2020-08-28 12:47:50', '2020-08-28 12:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empNo` int(10) UNSIGNED NOT NULL,
  `empName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empPhone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empNo`, `empName`, `empEmail`, `empPhone`, `created_at`, `updated_at`) VALUES
(1, 'William', 'william90@hotmail.com', '012-9685324', '2020-07-09 23:24:22', '2020-07-09 23:24:22'),
(2, 'William1212', 'william1212@hotmail.com', '012-9658742', '2020-07-10 05:37:25', '2020-07-10 05:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 'William', 'qqqqqq', '2020-07-09 07:12:39', '2020-07-09 07:12:39'),
(2, 'William1234', 'qwerqwer', '2020-07-09 07:21:11', '2020-07-09 07:21:11'),
(3, 'Willima12456', 'apspdlad', '2020-07-09 07:29:50', '2020-07-09 07:29:50'),
(4, 'William234e', 'wqidhiqwhd', '2020-07-09 07:32:16', '2020-07-09 07:32:16'),
(5, 'Ali', 'wsqdefrgm,hgbg', '2020-07-18 09:07:50', '2020-07-18 09:07:50'),
(6, 'Wiliam', 'qwerqrt', '2020-07-18 09:36:13', '2020-07-18 09:36:13'),
(7, 'wervtytd', 'ewfetgryhter', '2020-07-18 09:36:32', '2020-07-18 09:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_19_083542_create_categories_table', 2),
(5, '2020_06_19_090038_create_products_table', 3),
(6, '2020_07_09_144842_create_feedback_table', 4),
(7, '2020_07_09_150824_create_feedback_table', 5),
(8, '2020_07_10_065822_create_employees_table', 6),
(9, '2020_07_18_163841_create_image_uploads_table', 7),
(10, '2020_08_13_150249_create_my_carts_table', 8),
(12, '2020_08_17_114304_create_my_orders_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `my_carts`
--

CREATE TABLE `my_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `productID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_carts`
--

INSERT INTO `my_carts` (`id`, `orderID`, `userID`, `quantity`, `productID`, `created_at`, `updated_at`) VALUES
(16, '13', '4', 2, '1', '2020-08-28 13:35:39', '2020-08-28 13:35:47'),
(17, '14', '4', 3, '6', '2020-08-28 13:40:40', '2020-08-28 13:40:46'),
(18, '16', '4', 2, '4', '2020-08-28 13:45:28', '2020-08-28 13:45:37'),
(19, '18', '4', 3, '5', '2020-08-28 13:50:02', '2020-08-28 13:50:10'),
(20, '20', '4', 2, '1', '2020-08-28 14:02:57', '2020-08-28 14:03:05'),
(21, '22', '4', 1, '1', '2020-08-28 15:11:44', '2020-08-28 15:11:53'),
(22, '23', '4', 1, '1', '2020-08-28 15:15:14', '2020-08-28 15:15:19'),
(23, '24', '4', 1, '2', '2020-08-28 15:16:20', '2020-08-28 15:16:25'),
(24, '26', '4', 1, '1', '2020-08-28 15:44:45', '2020-08-28 15:44:54'),
(25, '27', '4', 1, '1', '2020-08-28 15:48:23', '2020-08-28 15:48:27'),
(26, '28', '4', 1, '2', '2020-08-28 15:57:41', '2020-08-28 15:57:46'),
(27, '29', '4', 1, '1', '2020-08-28 16:00:12', '2020-08-28 16:00:18'),
(28, '30', '4', 1, '15', '2020-08-28 23:12:36', '2020-08-28 23:13:40'),
(29, '31', '4', 1, '1', '2020-08-28 23:24:53', '2020-08-28 23:25:10'),
(30, '32', '4', 1, '3', '2020-08-28 23:27:18', '2020-08-28 23:27:24'),
(31, '33', '4', 1, '2', '2020-08-28 23:35:28', '2020-08-28 23:35:33'),
(32, '34', '4', 1, '1', '2020-08-31 19:45:23', '2020-08-31 19:45:32'),
(33, '36', '4', 1, '1', '2020-08-31 19:58:06', '2020-08-31 19:58:15'),
(34, '38', '4', 1, '3', '2020-09-03 07:02:44', '2020-09-03 07:03:07'),
(35, '39', '4', 1, '2', '2020-09-03 07:12:12', '2020-09-03 07:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `my_orders`
--

CREATE TABLE `my_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paymentStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_orders`
--

INSERT INTO `my_orders` (`id`, `paymentStatus`, `userID`, `amount`, `created_at`, `updated_at`) VALUES
(33, 'pending', '4', 20, '2020-08-28 23:35:33', '2020-08-28 23:35:33'),
(34, 'pending', '4', 50, '2020-08-31 19:45:32', '2020-08-31 19:45:32'),
(36, 'pending', '4', 50, '2020-08-31 19:58:15', '2020-08-31 19:58:15'),
(38, 'pending', '4', 30, '2020-09-03 07:03:07', '2020-09-03 07:03:07'),
(39, 'pending', '4', 20, '2020-09-03 07:12:18', '2020-09-03 07:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `categoryID` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `quantity`, `categoryID`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy A51', 'Phone of the year 2020', 50.00, 'Samsung A51.jpg', 10, 1, '2020-08-28 12:51:00', '2020-08-28 12:51:00'),
(2, 'Samsung Galaxy S20', 'Phone of the year 2020', 20.00, 'Samsung S20.jpg', 10, 4, '2020-08-28 12:52:43', '2020-08-28 12:52:43'),
(3, 'Samsung Galaxy Note 10', 'Phone of the year 2020', 30.00, 'Samsung Note10.jpg', 10, 1, '2020-08-28 12:53:16', '2020-08-28 12:53:16'),
(4, 'Huawei Y9 Pro', 'Phone of the year 2020', 10.00, 'huawei y9 Pro.jpg', 20, 2, '2020-08-28 12:55:15', '2020-08-28 12:55:15'),
(5, 'Huawei Nove 7i', 'Phone of the year 2020', 20.00, 'huawei nova 7i.jpg', 20, 2, '2020-08-28 12:56:02', '2020-08-28 12:56:02'),
(6, 'Huawei P40', 'Phone of the year 2020', 30.00, 'huawei p40.jpg', 20, 2, '2020-08-28 12:56:29', '2020-08-28 12:56:29'),
(7, 'XiaoMi K20', 'Phone of the year 2020', 30.00, 'Xiaomi K20.jpg', 10, 3, '2020-08-28 12:58:22', '2020-08-28 12:58:22'),
(8, 'Xiaomi Mi 7', 'Phone of the year 2020', 15.00, 'Xiaomi Mi 7.jpg', 20, 3, '2020-08-28 12:59:31', '2020-08-28 12:59:31'),
(9, 'XiaoMi Note 8', 'Phone of the year 2020', 25.00, 'XiaoMi Note 8.jpg', 15, 3, '2020-08-28 13:00:08', '2020-08-28 13:00:08'),
(10, 'Iphone SE', 'Phone of the year', 35.00, 'iphone se.jpg', 10, 4, '2020-08-28 13:01:26', '2020-08-28 13:01:26'),
(11, 'iPhone 11 Pro Max', 'Phone of the year 2020', 40.00, 'iPhone 11 Pro Max.jpg', 20, 4, '2020-08-28 13:02:21', '2020-08-28 13:02:21'),
(12, 'iPhone X', 'Phone of the year 2020', 15.00, 'iPhone X.jpg', 10, 4, '2020-08-28 13:03:05', '2020-08-28 13:03:05'),
(13, 'Oppo A5', 'Phone the year 2020', 15.00, 'Oppo A5.jpg', 20, 5, '2020-08-28 13:05:34', '2020-08-28 13:05:34'),
(14, 'Oppo A9', 'Phone of the year 2020', 20.00, 'oppo a9.jpg', 15, 5, '2020-08-28 13:06:07', '2020-08-28 13:06:07'),
(15, 'Oppo A31', 'Phone of the year 2020', 15.00, 'oppo a31.jpg', 30, 5, '2020-08-28 13:06:37', '2020-08-28 13:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'William', 'william09@hotmail.com', NULL, '$2y$10$XWZws7J3wRk8UhdLd0uTduNfv/BX6X0zCzQcEw30YeltFZeszfZOm', NULL, '2020-06-26 21:19:10', '2020-06-26 21:19:10'),
(3, 'William9837', 'william32@hotmail.com', NULL, '$2y$10$kroOkgmfC7b0FJ2q6KLzBOMBOGHPXsvhjxuZ0OEKLF86H7dWBPtKS', NULL, '2020-07-07 23:05:39', '2020-07-07 23:05:39'),
(4, 'William', 'william1234@hotmail.com', NULL, '$2y$10$JmS/hUURp6w8L8qwymv5WOm7ZuKTbKouWlJ4YHh/Yt7.Oqo4nqYoC', NULL, '2020-08-13 07:09:32', '2020-08-13 07:09:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empNo`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_carts`
--
ALTER TABLE `my_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_orders`
--
ALTER TABLE `my_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empNo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `my_carts`
--
ALTER TABLE `my_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `my_orders`
--
ALTER TABLE `my_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
