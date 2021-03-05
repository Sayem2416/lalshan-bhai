-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 08:47 PM
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
-- Database: `multiauth6lalshanbhai`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'public/media/brand/29-01-20_17_06_40.png', NULL, NULL),
(2, 'Windows', 'public/media/brand/29-01-20_17_24_40.jpg', NULL, NULL),
(3, 'Huawei', 'public/media/brand/29-01-20_17_42_40.aspx', NULL, NULL),
(5, 'Apple', 'public/media/brand/29-01-20_17_30_41.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_icon`, `created_at`, `updated_at`) VALUES
(1, 'Men Clothes', 'public/media/category/1.6578977754543E+15.png', '2020-01-29 11:36:19', '2020-01-29 11:36:19'),
(2, 'Women Clothes', 'public/media/category/1.6578915434166E+15.png', '2020-01-29 11:36:38', '2020-01-29 11:36:38'),
(3, 'Sports', 'public/media/category/1.6579042009448E+15.png', '2020-01-29 11:36:52', '2020-01-29 11:36:52'),
(4, 'Laptops', 'public/media/category/1.6578918894785E+15.png', '2020-01-29 11:37:00', '2020-01-29 11:37:00'),
(5, 'Electronics', 'public/media/category/1.6579039435677E+15.png', '2020-01-29 11:37:11', '2020-01-29 11:37:11'),
(6, 'Mobile', 'public/media/category/1.6578920674714E+15.png', '2020-01-30 03:14:18', '2020-01-30 03:14:18'),
(7, 'Books', 'public/media/category/1.6579034329413E+15.png', '2020-02-05 14:03:03', '2020-02-05 14:03:03'),
(12, 'Video Games', 'public/media/category/07-02-20_18_01_48.png', NULL, NULL),
(13, 'Gadgets', 'public/media/category/07-02-20_18_58_48.png', NULL, NULL),
(14, 'Computers', 'public/media/category/07-02-20_18_30_49.png', NULL, NULL),
(15, 'Accessories', 'public/media/category/07-02-20_18_13_50.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'Sayem10', '10', NULL, NULL),
(2, 'sam20', '20', NULL, NULL),
(3, 'sam30', '30', NULL, NULL),
(4, 'Asif', '50', NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2020_01_04_090939_create_roles_table', 1),
(25, '2020_01_16_100146_create_categories_table', 1),
(26, '2020_01_16_100420_create_subcategories_table', 1),
(27, '2020_01_16_100521_create_brands_table', 1),
(28, '2020_01_26_112124_create_coupons_table', 1),
(29, '2020_01_26_173252_create_newslaters_table', 1),
(30, '2020_01_29_033926_create_products_table', 1),
(31, '2020_02_03_154207_create_post_category_table', 2),
(32, '2020_02_03_154902_create_posts_table', 2),
(33, '2020_02_15_133237_create_wishlists_tabel', 3),
(34, '2020_02_24_041334_create_settings_table', 4),
(35, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(36, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(37, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(38, '2016_06_01_000004_create_oauth_clients_table', 5),
(39, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5),
(40, '2020_02_29_071142_create_orders_table', 6),
(41, '2020_02_29_071634_create_order_details_table', 6),
(42, '2020_02_29_071732_create_shipping_table', 6),
(43, '2020_02_29_073515_create_shipping_table', 7),
(44, '2020_03_06_050742_create_seo_table', 8),
(45, '2020_03_08_034219_create_site_setting_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `newslaters`
--

CREATE TABLE `newslaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newslaters`
--

INSERT INTO `newslaters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'sayemalmahdi@gmail.com', NULL, NULL),
(2, 'project56@gmail.com', NULL, NULL),
(3, 'test1@gmail.com', NULL, NULL),
(4, 'sayemmdalmahdi7@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'nBTE7KwiQuglYPunAWGG7ztJJEv9x2FfvSkMwB6b', 'http://localhost', 1, 0, 0, '2020-02-26 22:22:44', '2020-02-26 22:22:44'),
(2, NULL, 'Laravel Password Grant Client', 'O7Tezoo5Dga1hdukTuCLYtfVYx0IeGfsNDf1SQvR', 'http://localhost', 0, 1, 0, '2020-02-26 22:22:44', '2020-02-26 22:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-26 22:22:44', '2020-02-26 22:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `month`, `date`, `year`, `status_code`, `return_order`, `created_at`, `updated_at`) VALUES
(1, '6', 'stripe', 'card_1GHU93FJTse4TXFGLp04PiM2', '989', 'txn_1GHU96FJTse4TXFGOLopJNQr', '5e5a54a71c542', '932', '7', '1', '989', '3', 'February', '29-02-20', '2020', NULL, '0', NULL, NULL),
(2, '6', 'stripe', 'card_1GHssHFJTse4TXFGk0rfHLAF', '934', 'txn_1GHssKFJTse4TXFGJgqj02yu', '5e5bc7fb0dc22', '877', '7', '0', '934', '3', 'March', '01-03-20', '2020', 'sam', '2', NULL, NULL),
(3, '6', 'stripe', 'card_1GJjZjFJTse4TXFGerdY2VSA', '4703', 'txn_1GJjZmFJTse4TXFGNJ1KXsWj', '5e628249d3bac', '4646', '7', '0', '4703', '3', 'March', '06-03-20', '2020', '718794', '2', NULL, NULL),
(4, '6', 'stripe', 'card_1GJkGSFJTse4TXFGVwQc14mu', '200', 'txn_1GJkGUFJTse4TXFGMHfjIOnp', '5e628ca2370c2', '150', '7', '0', '200.00', '2', 'March', '06-03-20', '2020', '486157', '0', NULL, NULL),
(5, '6', 'stripe', 'card_1GJkcXFJTse4TXFGsq8TLcI0', '1007', 'txn_1GJkcYFJTse4TXFGZaRKDJcd', '5e6291fa73711', '1000.00', '7', '0', '1007', '0', 'March', '06-03-20', '2020', '850069', '0', NULL, NULL),
(6, '6', 'stripe', 'card_1GJkfhFJTse4TXFGC0mEjUn1', '137', 'txn_1GJkfiFJTse4TXFGs9PLvhHm', '5e6292be6a6f3', '130', '7', '0', '137', '0', 'March', '06-03-20', '2020', '410371', '0', NULL, NULL),
(7, '6', 'stripe', 'card_1GJkojFJTse4TXFGNxk7ESsZ', '607', 'txn_1GJkokFJTse4TXFGL2lMnrS8', '5e6294ef13109', '600.00', '7', '0', '607', '0', 'March', '06-03-20', '2020', '509287', '0', NULL, NULL),
(8, '6', 'stripe', 'card_1GJktRFJTse4TXFGZKLoWMzv', '557', 'txn_1GJktTFJTse4TXFGVMHjpEN3', '5e629613417ee', '550', '7', '0', '557', '3', 'March', '06-03-20', '2020', '465417', '2', NULL, NULL),
(9, '6', 'stripe', 'card_1GJl4wFJTse4TXFGOrNCVG2r', '2157', 'txn_1GJl4xFJTse4TXFGnyzB1NJM', '5e6298db62d30', '2150', '7', '0', '2157', '3', 'March', '16-03-20', '2020', '443540', '2', NULL, NULL),
(10, '6', 'stripe', 'card_1GbOzAFJTse4TXFGK5ipXycW', '2657', 'txn_1GbOzCFJTse4TXFGkmeOXooo', '5ea2c28eee03f', '2650', '7', '0', '2657', '1', 'April', '24-04-20', '2020', '922179', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, '1', '16', 'Rapoo T8', 'White', 'Small', '1', '200', '200', NULL, NULL),
(2, '1', '14', 'Mini Spiker', 'Black', 'Small', '2', '130', '260', NULL, NULL),
(3, '1', '10', 'Mouse KTR', 'Black', 'Medium', '3', '99', '297', NULL, NULL),
(4, '1', '12', 'Philips BT6900A', 'DarkBlue', 'Small', '1', '225', '225', NULL, NULL),
(5, '2', '10', 'Mouse KTR', 'Black', 'Medium', '3', '99', '297', NULL, NULL),
(6, '2', '8', 'Canon STM', 'White', 'Medium', '1', '200', '200', NULL, NULL),
(7, '2', '15', 'MP4', 'White', 'Small', '1', '300', '300', NULL, NULL),
(8, '2', '14', 'Mini Spiker', 'Black', 'Small', '1', '130', '130', NULL, NULL),
(9, '3', '16', 'Rapoo T8', 'White', 'Small', '2', '200', '400', NULL, NULL),
(10, '3', '10', 'Mouse KTR', 'Black', 'Medium', '2', '99', '198', NULL, NULL),
(11, '3', '8', 'Canon STM', 'White', 'Medium', '3', '200', '600', NULL, NULL),
(12, '3', '1', 'Macbook 16', 'Silver', '16 Inch', '1', '2700', '2700', NULL, NULL),
(13, '3', '13', 'Canon EF', 'White', 'Small', '2', '399', '798', NULL, NULL),
(14, '4', '8', 'Canon STM', 'White', 'Medium', '1', '200', '200', NULL, NULL),
(15, '5', '5', 'iPhone XR', 'Red', 'Big', '1', '1000', '1000', NULL, NULL),
(16, '6', '2', 'Apple Watch', 'Black', 'Medium', '1', '180', '180', NULL, NULL),
(17, '7', '15', 'MP4', 'White', 'Small', '2', '300', '600', NULL, NULL),
(18, '8', '15', 'MP4', 'White', 'Small', '2', '300', '600', NULL, NULL),
(19, '9', '11', 'Macbook 2015', 'Space Gray', '15Inch', '1', '1200', '1200', NULL, NULL),
(20, '9', '16', 'Rapoo T8', 'White', 'Small', '2', '200', '400', NULL, NULL),
(21, '9', '15', 'MP4', 'White', 'Small', '2', '300', '600', NULL, NULL),
(22, '10', '1', 'Macbook 16', 'Silver', '16 Inch', '1', '2700', '2700', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sayemalmahdi@gmail.com', '$2y$10$LVEX.RMWPIPjgZb4ZfyTSu/uI7uFoSp5Cfl2v0mUtQ6qnomRIWXIq', '2020-03-07 13:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_bn`, `post_image`, `details_en`, `details_bn`, `created_at`, `updated_at`) VALUES
(1, 4, 'Cricket', 'ক্রিকেট', 'public/media/post/1.6575528626171E+15.jpg', '<div>Cricket is a bat and ball game played between two teams of 11 players on a large round field.</div><div><br></div><div>In the centre of the field is a rectangular pitch (20m long) where the bowling and batting action takes place.</div>', '<pre class=\"tw-data-text tw-text-large tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" dir=\"ltr\" style=\"unicode-bidi: isolate; font-size: 24px; line-height: 32px; background-color: rgb(248, 249, 250); border: none; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; font-family: inherit; overflow: hidden; width: 283px; white-space: pre-wrap; overflow-wrap: break-word; color: rgb(34, 34, 34);\"><span lang=\"bn\">ক্রিকেট একটি ব্যাট এবং বলের খেলা যা একটি বিশাল রাউন্ড মাঠে ১১ জন খেলোয়াড়ের দুটি দলের মধ্যে খেলা হয়।\r\n\r\nমাঠের কেন্দ্রস্থলে একটি আয়তক্ষেত্রাকার পিচ রয়েছে (২০ মিটার দীর্ঘ) যেখানে বোলিং এবং ব্যাটিং অ্যাকশন হয়।</span></pre>', NULL, NULL),
(2, 4, 'Football', 'ফুটবল', 'public/media/post/1.6575529152341E+15.jpg', '<span style=\"font-weight: bold; color: rgb(82, 86, 90); font-family: arial, sans-serif;\">Football</span><span style=\"color: rgb(60, 64, 67); font-family: arial, sans-serif;\">&nbsp;is a family of team sports that involve, to varying degrees, kicking a ball to score a goal. Unqualified, the word&nbsp;</span><span style=\"font-weight: bold; color: rgb(82, 86, 90); font-family: arial, sans-serif;\">football</span><span style=\"color: rgb(60, 64, 67); font-family: arial, sans-serif;\">&nbsp;normally means the form&nbsp;</span><span style=\"font-weight: bold; color: rgb(82, 86, 90); font-family: arial, sans-serif;\">of</span><span style=\"color: rgb(60, 64, 67); font-family: arial, sans-serif;\">&nbsp;.</span>', '<div><br></div><div><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 24px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">ফুটবল এমন একটি দলীয় খেলাধুলার একটি পরিবার যা বিভিন্ন স্কুলে জড়িত থাকে এবং একটি গোল করার জন্য একটি বলকে লাথি মারে। অযোগ্য, ফুটবল শব্দের অর্থ সাধারণত রূপের।</span><br></div>', NULL, NULL),
(3, 5, 'Laravel', 'লারাভেল', 'public/media/post/1.6595379570833E+15.png', '<b style=\"color: rgb(34, 34, 34); font-family: sans-serif;\">Laravel</b><span style=\"color: rgb(34, 34, 34); font-family: sans-serif;\">&nbsp;is a&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Free_software\" title=\"Free software\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">free</a><span style=\"color: rgb(34, 34, 34); font-family: sans-serif;\">, open-source</span><sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(34, 34, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Laravel#cite_note-3\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[3]</a></sup><span style=\"color: rgb(34, 34, 34); font-family: sans-serif;\">&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/PHP\" title=\"PHP\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">PHP</a><span style=\"color: rgb(34, 34, 34); font-family: sans-serif;\">&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Web_framework\" title=\"Web framework\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">web framework</a><span style=\"color: rgb(34, 34, 34); font-family: sans-serif;\">, created by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Taylor_Otwell\" class=\"mw-redirect\" title=\"Taylor Otwell\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">Taylor Otwell</a><span style=\"color: rgb(34, 34, 34); font-family: sans-serif;\">&nbsp;and intended for the development of web applications following the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller\" title=\"Model–view–controller\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">model–view–controller</a><span style=\"color: rgb(34, 34, 34); font-family: sans-serif;\">&nbsp;(MVC)&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Architectural_pattern\" title=\"Architectural pattern\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">architectural pattern</a><span style=\"color: rgb(34, 34, 34); font-family: sans-serif;\">&nbsp;and based on&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Symfony\" title=\"Symfony\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">Symfony</a><span style=\"color: rgb(34, 34, 34); font-family: sans-serif;\">.&nbsp;</span>', '<div><br></div><div><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 24px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">লারাভেল হ\'ল একটি ফ্রি, ওপেন সোর্স [৩] পিএইচপি ওয়েব ফ্রেমওয়ার্ক, টেলর ওটওয়েল দ্বারা নির্মিত এবং applications ভিউ – কন্ট্রোলার (এমভিসি) আর্কিটেকচারাল প্যাটার্নটি অনুসরণ করে এবং সিমফোনির উপর ভিত্তি করে ওয়েব অ্যাপ্লিকেশনগুলির বিকাশের উদ্দেশ্যে।</span><br></div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_bn`, `created_at`, `updated_at`) VALUES
(1, 'First English Post', 'প্রথম ইংরেজি পোস্ট', NULL, NULL),
(2, 'Second English Post', 'দ্বিতীয় ইংরেজি পোস্ট', NULL, NULL),
(3, 'Third English Post', 'তৃতীয় ইংরেজি পোস্ট', NULL, NULL),
(4, 'Sports', 'খেলাধুলা', NULL, NULL),
(5, 'Education', 'শিক্ষা', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `buyone_getone` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `trend`, `buyone_getone`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 8, 5, 'Macbook 16', 'M16', '6', '<p>Macbook 16 Desciption</p>', 'Silver,Gray', '16 Inch', '2700', NULL, 'https://www.apple.com', 1, 1, 1, 1, 1, 1, NULL, 'public/media/product/1.6575378187961E+15.jpg', 'public/media/product/1.6575377698921E+15.jpg', NULL, 1, NULL, NULL),
(2, 1, 7, 5, 'Apple Watch', 'A2416', '10', '<p>Apple Watch Description</p>', 'Black,white,Blue', 'Medium,Large', '200', '180', 'https://www.apple.com', 1, NULL, 1, NULL, 1, 1, 1, 'public/media/product/1.6577617229193E+15.png', 'public/media/product/1.6575378631766E+15.jpg', 'public/media/product/1.6575382738666E+15.jpeg', 1, NULL, NULL),
(3, 6, 9, 1, 'Samsung 10 Note', 'N10', '7', '<p>Samsung 10 Note Description                    \r\n                   </p>', 'Black,White', 'Large', '1200', NULL, 'https://www.samsung.com/in/', NULL, 1, 1, 1, 1, 1, NULL, 'public/media/product/1.6575380395714E+15.jpg', 'public/media/product/1.6575380398247E+15.jpg', NULL, 1, NULL, NULL),
(4, 4, 8, 5, 'Macbook 15', 'M15', '4', '<p>Macbook 15 Desciption</p>', 'Silver', '15Inch', '2500', NULL, 'https://www.apple.com', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'public/media/product/1.6575380567016E+15.jpg', NULL, NULL, 1, NULL, NULL),
(5, 6, 10, 5, 'iPhone XR', 'iphonexr', '7', '<p>iPhone XR Description</p>', 'Red', 'Big', '1100', '1000', 'https://www.apple.com', 1, 1, NULL, 1, NULL, NULL, NULL, 'public/media/product/1.657762077971E+15.png', NULL, NULL, 1, NULL, NULL),
(6, 6, 11, 3, 'Xiaomi Note 7', 'N7', '8', '<p>Xiaomi Note 7 Description</p>', 'Red', 'Large', '500', NULL, 'https://www.samsung.com/in/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1.6577629269783E+15.jpg', NULL, NULL, 1, NULL, NULL),
(7, 5, 12, 5, 'Sony HDRZX', '310W', '6', '<p>Sony HDRZX Desciption</p>', 'White', 'Big,Medium,Small', '320', NULL, 'https://www.apple.com', NULL, 1, NULL, 1, NULL, NULL, 1, 'public/media/product/1.6579086001919E+15.png', NULL, NULL, 1, NULL, NULL),
(8, 5, 13, 1, 'Canon STM', 'Ck', '6', '<p>Canon STM Desciption                    \r\n                   </p>', 'White', 'Medium', '225', '200', 'https://www.samsung.com/in/', NULL, NULL, 1, NULL, NULL, NULL, 1, 'public/media/product/1.6579059885682E+15.PNG', NULL, NULL, 1, NULL, NULL),
(9, 5, 14, 5, 'Apple Ipod', 'AI', '9', '<p>Apple Ipod Description</p>', 'Brown', 'Small', '379', '310', 'https://www.apple.com', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'public/media/product/1.6578042504302E+15.png', NULL, NULL, 1, NULL, NULL),
(10, 5, 16, 3, 'Mouse KTR', 'MK', '14', '<p>Mouse KTR Description</p>', 'Black,White', 'Medium', '120', '99', 'https://www.samsung.com/in/', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'public/media/product/1.6578588703658E+15.jpg', NULL, NULL, 1, NULL, NULL),
(11, 4, 8, 5, 'Macbook 2015', 'M2015', '5', '<p>Macbook 2015                    \r\n                   </p>', 'Space Gray', '15Inch', '1200', NULL, 'https://www.apple.com', NULL, NULL, NULL, 1, NULL, NULL, 1, 'public/media/product/1.6579078992673E+15.png', NULL, NULL, 1, NULL, NULL),
(12, 5, 14, 3, 'Philips BT6900A', 'PB', '5', '<p>Philips BT6900A Description                    \r\n                   </p>', 'DarkBlue', 'Small', '225', NULL, 'apple.com', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'public/media/product/1.658726743503E+15.jpg', NULL, NULL, 1, NULL, NULL),
(13, 5, 17, 5, 'Canon EF', 'CEF', '6', '<p>Canon EF Description                    \r\n                   </p>', 'White', 'Small', '399', NULL, 'https://www.apple.com/', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'public/media/product/1.6587269234164E+15.jpg', NULL, NULL, 1, NULL, NULL),
(14, 5, 17, 1, 'Mini Spiker', 'MS', '8', '<p>Mini Spiker Description                    \r\n                   </p>', 'Black', 'Small', '150', '130', 'https://www.apple.com/', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'public/media/product/1.6587270380745E+15.jpg', NULL, NULL, 1, NULL, NULL),
(15, 5, 17, 2, 'MP4', 'P4', '5', '<p>                    \r\n                   MP4 Description<br></p>', 'White', 'Small', '300', NULL, 'https://www.apple.com/', NULL, NULL, 1, NULL, NULL, 1, NULL, 'public/media/product/1.6587272040683E+15.jpg', NULL, NULL, 1, NULL, NULL),
(16, 5, 17, 1, 'Rapoo T8', 'RT8', '13', '<p>Rapoo T8&nbsp;                    \r\n                   Description</p>', 'White', 'Small', '232', '200', 'https://www.apple.com/', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'public/media/product/1.6587273402749E+15.jpg', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL),
(3, 'User', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'SEO Title', 'SEO Author', 'SEO Tag', 'SEO Description', 'SEO Google Analytics', 'SEO Bing Analytics', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `address`, `logo`, `created_at`, `updated_at`) VALUES
(1, '3', '7', 'E-shop', 'eshop@gmail.com', '01712345678', 'Sylhet,Bangladesh', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(1, '1', 'karim', '01712345678', 'user@gmail.com', 'Uposhohor Block-F', 'Sylhet', NULL, NULL),
(2, '2', 'Rahim', '0145345345', 'user@gmail.com', 'Uposhohor Block-F', 'Sylhet', NULL, NULL),
(3, '3', 'Jamal', '01774455345', 'user@gmail.com', 'Uposhohor Block-F', 'Sylhet', NULL, NULL),
(4, '4', 'Kamal', '01232434', 'user3@gmail.com', 'Uposhohor', 'Sylhet', NULL, NULL),
(5, '5', 'Rahim', '01712345678', 'user@gmail.com', 'Uposhohor', 'Sylhet', NULL, NULL),
(6, '6', 'Kamal', '01712345678', 'user@gmail.com', 'Uposhohor', 'Sylhet', NULL, NULL),
(7, '7', 'Rahim', '01712345678', 'user@gmail.com', 'Uposhohor', 'Sylhet', NULL, NULL),
(8, '8', 'Karim', '01712345678', 'user@gmail.com', 'Uposhohor', 'Sylhet', NULL, NULL),
(9, '9', 'Karim', '01712345678', 'user@gmail.com', 'Uposhohor', 'Sylhet', NULL, NULL),
(10, '10', 'Rahim', '017743534534', 'user@gmail.com', 'Uposhohor,Sylhet', 'Sylhet', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `phone_one`, `phone_two`, `email`, `company_name_en`, `company_name_bn`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '01712345678', '01812345678', 'ecommerce@gmail.com', 'OneTech', 'ওয়ান টেক', 'Uposhohor,Sylhet', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.instagram.com/', 'https://twitter.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Shirt', NULL, NULL),
(2, 1, 'Pants', NULL, NULL),
(3, 2, 'Shoes', NULL, NULL),
(4, 4, 'Dell XPS', NULL, NULL),
(5, 5, 'Lamp', NULL, NULL),
(6, 3, 'Football', NULL, NULL),
(7, 1, 'Watch', NULL, NULL),
(8, 4, 'Macbook', NULL, NULL),
(9, 6, 'Samsung Note', NULL, NULL),
(10, 6, 'iPhone', NULL, NULL),
(11, 6, 'Xiaomi', NULL, NULL),
(12, 5, 'Headphones', NULL, NULL),
(13, 5, 'Camera', NULL, NULL),
(14, 5, 'MP3', NULL, NULL),
(15, 5, 'Power Bank', NULL, NULL),
(16, 5, 'Mouse', NULL, NULL),
(17, 5, 'Others', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '3',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returns` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `phone`, `username`, `email`, `email_verified_at`, `password`, `image`, `about`, `provider`, `provider_id`, `remember_token`, `category`, `coupon`, `product`, `blog`, `orders`, `other`, `report`, `user_role`, `site_setting`, `returns`, `contact`, `comment`, `setting`, `stock`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Md.Admin', NULL, 'admin', 'admin@gmail.com', NULL, '$2y$10$BLCtNKFwXf64z9W6BbFlsunrGylFdOnpE/ACIwG9o.HPDy1uvnAn2', 'default.png', NULL, NULL, NULL, NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, NULL),
(2, 2, 'Md.Author', NULL, 'author', 'author@gmail.com', NULL, '$2y$10$9WfBWmaTuu7rqTjOhCbdauFzhNKwWmkdG5UdEiMM./r99Sy7hW0yK', 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 'Md.User', NULL, 'user', 'user@gmail.com', NULL, '$2y$10$hi99B.nXA4Ipdb457x3lEuHwnWGkRuMJUxWMSE0pbHfvyXIu7Z5Ee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, 'Vcd', '01723456789', 'Vcd', 'vcd@gmail.com', '2020-02-22 21:53:49', '$2y$10$HB/lpIedZp94Rwe2iRn.D.XzruQOROrl/MPtOAUQrR8Bvk20GOSvi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-07 22:59:34', '2020-02-22 21:53:49'),
(6, 3, 'Test 1', '013141122212', 'test1', 'test1@gmail.com', '2020-02-10 09:28:21', '$2y$10$o04JY2TDjiizGoh8DcKhGOm2IburhB/1c1sDB2x6bAn3PDuKsix3.', 'public/media/profile/1.6582673114613E+15.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-08 10:49:09', '2020-02-10 21:53:03'),
(7, 3, 'Test 2', '0234234', 'test2', 'test2@gmail.com', '2020-02-10 10:02:25', '$2y$10$VCt7fv/c432jhfpDqD3wdeqLy6AzNy1yMZOlz5S1XaVnjidBfGbvG', 'public/media/profile/1.6582673501738E+15.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-08 12:20:40', '2020-02-10 10:02:25'),
(8, 3, 'Test 3', '3242342', 'test3', 'test3@gmail.com', '2020-02-10 12:05:10', '$2y$10$f1zwW88NX2vtkGxcZDrJO.qtHN4f/RMZdu/6/oyLgzbMZhkOOtq.O', 'public/media/profile/1.6582672576568E+15.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-10 07:58:24', '2020-02-10 12:05:10'),
(9, 3, 'New', '03424234', 'new', 'new@gmail.com', '2020-02-10 09:20:23', '$2y$10$hDQ41pSVInA21SAUGKNoTu75T/5HQo0Ai8bjkb/vu0zonHkBXcNo2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-10 09:19:50', '2020-02-10 09:20:23'),
(10, 3, 'New2', '3231313', 'new2', 'new2@gmail.com', '2020-02-10 14:52:37', '$2y$10$PhtShDtiTivLr1.6pc0r8OEziJxSoLaoNhlE4CwWK6bwxIPRcKAHa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-10 14:50:51', '2020-02-10 14:52:37'),
(11, 3, 'New 311223', '4535345311223', 'new311223', 'new3@gmail.com', '2020-02-11 10:42:37', '$2y$10$Ruu/CZucxuMgL/OWcIU3C.Rk1LOGluvcyFKoJW0v/4H70YVpNigqK', 'public/media/profile/1.6583293835174E+15.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-11 10:41:15', '2020-02-11 10:43:28'),
(14, 3, 'new4', NULL, '', 'new4@gmail.com', '2020-02-17 08:39:34', NULL, NULL, NULL, 'google', '111686788953972207735', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-17 08:33:11', '2020-02-17 08:39:34'),
(18, 3, 'abcd', NULL, 'abcd', 'abcd@gmail.com', '2020-02-17 10:09:07', NULL, NULL, NULL, 'google', '116226408523180753678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-17 10:08:53', '2020-02-17 10:09:07'),
(25, 1, 'Child Admin 1', '01712345678', 'child admin 1', 'child1@gmail.com', NULL, '$2y$10$R4IJqf/JcuKLWdZRs5SjT.cklpSF04WuUch1xs.2keZKMik/yZ1Na', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL),
(26, 1, 'Child Admin 2', '01812345678', 'child admin 2', 'child2@gmail.com', NULL, '$2y$10$fQ6HOeYXVEdr86botd9lneGOe9pJmNR3k8gIsV64KdD5Wmd3lm.tW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 6, 11, NULL, NULL),
(2, 6, 5, NULL, NULL),
(3, 6, 7, NULL, NULL),
(4, 6, 8, NULL, NULL),
(6, 6, 12, NULL, NULL),
(7, 6, 10, NULL, NULL),
(8, 6, 1, NULL, NULL),
(9, 6, 2, NULL, NULL),
(10, 6, 16, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslaters`
--
ALTER TABLE `newslaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `newslaters`
--
ALTER TABLE `newslaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
