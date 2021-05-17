-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 05:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adela`
--
CREATE DATABASE IF NOT EXISTS `adela` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `adela`;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `collection`, `subtitle`, `title`, `description`, `created_at`, `updated_at`, `image`) VALUES
(1, 'TÚI XÁCH', 'BỘ SƯU TẬP MỚI', 'SẢN PHẨM ĐỘC ĐÁO!', 'BACKPACK', 'Thiết kế theo xu hướng thời trang đương đại mới nhất, khẳng định phong cách của bạn.', '2021-03-29 07:47:22', '2021-03-29 08:00:31', 'banner/2021/03/29/1.jpg'),
(2, 'TÚI XÁCH', 'BỘ SƯU TẬP MỚI', 'SANG TRỌNG & LỊCH LÃM!', 'BLACK HANDBAG', 'Những dòng sản phẩm được yêu thích nhất và được chế tác từ các chất liệu nhập khẩu 100%.', '2021-03-29 07:48:04', '2021-03-29 08:01:32', 'banner/2021/03/29/2.jpg'),
(3, 'QUẦN ÁO', 'BỘ SƯU TẬP MỚI', 'HÀNG MỚI VỀ!', 'AMAZING ADELLA', 'Năng động, trẻ trung & phong cách.', '2021-03-29 07:48:38', '2021-03-29 08:01:17', 'banner/2021/03/29/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `receive_date` datetime DEFAULT NULL,
  `price` double UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` tinyint(3) UNSIGNED NOT NULL,
  `cancel_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `receiver_id`, `buyer_id`, `receive_date`, `price`, `note`, `status`, `coupon_code`, `payment_type`, `cancel_reason`, `created_at`, `updated_at`) VALUES
(5, 13, 13, NULL, 1775000, 'ádasdasdasdasd', 0, NULL, 2, NULL, '2021-04-07 00:57:46', '2021-04-07 00:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `bill_items`
--

CREATE TABLE `bill_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `base_price` double(8,2) UNSIGNED NOT NULL,
  `discount_price` double(8,2) UNSIGNED NOT NULL,
  `total_price` double(8,2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_items`
--

INSERT INTO `bill_items` (`id`, `bill_id`, `product_id`, `quantity`, `base_price`, `discount_price`, `total_price`, `created_at`, `updated_at`, `size`) VALUES
(3, 5, 6, 2, 349000.00, 349000.00, 698000.00, '2021-04-07 00:57:46', '2021-04-07 00:57:46', '1'),
(4, 5, 5, 2, 449000.00, 449000.00, 898000.00, '2021-04-07 00:57:46', '2021-04-07 00:57:46', '6'),
(5, 5, 4, 1, 300000.00, 179000.00, 179000.00, '2021-04-07 00:57:46', '2021-04-07 00:57:46', '4');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Calvin Klein', '2021-03-29 00:10:45', '2021-03-29 00:10:45'),
(2, 'Diesel', '2021-03-29 00:10:50', '2021-03-29 00:21:21'),
(3, 'Polo', '2021-03-29 00:21:37', '2021-03-29 00:21:37'),
(4, 'Tommy Hilfiger', '2021-03-29 00:22:13', '2021-03-29 00:22:13'),
(6, 'Armani', '2021-03-29 01:41:54', '2021-03-29 01:41:54'),
(7, 'Prada', '2021-03-29 01:41:59', '2021-03-29 01:41:59'),
(8, 'H&M', '2021-03-29 01:42:06', '2021-03-29 01:42:06'),
(9, 'Chanel', '2021-03-29 01:49:34', '2021-03-29 01:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `phone`, `password`, `created_at`, `updated_at`, `home_number`, `ward`, `district`, `city`) VALUES
(10, 'sadasd', 'had', 'ccasasd@sdss.com', '12312312312', NULL, '2021-04-07 00:24:36', '2021-04-07 00:24:36', 'qưdqwdqw', 'áddqw', 'qdqwdqw', 'qưdqwdasd'),
(13, 'ádasdasdas', 'âsdasd', 'qsdde@asd.com', '12312312312312', NULL, '2021-04-07 00:57:45', '2021-04-07 00:57:45', 'ádwqqdqw', 'dqwdqwdqw', 'dưqfewfqdw', '1wqeqwe12');

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
(187, '2014_10_12_000000_create_users_table', 1),
(188, '2014_10_12_100000_create_password_resets_table', 1),
(189, '2019_08_19_000000_create_failed_jobs_table', 1),
(190, '2021_03_19_031634_create_product_categories_table', 1),
(191, '2021_03_19_032041_create_products_table', 1),
(192, '2021_03_19_035919_create_post_categories_table', 1),
(193, '2021_03_19_035930_create_posts_table', 1),
(194, '2021_03_20_021113_create_tags_table', 1),
(195, '2021_03_20_021235_create_taggables_table', 1),
(196, '2021_03_21_175859_create_verify_users_table', 1),
(197, '2021_03_22_035709_create_roles_table', 1),
(198, '2021_03_22_035927_create_permissions_table', 1),
(199, '2021_03_22_040504_create_user_roles_table', 1),
(200, '2021_03_22_040530_create_permission_roles_table', 1),
(201, '2021_03_26_031935_create_product_images_table', 1),
(202, '2021_03_29_063357_create_brands_table', 2),
(203, '2021_03_29_063436_create_sizes_table', 2),
(204, '2021_03_29_063900_add_brand_to_product_table', 3),
(205, '2021_03_29_064319_create_product_sizes_table', 3),
(206, '2021_03_29_133448_create_settings_table', 4),
(207, '2021_03_29_141613_create_banners_table', 5),
(208, '2021_03_29_143641_add_image_to_banner_table', 6),
(209, '2019_05_03_000001_create_customer_columns', 7),
(210, '2019_05_03_000002_create_subscriptions_table', 7),
(211, '2019_05_03_000003_create_subscription_items_table', 7),
(212, '2021_04_05_024351_create_customers_table', 7),
(213, '2021_04_05_032453_create_bills_table', 7),
(214, '2021_04_05_032516_create_bill_items_table', 7),
(215, '2021_04_05_042255_add_size_to_bill_items_table', 8),
(216, '2021_04_05_090840_add_address_to_customer_table', 9);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', 'user', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, '', 'role', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, '', 'permission', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(4, 'user_view', 'view user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(5, 'user_create', 'create user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(6, 'user_edit', 'edit user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(7, 'user_delete', 'delete user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(8, 'role_view', 'view role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(9, 'role_create', 'create role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(10, 'role_edit', 'edit role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(11, 'role_delete', 'delete role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(12, 'permission_view', 'view permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(13, 'permission_create', 'create permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(14, 'permission_edit', 'edit permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(15, 'permission_delete', 'delete permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(16, NULL, 'post', 0, '2021-03-28 23:01:44', '2021-03-28 23:01:44'),
(17, 'post_view', 'view post', 16, '2021-03-28 23:02:00', '2021-03-28 23:02:00'),
(18, 'post_edit', 'edit post', 16, '2021-03-28 23:02:17', '2021-03-28 23:02:17'),
(19, 'post_create', 'create post', 16, '2021-03-28 23:02:37', '2021-03-28 23:02:37'),
(20, 'post_delete', 'delete post', 16, '2021-03-28 23:02:51', '2021-03-28 23:02:51'),
(21, NULL, 'product', 0, '2021-03-28 23:03:04', '2021-03-28 23:03:04'),
(22, 'product_view', 'view product', 21, '2021-03-28 23:03:22', '2021-03-28 23:03:22'),
(23, 'product_create', 'create product', 21, '2021-03-28 23:03:39', '2021-03-28 23:03:39'),
(24, 'product_edit', 'edit product', 21, '2021-03-28 23:04:02', '2021-03-28 23:04:02'),
(25, 'product_delete', 'delete product', 21, '2021-03-28 23:04:19', '2021-03-28 23:04:19'),
(26, NULL, 'product category', 0, '2021-03-28 23:15:12', '2021-03-28 23:15:12'),
(27, 'productCategory_view', 'view product category', 26, '2021-03-28 23:15:39', '2021-03-28 23:15:39'),
(28, 'productCategory_create', 'create product category', 26, '2021-03-28 23:15:59', '2021-03-28 23:15:59'),
(29, 'productCategory_edit', 'edit product category', 26, '2021-03-28 23:16:17', '2021-03-28 23:16:17'),
(30, 'productCategory_delete', 'delete product category', 26, '2021-03-28 23:16:57', '2021-03-28 23:16:57'),
(31, NULL, 'post category', 0, '2021-03-28 23:17:34', '2021-03-28 23:17:34'),
(32, 'postCategory_view', 'view post category', 31, '2021-03-28 23:17:57', '2021-03-28 23:17:57'),
(33, 'postCategory_create', 'create post category', 31, '2021-03-28 23:18:15', '2021-03-28 23:18:15'),
(34, 'postCategory_edit', 'edit post category', 31, '2021-03-28 23:18:36', '2021-03-28 23:18:36'),
(35, 'postCategory_delete', 'delete post category', 31, '2021-03-28 23:18:52', '2021-03-28 23:18:52'),
(36, NULL, 'tag', 0, '2021-03-28 23:19:07', '2021-03-28 23:19:07'),
(37, 'tag_view', 'view tag', 36, '2021-03-28 23:19:23', '2021-03-28 23:19:23'),
(38, 'tag_create', 'create tag', 36, '2021-03-28 23:19:42', '2021-03-28 23:19:42'),
(39, 'tag_edit', 'edit tag', 36, '2021-03-28 23:19:53', '2021-03-28 23:19:53'),
(40, 'tag_delete', 'delete tag', 36, '2021-03-28 23:20:05', '2021-03-28 23:20:05'),
(41, NULL, 'brand', 0, '2021-03-29 00:03:38', '2021-03-29 00:03:38'),
(42, 'brand_view', 'view brand', 41, '2021-03-29 00:03:53', '2021-03-29 00:03:53'),
(43, 'brand_create', 'create brand', 41, '2021-03-29 00:04:08', '2021-03-29 00:04:08'),
(44, 'brand_edit', 'edit brand', 41, '2021-03-29 00:04:23', '2021-03-29 00:04:23'),
(45, 'brand_delete', 'delete brand', 41, '2021-03-29 00:04:38', '2021-03-29 00:04:38'),
(46, NULL, 'size', 0, '2021-03-29 00:04:53', '2021-03-29 00:04:53'),
(47, 'size_view', 'view size', 46, '2021-03-29 00:05:12', '2021-03-29 00:05:12'),
(48, 'size_create', 'create size', 46, '2021-03-29 00:05:26', '2021-03-29 00:05:26'),
(49, 'size_edit', 'edit size', 46, '2021-03-29 00:05:41', '2021-03-29 00:05:41'),
(50, 'size_delete', 'delete size', 46, '2021-03-29 00:05:55', '2021-03-29 00:05:55'),
(51, NULL, 'setting', 0, '2021-03-29 06:40:07', '2021-03-29 06:40:07'),
(52, 'setting_view', 'view setting', 51, '2021-03-29 06:40:23', '2021-03-29 06:40:23'),
(53, 'setting_create', 'create setting', 51, '2021-03-29 06:40:44', '2021-03-29 06:40:44'),
(54, 'setting_edit', 'edit setting', 51, '2021-03-29 06:40:59', '2021-03-29 06:40:59'),
(55, 'setting_delete', 'delete setting', 51, '2021-03-29 06:41:17', '2021-03-29 06:41:17'),
(56, NULL, 'banner', 0, '2021-03-29 07:25:08', '2021-03-29 07:25:08'),
(57, 'banner_view', 'view banner', 56, '2021-03-29 07:25:24', '2021-03-29 07:25:24'),
(58, 'banner_create', 'create banner', 56, '2021-03-29 07:25:41', '2021-03-29 07:25:41'),
(59, 'banner_edit', 'edit banner', 56, '2021-03-29 07:25:59', '2021-03-29 07:25:59'),
(60, 'banner_delete', 'delete banner', 56, '2021-03-29 07:26:21', '2021-03-29 07:26:21'),
(61, NULL, 'bill', 0, '2021-04-06 22:10:25', '2021-04-06 22:10:25'),
(62, 'bill_create', 'create bill', 61, '2021-04-06 22:10:39', '2021-04-06 22:10:39'),
(63, 'bill_view', 'view bill', 61, '2021-04-06 22:10:55', '2021-04-06 22:10:55'),
(64, 'bill_edit', 'edit bill', 61, '2021-04-06 22:11:08', '2021-04-06 22:11:08'),
(65, 'bill_delete', 'delete bill', 61, '2021-04-06 22:11:21', '2021-04-06 22:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, 4, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, 1, 5, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(4, 1, 6, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(5, 1, 7, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(6, 1, 8, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(7, 1, 9, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(8, 1, 10, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(9, 1, 11, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(10, 1, 12, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(11, 1, 13, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(12, 1, 14, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(13, 1, 15, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(14, 1, 17, NULL, NULL),
(15, 1, 18, NULL, NULL),
(16, 1, 19, NULL, NULL),
(17, 1, 20, NULL, NULL),
(18, 1, 22, NULL, NULL),
(19, 1, 23, NULL, NULL),
(20, 1, 24, NULL, NULL),
(21, 1, 25, NULL, NULL),
(22, 1, 27, NULL, NULL),
(23, 1, 28, NULL, NULL),
(24, 1, 29, NULL, NULL),
(25, 1, 30, NULL, NULL),
(26, 1, 32, NULL, NULL),
(27, 1, 33, NULL, NULL),
(28, 1, 34, NULL, NULL),
(29, 1, 35, NULL, NULL),
(30, 1, 37, NULL, NULL),
(31, 1, 38, NULL, NULL),
(32, 1, 39, NULL, NULL),
(33, 1, 40, NULL, NULL),
(34, 1, 42, NULL, NULL),
(35, 1, 43, NULL, NULL),
(36, 1, 44, NULL, NULL),
(37, 1, 45, NULL, NULL),
(38, 1, 47, NULL, NULL),
(39, 1, 48, NULL, NULL),
(40, 1, 49, NULL, NULL),
(41, 1, 50, NULL, NULL),
(42, 1, 52, NULL, NULL),
(43, 1, 53, NULL, NULL),
(44, 1, 54, NULL, NULL),
(45, 1, 55, NULL, NULL),
(46, 1, 57, NULL, NULL),
(47, 1, 58, NULL, NULL),
(48, 1, 59, NULL, NULL),
(49, 1, 60, NULL, NULL),
(50, 2, 17, NULL, NULL),
(51, 2, 18, NULL, NULL),
(52, 2, 19, NULL, NULL),
(53, 2, 20, NULL, NULL),
(54, 3, 22, NULL, NULL),
(55, 3, 23, NULL, NULL),
(56, 3, 24, NULL, NULL),
(57, 3, 25, NULL, NULL),
(58, 1, 62, NULL, NULL),
(59, 1, 63, NULL, NULL),
(60, 1, 64, NULL, NULL),
(61, 1, 65, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `author_id`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Vì Sao Chất Lượng Vẫn Cao Nhưng Giá Phải Chăng.', 'Câu trả lời và thông báo về một số thay đổi “nhỏ mà không nhỏ”. 2 ngày qua ADELLA nhận được nhiều sự quan tâm của các chị nhà mình về vấn đề này. Nên hôm nay em xin phép viết bài dài xíu để trả lời các chị mình ạ.hihi.\'', '<h3>Điều G&igrave; L&agrave;m N&ecirc;n Thương Hiệu Adella 6 Năm Trước Chỉ L&agrave; 1 Cửa H&agrave;ng Trong Con Ng&otilde; Nhỏ !</h3>\r\n\r\n<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/1.jpg', 3, '2021-03-30 23:42:46', '2021-03-30 23:42:46'),
(2, 'Các Cách Chăm Sóc Sneaker.', 'Xin chào các độc giả của AĐELLA , hôm nay tôi sẽ nói cho các bạn về cách chăm sóc giầy Sneaker. Sở hữu những đôi giày Sneaker chất lượng là điều vô cùng tuyệt vời đối rất nhiều người mê giày. Tuy nhiên bạn còn phải biết cách giặt giày Sneaker như thế nào', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/2.jpg', 2, '2021-03-30 23:47:13', '2021-03-30 23:47:13'),
(3, 'Những Mẫu Thời Trang Công Sở Cao Cấp Đẹp 2019.', 'Thời trang công sở ngày nay không còn là những khái niệm khô cứng về áo sơ mi, quần tây, chân váy. Mà đó là một sàn diễn thời trang với sự biến tấu đầy mới mẻ từ kiểu dáng, chất liệu đến màu sắc.', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/3.jpg', 4, '2021-03-30 23:48:08', '2021-03-30 23:48:08'),
(4, 'Các Cách Chăm Sóc Sneaker.', 'Xin chào các độc giả của AĐELLA , hôm nay tôi sẽ nói cho các bạn về cách chăm sóc giầy Sneaker. Sở hữu những đôi giày Sneaker chất lượng là điều vô cùng tuyệt vời đối rất nhiều người mê giày. Tuy nhiên bạn còn phải biết cách giặt giày Sneaker', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/2.jpg', 5, '2021-03-30 23:49:10', '2021-03-30 23:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Tin Tức', 0, '2021-03-28 23:21:23', '2021-03-28 23:21:23'),
(2, 'Adella Logistics', 1, '2021-03-28 23:21:35', '2021-03-28 23:21:35'),
(3, 'Thương hiệu Adella', 1, '2021-03-28 23:21:46', '2021-03-28 23:21:46'),
(4, 'Feedback khách hàng', 1, '2021-03-28 23:21:55', '2021-03-28 23:21:55'),
(5, 'Thông tin khuyến mại', 1, '2021-03-28 23:22:03', '2021-03-28 23:22:03'),
(6, 'Tuyển dụng', 1, '2021-03-28 23:22:13', '2021-03-28 23:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` double(8,2) UNSIGNED NOT NULL,
  `discount_price` double(8,2) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `seller_id`, `avatar`, `base_price`, `discount_price`, `category_id`, `created_at`, `updated_at`, `brand_id`) VALUES
(2, 'Áo Len Nam', 'Áo len phom dáng Slim Fit ôm gọn gàng, tôn dáng và ấm áp. Thiết kế cổ tròn basic, bo gấu và tay áo gọn gàng. Mặt trước dệt đan xen tạo điểm nhấn ấn tượng. Màu sắc trẻ trung kết hợp hiệu ứng màu melange mang đến diện mạo thu hút cho người mặc..', 1, 'product/2021/03/29/1.jpg', 625000.00, 499000.00, 4, '2021-03-29 01:43:43', '2021-03-29 01:45:22', 6),
(3, 'Áo Len Dài Tay Nữ', 'Áo len sợi dày ánh kim đính hạt trang trí. Phom regular, cổ tròn, tay dài. Phù hợp mặc mùa đông, kiểu dáng thời trang, cá tính phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với quần jeans, chân váy, giày bệt, thể thao..', 1, 'product/2021/03/29/3.jpg', 499000.00, NULL, 1, '2021-03-29 01:46:37', '2021-03-29 01:46:37', 7),
(4, 'Váy Len Mỏng Dài Tay', 'Váy len nữ họa tiết kẻ ngang. Thiết kế dáng regular, tay dài buộc nơ, chất liệu mềm mại, nhẹ nhàng, ấm áp và không gây tích điện..', 1, 'product/2021/03/29/5.jpg', 300000.00, 179000.00, 1, '2021-03-29 01:48:00', '2021-03-29 01:48:00', 8),
(5, 'Áo Khoác Nam Mặc Nhà', 'Áo khoác nam mặc nhà dáng regular, phối màu ở cổ và tay áo. Chất liệu dày dặn, ấm áp vào mùa đông..', 1, 'product/2021/03/29/7.jpg', 449000.00, NULL, 3, '2021-03-29 01:50:00', '2021-03-29 01:50:08', 9),
(6, 'Áo Nỉ Nữ In Hình', 'Áo nỉ nữ in hình, dáng regular, cổ tròn, tay dài. Chất liệu mềm mại,ấm áp về mùa đông..', 1, 'product/2021/03/29/9.jpg', 349000.00, NULL, 1, '2021-03-29 01:51:06', '2021-03-29 01:51:06', 7),
(7, 'Quần Dài Nam', 'Quần jogger nam dáng regular, bo gấu, cạp chun, có giây rút, túi chéo và túi hộp 2 bên. Chất liệu có độ bền cao, ít khả năng bị nấm mốc, đàn hồi và giữ nhiệt tốt, đem lại sự thoải mái cho người mặc trong mọi hoạt động..', 1, 'product/2021/03/29/11.jpg', 600000.00, 449000.00, 6, '2021-03-29 01:52:28', '2021-03-29 01:52:28', 9),
(8, 'Áo Sơ Mi Nữ Linen', 'Áo sơ mi Cotton USA, phom dáng Regular fit, cổ tàu cài khuy, tay dài có măng séc, gấu đuôi tôm, đơn giản, mộc mạc. Phù hợp nhiều hoàn cảnh. Kết hợp với quần kaki, jeans, với sandal, giày bệt...', 1, 'product/2021/03/30/13.jpg', 199000.00, NULL, 1, '2021-03-29 23:37:28', '2021-03-29 23:37:28', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Áo khoác Nữ', 0, '2021-03-28 23:24:55', '2021-03-28 23:24:55', 'ao-khoac-nu'),
(2, 'Áo len', 0, '2021-03-28 23:25:06', '2021-03-28 23:25:06', NULL),
(3, 'Áo khoác', 0, '2021-03-28 23:25:15', '2021-03-28 23:25:15', NULL),
(4, 'Nam', 0, '2021-03-28 23:25:20', '2021-03-28 23:25:20', NULL),
(5, 'Áo sơ mi', 0, '2021-03-28 23:25:28', '2021-03-28 23:25:28', NULL),
(6, 'Quần áo thể thao', 0, '2021-03-28 23:25:40', '2021-03-28 23:25:40', NULL),
(7, 'Thời trang công sở', 0, '2021-03-28 23:25:54', '2021-03-28 23:25:54', NULL),
(8, 'Phụ kiện', 0, '2021-03-28 23:26:03', '2021-03-28 23:26:03', NULL),
(9, 'Áo khoác mùa đông', 0, '2021-04-10 07:48:11', '2021-04-10 07:48:11', 'ao-khoac-mua-dong');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `path`, `product_id`, `created_at`, `updated_at`) VALUES
(10, 'product/2021/03/29/1.jpg', 2, '2021-03-29 01:44:49', '2021-03-29 01:44:49'),
(11, 'product/2021/03/29/2.jpg', 2, '2021-03-29 01:44:49', '2021-03-29 01:44:49'),
(12, 'product/2021/03/29/3.jpg', 3, '2021-03-29 01:46:37', '2021-03-29 01:46:37'),
(13, 'product/2021/03/29/4.jpg', 3, '2021-03-29 01:46:37', '2021-03-29 01:46:37'),
(14, 'product/2021/03/29/5.jpg', 4, '2021-03-29 01:48:00', '2021-03-29 01:48:00'),
(15, 'product/2021/03/29/6.jpg', 4, '2021-03-29 01:48:00', '2021-03-29 01:48:00'),
(16, 'product/2021/03/29/7.jpg', 5, '2021-03-29 01:50:00', '2021-03-29 01:50:00'),
(17, 'product/2021/03/29/8.jpg', 5, '2021-03-29 01:50:00', '2021-03-29 01:50:00'),
(18, 'product/2021/03/29/11.jpg', 7, '2021-03-29 01:52:28', '2021-03-29 01:52:28'),
(19, 'product/2021/03/29/12.jpg', 7, '2021-03-29 01:52:28', '2021-03-29 01:52:28'),
(20, 'product/2021/03/30/13.jpg', 8, '2021-03-29 23:37:28', '2021-03-29 23:37:28'),
(21, 'product/2021/03/30/14.jpg', 8, '2021-03-29 23:37:28', '2021-03-29 23:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(5, 1, 2, NULL, NULL),
(6, 1, 3, NULL, NULL),
(7, 1, 4, NULL, NULL),
(8, 2, 1, NULL, NULL),
(9, 2, 2, NULL, NULL),
(10, 2, 3, NULL, NULL),
(11, 2, 4, NULL, NULL),
(12, 2, 5, NULL, NULL),
(13, 2, 6, NULL, NULL),
(14, 3, 1, NULL, NULL),
(15, 3, 2, NULL, NULL),
(16, 3, 3, NULL, NULL),
(17, 3, 4, NULL, NULL),
(18, 4, 1, NULL, NULL),
(19, 4, 2, NULL, NULL),
(20, 4, 3, NULL, NULL),
(21, 4, 4, NULL, NULL),
(22, 6, 1, NULL, NULL),
(23, 6, 2, NULL, NULL),
(24, 6, 3, NULL, NULL),
(25, 6, 4, NULL, NULL),
(26, 7, 1, NULL, NULL),
(27, 7, 2, NULL, NULL),
(28, 7, 3, NULL, NULL),
(29, 7, 5, NULL, NULL),
(30, 7, 6, NULL, NULL),
(31, 8, 1, NULL, NULL),
(32, 8, 2, NULL, NULL),
(33, 8, 3, NULL, NULL),
(34, 8, 4, NULL, NULL),
(35, 8, 5, NULL, NULL),
(36, 9, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'super admin', '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, 'writer', 'người viết tin tức', '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, 'seller', 'người bán hàng', '2021-03-27 10:51:37', '2021-03-27 10:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`) VALUES
(1, 'Địa chỉ', '48 Tố Hữu, Trung Văn, Từ Liêm, Hà Nội', '2021-03-29 08:20:50', '2021-03-29 08:20:50'),
(2, 'Phone', '0988888888', '2021-03-29 08:21:09', '2021-03-29 08:21:09'),
(3, 'Email', 'adella_fashion@gmail.com', '2021-03-29 08:21:28', '2021-03-29 08:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2021-03-29 00:22:35', '2021-03-29 00:24:46'),
(2, 'M', '2021-03-29 00:22:44', '2021-03-29 00:22:44'),
(3, 'L', '2021-03-29 00:22:47', '2021-03-29 00:22:47'),
(4, 'XS', '2021-03-29 00:23:00', '2021-03-29 00:23:00'),
(5, 'XL', '2021-03-29 00:23:05', '2021-03-29 00:23:05'),
(6, 'XXL', '2021-03-29 00:23:09', '2021-03-29 00:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(7, 2, 'Product', NULL, NULL),
(9, 2, 'Product', NULL, NULL),
(10, 2, 'Product', NULL, NULL),
(11, 2, 'Product', NULL, NULL),
(12, 2, 'Product', NULL, NULL),
(7, 3, 'Product', NULL, NULL),
(9, 3, 'Product', NULL, NULL),
(10, 3, 'Product', NULL, NULL),
(12, 3, 'Product', NULL, NULL),
(13, 3, 'Product', NULL, NULL),
(7, 4, 'Product', NULL, NULL),
(10, 4, 'Product', NULL, NULL),
(11, 4, 'Product', NULL, NULL),
(12, 4, 'Product', NULL, NULL),
(13, 4, 'Product', NULL, NULL),
(7, 5, 'Product', NULL, NULL),
(9, 5, 'Product', NULL, NULL),
(10, 5, 'Product', NULL, NULL),
(11, 5, 'Product', NULL, NULL),
(12, 5, 'Product', NULL, NULL),
(7, 6, 'Product', NULL, NULL),
(9, 6, 'Product', NULL, NULL),
(10, 6, 'Product', NULL, NULL),
(7, 7, 'Product', NULL, NULL),
(9, 7, 'Product', NULL, NULL),
(10, 7, 'Product', NULL, NULL),
(12, 7, 'Product', NULL, NULL),
(13, 7, 'Product', NULL, NULL),
(7, 8, 'Product', NULL, NULL),
(11, 8, 'Product', NULL, NULL),
(12, 8, 'Product', NULL, NULL),
(13, 8, 'Product', NULL, NULL),
(9, 1, 'Post', NULL, NULL),
(10, 1, 'Post', NULL, NULL),
(12, 1, 'Post', NULL, NULL),
(7, 2, 'Product', NULL, NULL),
(9, 2, 'Product', NULL, NULL),
(10, 2, 'Product', NULL, NULL),
(11, 2, 'Product', NULL, NULL),
(12, 2, 'Product', NULL, NULL),
(7, 3, 'Product', NULL, NULL),
(9, 3, 'Product', NULL, NULL),
(10, 3, 'Product', NULL, NULL),
(12, 3, 'Product', NULL, NULL),
(13, 3, 'Product', NULL, NULL),
(7, 4, 'Product', NULL, NULL),
(10, 4, 'Product', NULL, NULL),
(11, 4, 'Product', NULL, NULL),
(12, 4, 'Product', NULL, NULL),
(13, 4, 'Product', NULL, NULL),
(7, 5, 'Product', NULL, NULL),
(9, 5, 'Product', NULL, NULL),
(10, 5, 'Product', NULL, NULL),
(11, 5, 'Product', NULL, NULL),
(12, 5, 'Product', NULL, NULL),
(7, 6, 'Product', NULL, NULL),
(9, 6, 'Product', NULL, NULL),
(10, 6, 'Product', NULL, NULL),
(7, 7, 'Product', NULL, NULL),
(9, 7, 'Product', NULL, NULL),
(10, 7, 'Product', NULL, NULL),
(12, 7, 'Product', NULL, NULL),
(13, 7, 'Product', NULL, NULL),
(7, 8, 'Product', NULL, NULL),
(11, 8, 'Product', NULL, NULL),
(12, 8, 'Product', NULL, NULL),
(13, 8, 'Product', NULL, NULL),
(9, 1, 'Post', NULL, NULL),
(10, 1, 'Post', NULL, NULL),
(12, 1, 'Post', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'quần áo', '2021-03-28 23:23:03', '2021-03-28 23:23:03'),
(8, 'giày', '2021-03-28 23:23:11', '2021-03-28 23:23:11'),
(9, 'thời trang', '2021-03-28 23:23:17', '2021-03-28 23:23:17'),
(10, 'shopping', '2021-03-28 23:23:30', '2021-03-28 23:23:30'),
(11, 'mua sắm online', '2021-03-28 23:23:41', '2021-03-28 23:23:41'),
(12, 'fashion', '2021-03-28 23:23:53', '2021-03-28 23:23:53'),
(13, 'mặc đẹp', '2021-03-28 23:24:00', '2021-03-28 23:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'admin', 'admin', 'user/2021/03/30/13.1.jpg', 'admin@admin.com', '2021-03-27 10:51:37', '$2y$10$x6KfOXO5SF6cvDBBzPYHJu8o3ckXDt50ATn4tm/9BIgIgD2jWOMbK', 'fsb2DIgAgeZ3OqV1KrmcBBI0dSLbcbaqokfwkgVwZwD7aUEVpytzTwvhSfgp', '2021-03-27 10:51:37', '2021-03-29 23:30:32', NULL, NULL, NULL, NULL),
(2, 'ádasd', 'qưdqwd', NULL, 'lackiluke@mail.com', '2021-03-29 00:58:39', '$2y$10$qVATf/CuZFM/mmyNeMxLz.A9UvhGhcQ7JcPVIgUK3Q4eVXQdJfClm', NULL, '2021-03-29 00:58:39', '2021-03-29 00:58:39', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `token`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'iNssPlgItRzS3b5M2N6Iw1nu30eYqwUcbDIAsf37Cf9oGae6lyhfSJsMraXL', 2, '2021-03-29 00:58:39', '2021-03-29 00:58:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_items`
--
ALTER TABLE `bill_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bill_items`
--
ALTER TABLE `bill_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `adelaapi`
--
CREATE DATABASE IF NOT EXISTS `adelaapi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `adelaapi`;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `collection`, `subtitle`, `title`, `description`, `created_at`, `updated_at`, `image`) VALUES
(1, 'TÚI XÁCH', 'BỘ SƯU TẬP MỚI', 'SẢN PHẨM ĐỘC ĐÁO!', 'BACKPACK', 'Thiết kế theo xu hướng thời trang đương đại mới nhất, khẳng định phong cách của bạn.', '2021-03-29 07:47:22', '2021-03-29 08:00:31', 'banner/2021/03/29/1.jpg'),
(2, 'TÚI XÁCH', 'BỘ SƯU TẬP MỚI', 'SANG TRỌNG & LỊCH LÃM!', 'BLACK HANDBAG', 'Những dòng sản phẩm được yêu thích nhất và được chế tác từ các chất liệu nhập khẩu 100%.', '2021-03-29 07:48:04', '2021-03-29 08:01:32', 'banner/2021/03/29/2.jpg'),
(3, 'QUẦN ÁO', 'BỘ SƯU TẬP MỚI', 'HÀNG MỚI VỀ!', 'AMAZING ADELLA', 'Năng động, trẻ trung & phong cách.', '2021-03-29 07:48:38', '2021-03-29 08:01:17', 'banner/2021/03/29/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `receive_date` datetime DEFAULT NULL,
  `price` double UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` tinyint(3) UNSIGNED NOT NULL,
  `cancel_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `receiver_id`, `buyer_id`, `receive_date`, `price`, `note`, `status`, `coupon_code`, `payment_type`, `cancel_reason`, `created_at`, `updated_at`) VALUES
(5, 13, 13, NULL, 1775000, 'ádasdasdasdasd', 0, NULL, 2, NULL, '2021-04-07 00:57:46', '2021-04-07 00:57:46'),
(8, 19, 18, NULL, 648000, 'ohasdasndnqwdqwfew', 0, NULL, 2, NULL, '2021-04-12 20:43:35', '2021-04-12 20:43:35'),
(9, 24, 24, NULL, 1745000, 'sadasd', 0, NULL, 1, NULL, '2021-04-12 21:59:20', '2021-04-12 21:59:20'),
(10, 25, 25, NULL, 1347000, 'ádas', 0, NULL, 1, NULL, '2021-04-12 22:11:44', '2021-04-12 22:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `bill_items`
--

CREATE TABLE `bill_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `base_price` double(8,2) UNSIGNED NOT NULL,
  `discount_price` double(8,2) UNSIGNED NOT NULL,
  `total_price` double UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_items`
--

INSERT INTO `bill_items` (`id`, `bill_id`, `product_id`, `quantity`, `base_price`, `discount_price`, `total_price`, `created_at`, `updated_at`, `size`) VALUES
(3, 5, 6, 2, 349000.00, 349000.00, 698000, '2021-04-07 00:57:46', '2021-04-07 00:57:46', '1'),
(5, 5, 4, 1, 300000.00, 179000.00, 179000, '2021-04-07 00:57:46', '2021-04-07 00:57:46', '4'),
(9, 8, 8, 1, 199000.00, 199000.00, 199000, '2021-04-12 20:43:35', '2021-04-12 20:43:35', '1'),
(10, 8, 11, 1, 600000.00, 449000.00, 449000, '2021-04-12 20:43:35', '2021-04-12 20:43:35', '1'),
(11, 9, 6, 5, 349000.00, 349000.00, 1745000, '2021-04-12 21:59:20', '2021-04-12 21:59:20', '1'),
(12, 10, 11, 3, 600000.00, 449000.00, 1347000, '2021-04-12 22:11:44', '2021-04-12 22:11:44', '1');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Calvin Klein', '2021-03-29 00:10:45', '2021-03-29 00:10:45'),
(2, 'Diesel', '2021-03-29 00:10:50', '2021-03-29 00:21:21'),
(3, 'Polo', '2021-03-29 00:21:37', '2021-03-29 00:21:37'),
(4, 'Tommy Hilfiger', '2021-03-29 00:22:13', '2021-03-29 00:22:13'),
(6, 'Armani', '2021-03-29 01:41:54', '2021-03-29 01:41:54'),
(7, 'Prada', '2021-03-29 01:41:59', '2021-03-29 01:41:59'),
(8, 'H&M', '2021-03-29 01:42:06', '2021-03-29 01:42:06'),
(9, 'Chanel', '2021-03-29 01:49:34', '2021-03-29 01:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `phone`, `password`, `created_at`, `updated_at`, `home_number`, `ward`, `district`, `city`) VALUES
(10, 'sadasd', 'had', 'ccasasd@sdss.com', '12312312312', NULL, '2021-04-07 00:24:36', '2021-04-07 00:24:36', 'qưdqwdqw', 'áddqw', 'qdqwdqw', 'qưdqwdasd'),
(13, 'ádasdasdas', 'âsdasd', 'qsdde@asd.com', '12312312312312', NULL, '2021-04-07 00:57:45', '2021-04-07 00:57:45', 'ádwqqdqw', 'dqwdqwdqw', 'dưqfewfqdw', '1wqeqwe12'),
(14, 'huy', 'dao', 'asdasd@dassd.com', '1234123', NULL, '2021-04-08 02:28:42', '2021-04-08 02:28:42', 'lasd', 'qwqd', 'asdsa', 'dqwdq'),
(15, 'qưefwqdqwd', 'dqwqdwq', '141312sdad@gmail.com', '12412412412', NULL, '2021-04-12 01:38:24', '2021-04-12 01:38:24', '1sd1wsq', 'dưqdqwd', 'd32d2f', '12eqwdqwd'),
(18, 'dádas', '12', 'aasdasdq@sadasda', '12312312412312', NULL, '2021-04-12 20:43:35', '2021-04-12 20:43:35', 'dqwdqwdq', 'dqwdqw', 'dqwdqwd', 'qưdwqdqwd'),
(19, 'fqfefew', 'dqwqwdqw', 'dewfefwefwe@sdsad', '12312412312', NULL, '2021-04-12 20:43:35', '2021-04-12 20:43:35', 'fewfwefwe', 'qưdqqw', 'đâcsadas', 'đâsdasdf'),
(24, 'dqwdqwd', 'ádqw', 'q@dsad', 'qqwdwqdqw', NULL, '2021-04-12 21:59:19', '2021-04-12 21:59:19', 'qưdqwdqdw', 'qưdqwdqw', 'dqwdqwd', 'qdqwdqwd'),
(25, 'qưdqwd', 'ưdqdqwd', 'd@ggee', '1231231242', NULL, '2021-04-12 22:11:44', '2021-04-12 22:11:44', 'd1d12e12', '12wqdqwd', 'dqwdqwdqw', 'd1d1dqwd');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `slug`, `order_number`, `created_at`, `updated_at`) VALUES
(1, 'Nam', 0, 'nam', 2, '2021-04-11 21:02:17', '2021-04-11 21:02:17'),
(2, 'Áo khoác nam', 1, 'ao-khoac-nam', 1, '2021-04-11 21:03:37', '2021-04-11 21:03:37'),
(3, 'Trang chủ', 0, 'trang-chu', 1, '2021-04-11 21:04:15', '2021-04-11 21:04:15'),
(4, 'Quần jeans nam', 1, 'quan-jeans-nam', 2, '2021-04-11 21:08:52', '2021-04-11 21:35:02'),
(5, 'Áo sơ mi nam', 1, 'ao-so-mi-nam', 3, '2021-04-11 21:09:41', '2021-04-11 21:35:23'),
(7, 'Nữ', 0, 'nu', 3, '2021-04-11 21:11:11', '2021-04-11 21:11:11'),
(8, 'Áo khoác nữ', 7, 'ao-khoac-nu', 1, '2021-04-11 21:11:25', '2021-04-11 21:11:25'),
(9, 'Quần jeans nữ', 7, 'quan-jeans-nu', 2, '2021-04-11 21:11:46', '2021-04-11 21:11:46'),
(10, 'tin tức', 0, 'tin-tuc', 4, '2021-04-11 21:12:00', '2021-04-11 21:12:00'),
(11, 'Liên hệ', 0, 'lien-he', 5, '2021-04-11 21:12:19', '2021-04-11 21:12:19');

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
(187, '2014_10_12_000000_create_users_table', 1),
(188, '2014_10_12_100000_create_password_resets_table', 1),
(189, '2019_08_19_000000_create_failed_jobs_table', 1),
(190, '2021_03_19_031634_create_product_categories_table', 1),
(191, '2021_03_19_032041_create_products_table', 1),
(192, '2021_03_19_035919_create_post_categories_table', 1),
(193, '2021_03_19_035930_create_posts_table', 1),
(194, '2021_03_20_021113_create_tags_table', 1),
(195, '2021_03_20_021235_create_taggables_table', 1),
(196, '2021_03_21_175859_create_verify_users_table', 1),
(197, '2021_03_22_035709_create_roles_table', 1),
(198, '2021_03_22_035927_create_permissions_table', 1),
(199, '2021_03_22_040504_create_user_roles_table', 1),
(200, '2021_03_22_040530_create_permission_roles_table', 1),
(201, '2021_03_26_031935_create_product_images_table', 1),
(202, '2021_03_29_063357_create_brands_table', 2),
(203, '2021_03_29_063436_create_sizes_table', 2),
(204, '2021_03_29_063900_add_brand_to_product_table', 3),
(205, '2021_03_29_064319_create_product_sizes_table', 3),
(206, '2021_03_29_133448_create_settings_table', 4),
(207, '2021_03_29_141613_create_banners_table', 5),
(208, '2021_03_29_143641_add_image_to_banner_table', 6),
(209, '2019_05_03_000001_create_customer_columns', 7),
(210, '2019_05_03_000002_create_subscriptions_table', 7),
(211, '2019_05_03_000003_create_subscription_items_table', 7),
(212, '2021_04_05_024351_create_customers_table', 7),
(213, '2021_04_05_032453_create_bills_table', 7),
(214, '2021_04_05_032516_create_bill_items_table', 7),
(215, '2021_04_05_042255_add_size_to_bill_items_table', 8),
(216, '2021_04_05_090840_add_address_to_customer_table', 9),
(217, '2021_04_12_030754_create_menus_table', 10),
(218, '2021_04_13_063632_create_newsletters_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'a@s', '2021-04-12 23:55:29', '2021-04-12 23:55:29'),
(2, 'mmmms@sdmm', '2021-04-13 00:24:14', '2021-04-13 00:24:14');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', 'user', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, '', 'role', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, '', 'permission', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(4, 'user_view', 'view user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(5, 'user_create', 'create user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(6, 'user_edit', 'edit user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(7, 'user_delete', 'delete user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(8, 'role_view', 'view role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(9, 'role_create', 'create role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(10, 'role_edit', 'edit role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(11, 'role_delete', 'delete role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(12, 'permission_view', 'view permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(13, 'permission_create', 'create permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(14, 'permission_edit', 'edit permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(15, 'permission_delete', 'delete permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(16, NULL, 'post', 0, '2021-03-28 23:01:44', '2021-03-28 23:01:44'),
(17, 'post_view', 'view post', 16, '2021-03-28 23:02:00', '2021-03-28 23:02:00'),
(18, 'post_edit', 'edit post', 16, '2021-03-28 23:02:17', '2021-03-28 23:02:17'),
(19, 'post_create', 'create post', 16, '2021-03-28 23:02:37', '2021-03-28 23:02:37'),
(20, 'post_delete', 'delete post', 16, '2021-03-28 23:02:51', '2021-03-28 23:02:51'),
(21, NULL, 'product', 0, '2021-03-28 23:03:04', '2021-03-28 23:03:04'),
(22, 'product_view', 'view product', 21, '2021-03-28 23:03:22', '2021-03-28 23:03:22'),
(23, 'product_create', 'create product', 21, '2021-03-28 23:03:39', '2021-03-28 23:03:39'),
(24, 'product_edit', 'edit product', 21, '2021-03-28 23:04:02', '2021-03-28 23:04:02'),
(25, 'product_delete', 'delete product', 21, '2021-03-28 23:04:19', '2021-03-28 23:04:19'),
(26, NULL, 'product category', 0, '2021-03-28 23:15:12', '2021-03-28 23:15:12'),
(27, 'productCategory_view', 'view product category', 26, '2021-03-28 23:15:39', '2021-03-28 23:15:39'),
(28, 'productCategory_create', 'create product category', 26, '2021-03-28 23:15:59', '2021-03-28 23:15:59'),
(29, 'productCategory_edit', 'edit product category', 26, '2021-03-28 23:16:17', '2021-03-28 23:16:17'),
(30, 'productCategory_delete', 'delete product category', 26, '2021-03-28 23:16:57', '2021-03-28 23:16:57'),
(31, NULL, 'post category', 0, '2021-03-28 23:17:34', '2021-03-28 23:17:34'),
(32, 'postCategory_view', 'view post category', 31, '2021-03-28 23:17:57', '2021-03-28 23:17:57'),
(33, 'postCategory_create', 'create post category', 31, '2021-03-28 23:18:15', '2021-03-28 23:18:15'),
(34, 'postCategory_edit', 'edit post category', 31, '2021-03-28 23:18:36', '2021-03-28 23:18:36'),
(35, 'postCategory_delete', 'delete post category', 31, '2021-03-28 23:18:52', '2021-03-28 23:18:52'),
(36, NULL, 'tag', 0, '2021-03-28 23:19:07', '2021-03-28 23:19:07'),
(37, 'tag_view', 'view tag', 36, '2021-03-28 23:19:23', '2021-03-28 23:19:23'),
(38, 'tag_create', 'create tag', 36, '2021-03-28 23:19:42', '2021-03-28 23:19:42'),
(39, 'tag_edit', 'edit tag', 36, '2021-03-28 23:19:53', '2021-03-28 23:19:53'),
(40, 'tag_delete', 'delete tag', 36, '2021-03-28 23:20:05', '2021-03-28 23:20:05'),
(41, NULL, 'brand', 0, '2021-03-29 00:03:38', '2021-03-29 00:03:38'),
(42, 'brand_view', 'view brand', 41, '2021-03-29 00:03:53', '2021-03-29 00:03:53'),
(43, 'brand_create', 'create brand', 41, '2021-03-29 00:04:08', '2021-03-29 00:04:08'),
(44, 'brand_edit', 'edit brand', 41, '2021-03-29 00:04:23', '2021-03-29 00:04:23'),
(45, 'brand_delete', 'delete brand', 41, '2021-03-29 00:04:38', '2021-03-29 00:04:38'),
(46, NULL, 'size', 0, '2021-03-29 00:04:53', '2021-03-29 00:04:53'),
(47, 'size_view', 'view size', 46, '2021-03-29 00:05:12', '2021-03-29 00:05:12'),
(48, 'size_create', 'create size', 46, '2021-03-29 00:05:26', '2021-03-29 00:05:26'),
(49, 'size_edit', 'edit size', 46, '2021-03-29 00:05:41', '2021-03-29 00:05:41'),
(50, 'size_delete', 'delete size', 46, '2021-03-29 00:05:55', '2021-03-29 00:05:55'),
(51, NULL, 'setting', 0, '2021-03-29 06:40:07', '2021-03-29 06:40:07'),
(52, 'setting_view', 'view setting', 51, '2021-03-29 06:40:23', '2021-03-29 06:40:23'),
(53, 'setting_create', 'create setting', 51, '2021-03-29 06:40:44', '2021-03-29 06:40:44'),
(54, 'setting_edit', 'edit setting', 51, '2021-03-29 06:40:59', '2021-03-29 06:40:59'),
(55, 'setting_delete', 'delete setting', 51, '2021-03-29 06:41:17', '2021-03-29 06:41:17'),
(56, NULL, 'banner', 0, '2021-03-29 07:25:08', '2021-03-29 07:25:08'),
(57, 'banner_view', 'view banner', 56, '2021-03-29 07:25:24', '2021-03-29 07:25:24'),
(58, 'banner_create', 'create banner', 56, '2021-03-29 07:25:41', '2021-03-29 07:25:41'),
(59, 'banner_edit', 'edit banner', 56, '2021-03-29 07:25:59', '2021-03-29 07:25:59'),
(60, 'banner_delete', 'delete banner', 56, '2021-03-29 07:26:21', '2021-03-29 07:26:21'),
(61, NULL, 'bill', 0, '2021-04-06 22:10:25', '2021-04-06 22:10:25'),
(62, 'bill_create', 'create bill', 61, '2021-04-06 22:10:39', '2021-04-06 22:10:39'),
(63, 'bill_view', 'view bill', 61, '2021-04-06 22:10:55', '2021-04-06 22:10:55'),
(64, 'bill_edit', 'edit bill', 61, '2021-04-06 22:11:08', '2021-04-06 22:11:08'),
(65, 'bill_delete', 'delete bill', 61, '2021-04-06 22:11:21', '2021-04-06 22:11:21'),
(66, NULL, 'menu', 0, '2021-04-11 20:11:33', '2021-04-11 20:11:33'),
(67, 'menu_create', 'create menu', 66, '2021-04-11 20:11:47', '2021-04-11 20:11:47'),
(68, 'menu_view', 'view menu', 66, '2021-04-11 20:12:04', '2021-04-11 20:12:04'),
(69, 'menu_edit', 'edit menu', 66, '2021-04-11 20:12:19', '2021-04-11 20:12:19'),
(70, 'menu_delete', 'delete menu', 66, '2021-04-11 20:12:36', '2021-04-11 20:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, 4, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, 1, 5, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(4, 1, 6, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(5, 1, 7, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(6, 1, 8, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(7, 1, 9, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(8, 1, 10, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(9, 1, 11, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(10, 1, 12, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(11, 1, 13, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(12, 1, 14, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(13, 1, 15, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(14, 1, 17, NULL, NULL),
(15, 1, 18, NULL, NULL),
(16, 1, 19, NULL, NULL),
(17, 1, 20, NULL, NULL),
(18, 1, 22, NULL, NULL),
(19, 1, 23, NULL, NULL),
(20, 1, 24, NULL, NULL),
(21, 1, 25, NULL, NULL),
(22, 1, 27, NULL, NULL),
(23, 1, 28, NULL, NULL),
(24, 1, 29, NULL, NULL),
(25, 1, 30, NULL, NULL),
(26, 1, 32, NULL, NULL),
(27, 1, 33, NULL, NULL),
(28, 1, 34, NULL, NULL),
(29, 1, 35, NULL, NULL),
(30, 1, 37, NULL, NULL),
(31, 1, 38, NULL, NULL),
(32, 1, 39, NULL, NULL),
(33, 1, 40, NULL, NULL),
(34, 1, 42, NULL, NULL),
(35, 1, 43, NULL, NULL),
(36, 1, 44, NULL, NULL),
(37, 1, 45, NULL, NULL),
(38, 1, 47, NULL, NULL),
(39, 1, 48, NULL, NULL),
(40, 1, 49, NULL, NULL),
(41, 1, 50, NULL, NULL),
(42, 1, 52, NULL, NULL),
(43, 1, 53, NULL, NULL),
(44, 1, 54, NULL, NULL),
(45, 1, 55, NULL, NULL),
(46, 1, 57, NULL, NULL),
(47, 1, 58, NULL, NULL),
(48, 1, 59, NULL, NULL),
(49, 1, 60, NULL, NULL),
(50, 2, 17, NULL, NULL),
(51, 2, 18, NULL, NULL),
(52, 2, 19, NULL, NULL),
(53, 2, 20, NULL, NULL),
(54, 3, 22, NULL, NULL),
(55, 3, 23, NULL, NULL),
(56, 3, 24, NULL, NULL),
(57, 3, 25, NULL, NULL),
(58, 1, 62, NULL, NULL),
(59, 1, 63, NULL, NULL),
(60, 1, 64, NULL, NULL),
(61, 1, 65, NULL, NULL),
(62, 1, 67, NULL, NULL),
(63, 1, 69, NULL, NULL),
(64, 1, 70, NULL, NULL),
(65, 1, 68, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `author_id`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Vì Sao Chất Lượng Vẫn Cao Nhưng Giá Phải Chăng.', 'Câu trả lời và thông báo về một số thay đổi “nhỏ mà không nhỏ”. 2 ngày qua ADELLA nhận được nhiều sự quan tâm của các chị nhà mình về vấn đề này. Nên hôm nay em xin phép viết bài dài xíu để trả lời các chị mình ạ.hihi.\'', '<h3>Điều G&igrave; L&agrave;m N&ecirc;n Thương Hiệu Adella 6 Năm Trước Chỉ L&agrave; 1 Cửa H&agrave;ng Trong Con Ng&otilde; Nhỏ !</h3>\r\n\r\n<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/1.jpg', 3, '2021-03-30 23:42:46', '2021-03-30 23:42:46'),
(2, 'Các Cách Chăm Sóc Sneaker.', 'Xin chào các độc giả của AĐELLA , hôm nay tôi sẽ nói cho các bạn về cách chăm sóc giầy Sneaker. Sở hữu những đôi giày Sneaker chất lượng là điều vô cùng tuyệt vời đối rất nhiều người mê giày. Tuy nhiên bạn còn phải biết cách giặt giày Sneaker như thế nào', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/2.jpg', 2, '2021-03-30 23:47:13', '2021-03-30 23:47:13'),
(3, 'Những Mẫu Thời Trang Công Sở Cao Cấp Đẹp 2019.', 'Thời trang công sở ngày nay không còn là những khái niệm khô cứng về áo sơ mi, quần tây, chân váy. Mà đó là một sàn diễn thời trang với sự biến tấu đầy mới mẻ từ kiểu dáng, chất liệu đến màu sắc.', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/3.jpg', 4, '2021-03-30 23:48:08', '2021-03-30 23:48:08'),
(4, 'Các Cách Chăm Sóc Sneaker.', 'Xin chào các độc giả của AĐELLA , hôm nay tôi sẽ nói cho các bạn về cách chăm sóc giầy Sneaker. Sở hữu những đôi giày Sneaker chất lượng là điều vô cùng tuyệt vời đối rất nhiều người mê giày. Tuy nhiên bạn còn phải biết cách giặt giày Sneaker', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/2.jpg', 5, '2021-03-30 23:49:10', '2021-03-30 23:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Tin Tức', 0, '2021-03-28 23:21:23', '2021-03-28 23:21:23'),
(2, 'Adella Logistics', 1, '2021-03-28 23:21:35', '2021-03-28 23:21:35'),
(3, 'Thương hiệu Adella', 1, '2021-03-28 23:21:46', '2021-03-28 23:21:46'),
(4, 'Feedback khách hàng', 1, '2021-03-28 23:21:55', '2021-03-28 23:21:55'),
(5, 'Thông tin khuyến mại', 1, '2021-03-28 23:22:03', '2021-03-28 23:22:03'),
(6, 'Tuyển dụng', 1, '2021-03-28 23:22:13', '2021-03-28 23:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` double(8,2) UNSIGNED NOT NULL,
  `discount_price` double(8,2) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `seller_id`, `avatar`, `base_price`, `discount_price`, `category_id`, `created_at`, `updated_at`, `brand_id`) VALUES
(3, 'Áo Len Dài Tay Nữ', 'Áo len sợi dày ánh kim đính hạt trang trí. Phom regular, cổ tròn, tay dài. Phù hợp mặc mùa đông, kiểu dáng thời trang, cá tính phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với quần jeans, chân váy, giày bệt, thể thao..', 1, 'product/2021/03/29/3.jpg', 499000.00, NULL, 1, '2021-03-29 01:46:37', '2021-03-29 01:46:37', 7),
(4, 'Váy Len Mỏng Dài Tay', 'Váy len nữ họa tiết kẻ ngang. Thiết kế dáng regular, tay dài buộc nơ, chất liệu mềm mại, nhẹ nhàng, ấm áp và không gây tích điện..', 1, 'product/2021/03/29/5.jpg', 300000.00, 179000.00, 10, '2021-03-29 01:48:00', '2021-04-11 22:51:46', 8),
(6, 'Áo Nỉ Nữ In Hình', 'Áo nỉ nữ in hình, dáng regular, cổ tròn, tay dài. Chất liệu mềm mại,ấm áp về mùa đông..', 1, 'product/2021/03/29/9.jpg', 349000.00, NULL, 10, '2021-03-29 01:51:06', '2021-04-11 22:51:57', 7),
(8, 'Áo Sơ Mi Nữ Linen', 'Áo sơ mi Cotton USA, phom dáng Regular fit, cổ tàu cài khuy, tay dài có măng séc, gấu đuôi tôm, đơn giản, mộc mạc. Phù hợp nhiều hoàn cảnh. Kết hợp với quần kaki, jeans, với sandal, giày bệt...', 1, 'product/2021/03/30/13.jpg', 199000.00, NULL, 1, '2021-03-29 23:37:28', '2021-03-29 23:37:28', 3),
(11, 'Quần dài nam', 'Quần jogger nam dáng regular, bo gấu, cạp chun, có giây rút, túi chéo và túi hộp 2 bên. Chất liệu có độ bền cao, ít', 1, 'product/2021/03/29/11.jpg', 600000.00, 449000.00, 12, '2021-04-11 23:26:02', '2021-04-11 23:26:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Nữ', 'nu', 0, '2021-03-28 23:24:55', '2021-04-11 22:02:59'),
(9, 'Nam', 'nam', 0, '2021-04-11 22:03:29', '2021-04-11 22:03:29'),
(10, 'Áo khoác nữ', 'ao-khoac-nu', 1, '2021-04-11 22:03:42', '2021-04-11 22:03:42'),
(11, 'Quần jeans nữ', 'quan-jeans-nu', 1, '2021-04-11 22:04:00', '2021-04-11 22:04:00'),
(12, 'Quần jeans nam', 'quan-jeans-nam', 9, '2021-04-11 22:04:10', '2021-04-11 22:04:10'),
(13, 'Áo khoác nam', 'ao-khoac-nam', 9, '2021-04-11 22:04:23', '2021-04-11 22:04:23'),
(14, 'Áo sơ mi nam', 'ao-so-mi-nam', 9, '2021-04-11 22:04:33', '2021-04-11 22:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `path`, `product_id`, `created_at`, `updated_at`) VALUES
(12, 'product/2021/03/29/3.jpg', 3, '2021-03-29 01:46:37', '2021-03-29 01:46:37'),
(13, 'product/2021/03/29/4.jpg', 3, '2021-03-29 01:46:37', '2021-03-29 01:46:37'),
(14, 'product/2021/03/29/5.jpg', 4, '2021-03-29 01:48:00', '2021-03-29 01:48:00'),
(15, 'product/2021/03/29/6.jpg', 4, '2021-03-29 01:48:00', '2021-03-29 01:48:00'),
(20, 'product/2021/03/30/13.jpg', 8, '2021-03-29 23:37:28', '2021-03-29 23:37:28'),
(21, 'product/2021/03/30/14.jpg', 8, '2021-03-29 23:37:28', '2021-03-29 23:37:28'),
(22, 'product/2021/04/12/11.jpg', 11, '2021-04-11 23:28:44', '2021-04-11 23:28:44'),
(23, 'product/2021/04/12/12.jpg', 11, '2021-04-11 23:28:44', '2021-04-11 23:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(5, 1, 2, NULL, NULL),
(6, 1, 3, NULL, NULL),
(7, 1, 4, NULL, NULL),
(8, 2, 1, NULL, NULL),
(9, 2, 2, NULL, NULL),
(10, 2, 3, NULL, NULL),
(11, 2, 4, NULL, NULL),
(12, 2, 5, NULL, NULL),
(13, 2, 6, NULL, NULL),
(14, 3, 1, NULL, NULL),
(15, 3, 2, NULL, NULL),
(16, 3, 3, NULL, NULL),
(17, 3, 4, NULL, NULL),
(18, 4, 1, NULL, NULL),
(19, 4, 2, NULL, NULL),
(20, 4, 3, NULL, NULL),
(21, 4, 4, NULL, NULL),
(22, 6, 1, NULL, NULL),
(23, 6, 2, NULL, NULL),
(24, 6, 3, NULL, NULL),
(25, 6, 4, NULL, NULL),
(26, 7, 1, NULL, NULL),
(27, 7, 2, NULL, NULL),
(28, 7, 3, NULL, NULL),
(29, 7, 5, NULL, NULL),
(30, 7, 6, NULL, NULL),
(31, 8, 1, NULL, NULL),
(32, 8, 2, NULL, NULL),
(33, 8, 3, NULL, NULL),
(34, 8, 4, NULL, NULL),
(35, 8, 5, NULL, NULL),
(36, 9, 2, NULL, NULL),
(37, 11, 1, NULL, NULL),
(38, 11, 3, NULL, NULL),
(39, 11, 4, NULL, NULL),
(40, 11, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'super admin', '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, 'writer', 'người viết tin tức', '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, 'seller', 'người bán hàng', '2021-03-27 10:51:37', '2021-03-27 10:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`) VALUES
(1, 'Địa chỉ', '48 Tố Hữu, Trung Văn, Từ Liêm, Hà Nội', '2021-03-29 08:20:50', '2021-03-29 08:20:50'),
(2, 'Phone', '0988888888', '2021-03-29 08:21:09', '2021-03-29 08:21:09'),
(3, 'Email', 'adella_fashion@gmail.com', '2021-03-29 08:21:28', '2021-03-29 08:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2021-03-29 00:22:35', '2021-03-29 00:24:46'),
(2, 'M', '2021-03-29 00:22:44', '2021-03-29 00:22:44'),
(3, 'L', '2021-03-29 00:22:47', '2021-03-29 00:22:47'),
(4, 'XS', '2021-03-29 00:23:00', '2021-03-29 00:23:00'),
(5, 'XL', '2021-03-29 00:23:05', '2021-03-29 00:23:05'),
(6, 'XXL', '2021-03-29 00:23:09', '2021-03-29 00:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(7, 2, 'Product', NULL, NULL),
(9, 2, 'Product', NULL, NULL),
(10, 2, 'Product', NULL, NULL),
(11, 2, 'Product', NULL, NULL),
(12, 2, 'Product', NULL, NULL),
(7, 3, 'Product', NULL, NULL),
(9, 3, 'Product', NULL, NULL),
(10, 3, 'Product', NULL, NULL),
(12, 3, 'Product', NULL, NULL),
(13, 3, 'Product', NULL, NULL),
(7, 4, 'Product', NULL, NULL),
(10, 4, 'Product', NULL, NULL),
(11, 4, 'Product', NULL, NULL),
(12, 4, 'Product', NULL, NULL),
(13, 4, 'Product', NULL, NULL),
(7, 5, 'Product', NULL, NULL),
(9, 5, 'Product', NULL, NULL),
(10, 5, 'Product', NULL, NULL),
(11, 5, 'Product', NULL, NULL),
(12, 5, 'Product', NULL, NULL),
(7, 6, 'Product', NULL, NULL),
(9, 6, 'Product', NULL, NULL),
(10, 6, 'Product', NULL, NULL),
(7, 7, 'Product', NULL, NULL),
(9, 7, 'Product', NULL, NULL),
(10, 7, 'Product', NULL, NULL),
(12, 7, 'Product', NULL, NULL),
(13, 7, 'Product', NULL, NULL),
(7, 8, 'Product', NULL, NULL),
(11, 8, 'Product', NULL, NULL),
(12, 8, 'Product', NULL, NULL),
(13, 8, 'Product', NULL, NULL),
(9, 1, 'Post', NULL, NULL),
(10, 1, 'Post', NULL, NULL),
(12, 1, 'Post', NULL, NULL),
(9, 11, 'Product', NULL, NULL),
(10, 11, 'Product', NULL, NULL),
(12, 11, 'Product', NULL, NULL),
(13, 11, 'Product', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'quần áo', '2021-03-28 23:23:03', '2021-03-28 23:23:03'),
(8, 'giày', '2021-03-28 23:23:11', '2021-03-28 23:23:11'),
(9, 'thời trang', '2021-03-28 23:23:17', '2021-03-28 23:23:17'),
(10, 'shopping', '2021-03-28 23:23:30', '2021-03-28 23:23:30'),
(11, 'mua sắm online', '2021-03-28 23:23:41', '2021-03-28 23:23:41'),
(12, 'fashion', '2021-03-28 23:23:53', '2021-03-28 23:23:53'),
(13, 'mặc đẹp', '2021-03-28 23:24:00', '2021-03-28 23:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'admin', 'admin', 'user/2021/03/30/13.1.jpg', 'admin@admin.com', '2021-03-27 10:51:37', '$2y$10$x6KfOXO5SF6cvDBBzPYHJu8o3ckXDt50ATn4tm/9BIgIgD2jWOMbK', 'fsb2DIgAgeZ3OqV1KrmcBBI0dSLbcbaqokfwkgVwZwD7aUEVpytzTwvhSfgp', '2021-03-27 10:51:37', '2021-03-29 23:30:32', NULL, NULL, NULL, NULL),
(2, 'ádasd', 'qưdqwd', NULL, 'lackiluke@mail.com', '2021-03-29 00:58:39', '$2y$10$qVATf/CuZFM/mmyNeMxLz.A9UvhGhcQ7JcPVIgUK3Q4eVXQdJfClm', NULL, '2021-03-29 00:58:39', '2021-03-29 00:58:39', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `token`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'iNssPlgItRzS3b5M2N6Iw1nu30eYqwUcbDIAsf37Cf9oGae6lyhfSJsMraXL', 2, '2021-03-29 00:58:39', '2021-03-29 00:58:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_items`
--
ALTER TABLE `bill_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bill_items`
--
ALTER TABLE `bill_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `adelathinh`
--
CREATE DATABASE IF NOT EXISTS `adelathinh` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `adelathinh`;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `collection`, `subtitle`, `title`, `description`, `created_at`, `updated_at`, `image`) VALUES
(1, 'BACKPACK', 'SẢN PHẨM ĐỘC ĐÁO!', 'BACKPACK', 'BACKPACK', 'BACKPACK', '2021-04-18 08:25:27', '2021-04-18 08:25:27', 'banner/2021/04/18/10.jpg'),
(2, 'QUẦN ÁO BỘ SƯU TẬP MỚI', 'HÀNG MỚI VỀ!', 'AMAZING ADELLA', 'Năng động, trẻ trung & phong cách.', 'Năng động, trẻ trung & phong cách.', '2021-05-03 21:37:08', '2021-05-03 21:37:08', 'banner/2021/05/04/24.jpg'),
(3, 'TÚI XÁCH BỘ SƯU TẬP MỚI', 'BACKPACK', 'Thiết kế theo xu hướng thời trang đương đại mới nhất, khẳng định phong cách của bạn.', 'SẢN PHẨM ĐỘC ĐÁO!', 'BACKPACK', '2021-05-03 21:38:33', '2021-05-03 21:38:33', 'banner/2021/05/04/8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Calvin Klein', '2021-04-15 20:25:58', '2021-04-15 20:25:58'),
(2, 'Diesel', '2021-04-15 20:25:58', '2021-04-15 20:25:58'),
(3, 'Polo', '2021-04-15 20:25:58', '2021-04-15 20:25:58'),
(4, 'Tommy Hilfiger', '2021-04-15 20:25:58', '2021-04-15 20:25:58'),
(5, 'Armani', '2021-04-15 20:25:58', '2021-04-15 20:25:58'),
(6, 'Prada', '2021-04-15 20:25:58', '2021-04-15 20:25:58'),
(7, 'H&M', '2021-04-15 20:25:58', '2021-04-15 20:25:58'),
(8, 'Chanel', '2021-04-15 20:25:58', '2021-04-15 20:25:58');

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
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `order_number` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `slug`, `created_at`, `updated_at`, `parent_id`, `order_number`) VALUES
(1, 'Nam', 'nam', '2021-05-03 19:55:30', '2021-05-03 19:55:30', 0, 3),
(2, 'Nữ', 'nu', '2021-05-03 19:55:53', '2021-05-03 19:55:53', 0, 2),
(3, 'Áo khoác nam', 'ao-khoac-nam', '2021-05-03 19:56:07', '2021-05-03 20:00:25', 1, 1),
(4, 'Áo khoác nữ', 'ao-khoac-nu', '2021-05-03 19:56:23', '2021-05-03 20:00:47', 2, 1),
(5, 'Áo len', 'ao-len', '2021-05-03 19:56:45', '2021-05-03 20:00:58', 2, 2),
(6, 'Áo khoác mùa đông', 'ao-khoac-mua-dong', '2021-05-03 19:57:03', '2021-05-03 20:01:11', 2, 3),
(8, 'Tin tức', 'tin-tuc', '2021-05-03 19:57:52', '2021-05-03 19:57:52', 0, 4),
(9, 'Liên hệ', 'lien-he', '2021-05-03 19:58:08', '2021-05-03 19:58:08', 0, 5);

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
(4, '2021_04_04_134936_create_product_categories_table', 1),
(5, '2021_04_04_134959_create_products_table', 1),
(6, '2021_04_04_135052_create_post_categories_table', 1),
(7, '2021_04_04_135113_create_posts_table', 1),
(8, '2021_04_04_135208_create_tags_table', 1),
(9, '2021_04_04_135229_create_taggables_table', 1),
(10, '2021_04_04_135251_create_verify_users_table', 1),
(11, '2021_04_04_135312_create_roles_table', 1),
(12, '2021_04_04_135332_create_permissions_table', 1),
(13, '2021_04_04_135401_create_user_roles_table', 1),
(14, '2021_04_04_135429_create_permission_roles_table', 1),
(15, '2021_04_04_135452_create_product_images_table', 1),
(16, '2021_04_04_135516_create_brands_table', 1),
(17, '2021_04_04_135539_create_sizes_table', 1),
(18, '2021_04_04_135655_create_product_sizes_table', 1),
(19, '2021_04_04_135720_create_settings_table', 1),
(20, '2021_04_04_135911_create_banners_table', 1),
(21, '2021_04_30_085541_create_menu_table', 2),
(22, '2021_04_30_150446_add_parent_id_to_menu_table', 3);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(41, '', 'user', 0, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(42, '', 'role', 0, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(43, '', 'permission', 0, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(44, '', 'products', 0, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(45, '', 'banner', 0, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(46, 'user_view', 'view user', 41, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(47, 'user_create', 'create user', 41, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(48, 'user_edit', 'edit user', 41, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(49, 'user_delete', 'delete user', 41, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(50, 'role_view', 'view role', 42, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(51, 'role_create', 'create role', 42, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(52, 'role_edit', 'edit role', 42, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(53, 'role_delete', 'delete role', 42, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(54, 'permission_view', 'view permission', 43, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(55, 'permission_create', 'create permission', 43, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(56, 'permission_edit', 'edit permission', 43, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(57, 'permission_delete', 'delete permission', 43, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(58, 'products_view', 'products view', 44, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(59, 'products_create', 'products create', 44, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(60, 'products_edit', 'products edit', 44, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(61, 'products_delete', 'products delete', 44, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(62, 'banner_view', 'banner view', 45, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(63, 'banner_create', 'banner create', 45, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(64, 'bannner_edit', 'banner edit', 45, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(65, 'banner_delete', 'banner delete', 45, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(66, '', 'productCategory', 0, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(67, 'productCategory_view', 'view productCategory', 66, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(68, 'productCategory_create', 'create productCategory', 66, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(69, 'productCategory_edit', 'edit productCategory', 66, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(70, 'productCategory_delete', 'delete productCategory', 66, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(71, '', 'post', 0, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(72, 'post_view', 'view post', 71, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(73, 'post_create', 'create post', 71, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(74, 'post_edit', 'edit post', 71, '2021-04-18 08:56:22', '2021-04-18 08:56:22'),
(75, 'post_delete', 'delete post', 71, '2021-04-18 08:56:22', '2021-04-18 08:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(13, 3, 46, NULL, NULL),
(14, 3, 47, NULL, NULL),
(15, 3, 48, NULL, NULL),
(16, 3, 49, NULL, NULL),
(17, 3, 50, NULL, NULL),
(18, 3, 51, NULL, NULL),
(19, 3, 52, NULL, NULL),
(20, 3, 53, NULL, NULL),
(21, 3, 54, NULL, NULL),
(22, 3, 55, NULL, NULL),
(23, 3, 56, NULL, NULL),
(24, 3, 57, NULL, NULL),
(25, 3, 58, NULL, NULL),
(26, 3, 59, NULL, NULL),
(27, 3, 60, NULL, NULL),
(28, 3, 61, NULL, NULL),
(29, 3, 62, NULL, NULL),
(30, 3, 63, NULL, NULL),
(31, 3, 64, NULL, NULL),
(32, 3, 65, NULL, NULL),
(33, 3, 67, NULL, NULL),
(34, 3, 68, NULL, NULL),
(35, 3, 69, NULL, NULL),
(36, 3, 70, NULL, NULL),
(37, 3, 72, NULL, NULL),
(38, 3, 73, NULL, NULL),
(39, 3, 74, NULL, NULL),
(40, 3, 75, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `author_id`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Vì Sao Chất Lượng Vẫn Cao Nhưng Giá Phải Chăng.', 'Câu trả lời và thông báo về một số thay đổi “nhỏ mà không nhỏ”. 2 ngày qua ADELLA nhận được nhiều sự quan tâm của các chị nhà mình về vấn đề này. Nên hôm nay em xin phép viết bài dài xíu để trả lời các chị mình ạ.hihi.\'', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/04/22/z2409944993647_32085492615c7ebfb4463140b3631c2a.jpg', NULL, '2021-04-21 21:45:21', '2021-04-21 21:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` double(8,2) UNSIGNED NOT NULL,
  `discount_price` double(8,2) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `seller_id`, `avatar`, `base_price`, `discount_price`, `category_id`, `created_at`, `updated_at`, `brand_id`) VALUES
(3, 'Áo len nam', 'Áo len phom dáng Slim Fit ôm gọn gàng, tôn dáng và ấm áp. Thiết kế cổ tròn basic, bo gấu và tay áo gọn gàng. Mặt trước dệt đan xen tạo điểm nhấn ấn tượng. Màu sắc trẻ trung kết hợp hiệu ứng màu melange mang đến diện mạo thu hút cho người mặc..', 1, 'product/2021/04/17/1.jpg', 625.00, 499.00, 13, '2021-04-17 00:46:44', '2021-04-17 01:44:47', 5),
(4, 'Áo Len Dài Tay Nữ', 'Áo len sợi dày ánh kim đính hạt trang trí. Phom regular, cổ tròn, tay dài. Phù hợp mặc mùa đông, kiểu dáng thời trang, cá tính phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với quần jeans, chân váy, giày bệt, thể thao..', 1, 'product/2021/04/17/3.jpg', 499.00, NULL, 10, '2021-04-17 01:48:32', '2021-04-17 01:48:32', 6),
(5, 'Váy Len Mỏng Dài Tay', 'Váy len nữ họa tiết kẻ ngang. Thiết kế dáng regular, tay dài buộc nơ, chất liệu mềm mại, nhẹ nhàng, ấm áp và không gây tích điện..', 1, 'product/2021/04/17/5.jpg', 300.00, 179.00, 10, '2021-04-17 01:54:55', '2021-04-17 01:55:11', 7),
(6, 'Áo Khoác Nam Mặc Nhà', 'Áo khoác nam mặc nhà dáng regular, phối màu ở cổ và tay áo. Chất liệu dày dặn, ấm áp vào mùa đông..', 1, 'product/2021/04/17/7.jpg', 449.00, NULL, 13, '2021-04-17 01:56:35', '2021-04-17 01:56:35', 8),
(7, 'Áo Nỉ Nữ In Hình', 'Áo nỉ nữ in hình, dáng regular, cổ tròn, tay dài. Chất liệu mềm mại,ấm áp về mùa đông..', 1, 'product/2021/04/17/9.jpg', 349000.00, NULL, 11, '2021-04-17 01:57:36', '2021-04-17 02:01:17', 1),
(8, 'Quần Dài Nam', 'Quần jogger nam dáng regular, bo gấu, cạp chun, có giây rút, túi chéo và túi hộp 2 bên. Chất liệu có độ bền cao, ít khả năng bị nấm mốc, đàn hồi và giữ nhiệt tốt, đem lại sự thoải mái cho người mặc trong mọi hoạt động..', 1, 'product/2021/04/17/11.jpg', 600.00, 449.00, 15, '2021-04-17 01:58:39', '2021-04-17 01:58:39', 8),
(9, 'Áo Sơ Mi Nữ Linen', 'Áo sơ mi Cotton USA, phom dáng Regular fit, cổ tàu cài khuy, tay dài có măng séc, gấu đuôi tôm, đơn giản, mộc mạc. Phù hợp nhiều hoàn cảnh. Kết hợp với quần kaki, jeans, với sandal, giày bệt...', 1, 'product/2021/04/17/13.jpg', 199.00, NULL, 18, '2021-04-17 01:59:33', '2021-04-17 01:59:33', 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`) VALUES
(10, 'Áo khoác Nữ', 0, '2021-04-17 00:44:14', '2021-04-17 00:44:14', 'ao-khoac-nu'),
(11, 'Áo len', 0, '2021-04-17 00:44:14', '2021-04-17 00:44:14', 'ao-len'),
(12, 'Áo khoác', 0, '2021-04-17 00:44:14', '2021-04-17 00:44:14', 'ao-khoac'),
(13, 'Áo khoác nam', 0, '2021-04-17 00:44:14', '2021-04-17 00:44:14', 'ao-khoac-nam'),
(14, 'Áo sơ mi', 0, '2021-04-17 00:44:14', '2021-04-17 00:44:14', 'ao-so-mi'),
(15, 'Quần áo thể thao', 0, '2021-04-17 00:44:14', '2021-04-17 00:44:14', 'quan-ao-the-thao'),
(16, 'Thời trang công sở', 0, '2021-04-17 00:44:14', '2021-04-17 00:44:14', 'thoi-trang-cong-so'),
(17, 'Phụ kiện', 0, '2021-04-17 00:44:14', '2021-04-17 00:44:14', 'phu-kien'),
(18, 'Áo khoác mùa đông', 0, '2021-04-17 00:44:14', '2021-04-17 00:44:14', 'ao-khoac-mua-dong'),
(19, 'Đồ chơi', 0, '2021-04-28 19:57:55', '2021-04-28 19:57:55', 'do-choi'),
(20, 'Áo khoác Nữ', NULL, '2021-04-30 20:38:31', '2021-04-30 20:38:31', 'ao-khoac-nu');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `path`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 'product/2021/04/17/1.jpg', 3, '2021-04-17 00:46:44', '2021-04-17 00:46:44'),
(3, 'product/2021/04/17/2.jpg', 3, '2021-04-17 00:46:44', '2021-04-17 00:46:44'),
(4, 'product/2021/04/17/3.jpg', 4, '2021-04-17 01:48:32', '2021-04-17 01:48:32'),
(5, 'product/2021/04/17/4.jpg', 4, '2021-04-17 01:48:32', '2021-04-17 01:48:32'),
(6, 'product/2021/04/17/5.jpg', 5, '2021-04-17 01:54:55', '2021-04-17 01:54:55'),
(7, 'product/2021/04/17/6.jpg', 5, '2021-04-17 01:54:55', '2021-04-17 01:54:55'),
(8, 'product/2021/04/17/7.jpg', 6, '2021-04-17 01:56:35', '2021-04-17 01:56:35'),
(9, 'product/2021/04/17/8.jpg', 6, '2021-04-17 01:56:35', '2021-04-17 01:56:35'),
(10, 'product/2021/04/17/9.jpg', 7, '2021-04-17 01:57:36', '2021-04-17 01:57:36'),
(11, 'product/2021/04/17/10.jpg', 7, '2021-04-17 01:57:36', '2021-04-17 01:57:36'),
(12, 'product/2021/04/17/11.jpg', 8, '2021-04-17 01:58:39', '2021-04-17 01:58:39'),
(13, 'product/2021/04/17/12.jpg', 8, '2021-04-17 01:58:39', '2021-04-17 01:58:39'),
(14, 'product/2021/04/17/13.jpg', 9, '2021-04-17 01:59:33', '2021-04-17 01:59:33'),
(15, 'product/2021/04/17/14.jpg', 9, '2021-04-17 01:59:33', '2021-04-17 01:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 5, NULL, NULL),
(6, 4, 1, NULL, NULL),
(7, 4, 2, NULL, NULL),
(8, 4, 3, NULL, NULL),
(9, 5, 1, NULL, NULL),
(10, 5, 2, NULL, NULL),
(11, 5, 3, NULL, NULL),
(12, 6, 1, NULL, NULL),
(13, 6, 2, NULL, NULL),
(14, 6, 3, NULL, NULL),
(15, 6, 4, NULL, NULL),
(16, 6, 5, NULL, NULL),
(17, 7, 1, NULL, NULL),
(18, 7, 3, NULL, NULL),
(19, 7, 5, NULL, NULL),
(20, 8, 2, NULL, NULL),
(21, 9, 2, NULL, NULL),
(22, 9, 3, NULL, NULL),
(23, 9, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(3, 'superadmin', 'super admin', '2021-04-13 20:55:39', '2021-04-13 20:55:39'),
(4, 'writer', 'người viết tin tức', '2021-04-13 20:55:39', '2021-04-13 20:55:39'),
(5, 'seller', 'người bán hàng', '2021-04-13 20:55:39', '2021-04-13 20:55:39'),
(6, 'DBRR', 'Vô dụng', '2021-04-30 15:33:57', '2021-04-30 15:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2021-04-15 20:13:05', '2021-04-15 20:13:05'),
(2, 'M', '2021-04-15 20:13:05', '2021-04-15 20:13:05'),
(3, 'L', '2021-04-15 20:13:05', '2021-04-15 20:13:05'),
(4, 'XL', '2021-04-15 20:13:05', '2021-04-15 20:13:05'),
(5, 'XXL', '2021-04-15 20:13:05', '2021-04-15 20:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(1, 3, 'App\\Product', NULL, NULL),
(2, 3, 'App\\Product', NULL, NULL),
(1, 4, 'App\\Product', NULL, NULL),
(2, 4, 'App\\Product', NULL, NULL),
(4, 4, 'App\\Product', NULL, NULL),
(1, 5, 'App\\Product', NULL, NULL),
(2, 5, 'App\\Product', NULL, NULL),
(3, 5, 'App\\Product', NULL, NULL),
(5, 5, 'App\\Product', NULL, NULL),
(1, 6, 'App\\Product', NULL, NULL),
(2, 6, 'App\\Product', NULL, NULL),
(4, 6, 'App\\Product', NULL, NULL),
(1, 7, 'App\\Product', NULL, NULL),
(2, 7, 'App\\Product', NULL, NULL),
(3, 7, 'App\\Product', NULL, NULL),
(4, 7, 'App\\Product', NULL, NULL),
(5, 7, 'App\\Product', NULL, NULL),
(1, 8, 'App\\Product', NULL, NULL),
(2, 8, 'App\\Product', NULL, NULL),
(3, 8, 'App\\Product', NULL, NULL),
(5, 8, 'App\\Product', NULL, NULL),
(1, 9, 'App\\Product', NULL, NULL),
(2, 9, 'App\\Product', NULL, NULL),
(3, 9, 'App\\Product', NULL, NULL),
(4, 9, 'App\\Product', NULL, NULL),
(5, 9, 'App\\Product', NULL, NULL),
(1, 1, 'App\\Post', NULL, NULL),
(2, 1, 'App\\Post', NULL, NULL),
(3, 1, 'App\\Post', NULL, NULL),
(4, 1, 'App\\Post', NULL, NULL),
(5, 1, 'App\\Post', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Đồ Chơi', '2021-04-15 20:08:58', '2021-04-15 20:08:58'),
(2, 'Chơi đồ', '2021-04-15 20:08:58', '2021-04-15 20:08:58'),
(3, 'Quần áo', '2021-04-15 20:08:58', '2021-04-15 20:08:58'),
(4, 'Phóng lợn', '2021-04-15 20:08:58', '2021-04-15 20:08:58'),
(5, 'Áo trắng', '2021-04-15 20:08:58', '2021-04-15 20:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `firstname`, `lastname`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'PHAM', 'THINH', 'user/2021/04/14/155533054_3743596229027163_6492758379131311374_n.jpg', 'phamducthinhbeo@gmail.com', '2021-04-13 20:47:54', '$2y$10$GUQATdjjRsiVvNgqpXNFM.FEsCm0cKk3PW/LPnAnGuUUYrG5gCkwq', 'kP0Qfnm3WZ2zr21AWUT0uJdDfFZuwnT0rqBB1IhTvrZrJeOq1uBD0hD6XtKR', '2021-04-13 20:47:12', '2021-04-13 20:48:33'),
(5, 'DBrr', 'dbRR', NULL, 'vodung@gmail.com', '2021-04-18 08:48:31', '$2y$10$PZvo7Ic4Y.oLtE.TWLGpjefH1mJGOkCFHpPDgcuuFoVlTvUiwx2Qa', NULL, '2021-04-18 08:47:48', '2021-04-18 08:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(3, 5, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `token`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'aPxd0eQhbC8djhbCg0PCKWPtbxwzth3pUSxXTiJYxdUDK9j9c1iaQqX9GySR', 1, '2021-04-13 20:47:12', '2021-04-13 20:47:12'),
(5, '3YmFK3l54U6sau59DKtc4hkEltU1zYFZDXkBVgACQX3RkBBw6kQMIXtxLzW9', 5, '2021-04-18 08:47:48', '2021-04-18 08:47:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `adminlaravel`
--
CREATE DATABASE IF NOT EXISTS `adminlaravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `adminlaravel`;

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
(4, '2021_03_27_135041_create_product_categories_table', 1),
(5, '2021_03_27_135112_create_products_table', 1),
(6, '2021_03_27_135142_create_post_categories_table', 1),
(7, '2021_03_27_135204_create_posts_table', 1),
(8, '2021_03_27_135233_create_tags_table', 1),
(9, '2021_03_27_135253_create_taggables_table', 1),
(10, '2021_03_27_135316_create_verify_users_table', 1),
(11, '2021_03_27_135339_create_roles_table', 1),
(12, '2021_03_27_135359_create_permissions_table', 1),
(13, '2021_03_27_135435_create_user_roles_table', 1),
(14, '2021_03_27_135500_create_permission_roles_table', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` double(8,2) UNSIGNED DEFAULT NULL,
  `discount_price` double(8,2) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `thumbnails`, `name`, `description`, `seller_id`, `avatar`, `base_price`, `discount_price`, `category_id`, `created_at`, `updated_at`) VALUES
(4, NULL, 'pham', 'thinh', 16, NULL, 100000.00, 1000.00, NULL, '2021-03-31 00:00:43', '2021-03-31 00:00:43'),
(5, NULL, 'pham', 'thinh', 16, NULL, 100000.00, 1000.00, NULL, '2021-03-31 00:02:56', '2021-03-31 00:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'pham', 0, '2021-03-31 00:26:23', '2021-03-31 00:26:23'),
(2, 'thinh', 1, '2021-03-31 00:26:33', '2021-03-31 00:26:33'),
(3, 'duc', 0, '2021-03-31 00:26:41', '2021-03-31 00:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'pham', 'thinh', 'phamducthinhbeo@gmail.com', '2021-03-31 02:33:03', '$2y$10$9qZD7Xc0jEfzaZ5cEAaJ0ehpW6Nat6ZhHJpD7gN/81ChGtleohOOK', 'qdsQTzucK5p4GS6G1U1CtM3QfF4Vc8MixTYnLODQ3wfT1A1iOvnYuJj1C0JX', '2021-03-30 19:32:54', '2021-03-30 19:32:54'),
(17, 'pham', 'thinh', 'phamducthinhbeo1@gmail.com', NULL, '$2y$10$N4Zw9fkt8nG96gPd3Szh6eti/G4ozMzlKuBCGhCeHKZfOu7iJ3Fvu', NULL, '2021-03-30 20:28:32', '2021-03-30 20:28:32'),
(18, 'pham', 'thinh', 'admin@gmail.com', NULL, '$2y$10$GGm9n85d..Y3Yvh4ba5KuubR5sWC8DWx8YQ3eA7EWw/8nhbKQPF.O', NULL, '2021-03-30 23:29:58', '2021-03-30 23:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `token`, `user_id`, `created_at`, `updated_at`) VALUES
(15, '3zeFgoLPRLSgn3OjTo2S0Qw5iyOs6Z5roUQDyaof5E4voaWXm22ClVTXXXZg', 16, '2021-03-30 19:32:54', '2021-03-30 19:32:54'),
(16, '4r9u2QTqmyeJCNVqSqvmr36doi3nuPfxyV0Ru7vIBmpBfYF4GpNptBXlyDtH', 17, '2021-03-30 20:28:32', '2021-03-30 20:28:32'),
(17, 'YnBjX0vxqjQKE6KesOF0RTe3aJH0QnG97GKIJ0lf2BrvgrPqSuqnprGB8ujY', 18, '2021-03-30 23:29:58', '2021-03-30 23:29:58');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `ahung_oncode`
--
CREATE DATABASE IF NOT EXISTS `ahung_oncode` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ahung_oncode`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `office` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `age` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `images`, `name`, `position`, `office`, `age`, `startDate`, `salary`, `status`) VALUES
(11, '../../../../public/admin/assets/images/upload/60138d91987ae.jpg', 'sdasdasd', 'dd', 'dadw', 44, '2021-01-15', '66666', 1),
(13, '../../../../public/admin/assets/images/upload/603c99032e922.png', 'dsd', 'dsdsd', 'dssdsd', 654, '2021-03-10', '20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `link_news_tag`
--

CREATE TABLE `link_news_tag` (
  `id` int(11) NOT NULL,
  `news_id` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tag_id` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `link_news_tag`
--

INSERT INTO `link_news_tag` (`id`, `news_id`, `tag_id`) VALUES
(1, '0', '1'),
(2, '1', '1'),
(3, '1', '2'),
(4, '2', '2'),
(5, '2', '1'),
(22, '5', '4'),
(25, '6', '5'),
(26, '6', '4'),
(27, '6', '3'),
(28, '5', '5'),
(29, '4', '5'),
(30, '4', '4'),
(31, '3', '6'),
(32, '3', '7'),
(36, '3', '5'),
(37, '3', '4'),
(38, '3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `link_product_tag`
--

CREATE TABLE `link_product_tag` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `link_product_tag`
--

INSERT INTO `link_product_tag` (`id`, `product_id`, `tag_id`) VALUES
(2, 29, 2),
(3, 32, 3),
(5, 33, 1),
(6, 33, 2),
(7, 34, 3),
(9, 35, 3),
(11, 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `link_role_permission`
--

CREATE TABLE `link_role_permission` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `link_role_permission`
--

INSERT INTO `link_role_permission` (`id`, `role_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 2, 6),
(18, 2, 8),
(19, 2, 7),
(20, 2, 5),
(21, 2, 2),
(22, 2, 4),
(23, 2, 3),
(24, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `author`, `category_id`, `images`, `date`) VALUES
(3, 'American Heart Month &amp; heart-healthy local food', 'vsavw', '<h3>Local food takes the guilt out of guilty pleasures</h3>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti laborum delectus, ab harum magnam possimus atque debitis nobis expedita, ducimus explicabo? Veniam tempore fugit, iure ad quis ut ipsa ullam!</p>\r\n\r\n<p><strong>Lorem ipsum</strong>, dolor sit amet consectetur adipisicing elit. Corrupti laborum delectus, ab harum magnam possimus atque debitis nobis expedita, ducimus explicabo? Veniam tempore fugit, iure ad quis ut ipsa ullam!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti laborum delectus, ab harum magnam possimus atque debitis nobis expedita, ducimus explicabo? Veniam tempore fugit, iure ad quis ut ipsa ullam!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti laborum delectus, ab harum magnam possimus atque debitis nobis expedita, ducimus explicabo? Veniam tempore fugit, iure ad quis ut ipsa ullam!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti laborum delectus, ab harum magnam possimus atque debitis nobis expedita, ducimus explicabo? Veniam tempore fugit, iure ad quis ut ipsa ullam!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti laborum delectus, ab harum magnam possimus atque debitis nobis expedita, ducimus explicabo? Veniam tempore fugit, iure ad quis ut ipsa ullam!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti laborum delectus, ab harum magnam possimus atque debitis nobis expedita, ducimus explicabo? Veniam tempore fugit, iure ad quis ut ipsa ullam!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti laborum delectus, ab harum magnam possimus atque debitis nobis expedita, ducimus explicabo? Veniam tempore fugit, iure ad quis ut ipsa ullam!</p>\r\n\r\n<p><img alt=\"\" src=\"../dbAdmin/public/admin/assets/images/news/603e3478c7dba.webp\" /><img alt=\"\" src=\"http://localhost/SuperFood/images/blog/blog-4.webp\" style=\"height:100%; width:100%\" /><img alt=\"\" src=\"http://localhost/dbAdmin/public/admin/assets/images/news/603e3478c7dba.webp\" /></p>\r\n\r\n<p><em><span style=\"background-color:#bdc3c7\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti laborum delectus, ab harum magnam possimus atque debitis nobis expedita, ducimus explicabo? Veniam tempore fugit, iure ad quis ut ipsa ullam!</span></em></p>\r\n\r\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti laborum delectus, ab harum magnam possimus atque debitis nobis expedita, ducimus explicabo? Veniam tempore fugit, iure ad quis ut ipsa ullam!</p>\r\n', 'John', 2, '../../../../../dbadmin/public/admin/assets/images/news/603e4917b9a8f.webp', '2021-03-02 04:13:36'),
(4, 'sa', 'ss', '<h1>csc</h1>\r\n\r\n<h1>bbbbbbb</h1>\r\n\r\n<p>cscasca</p>\r\n', 'ss', 2, '../../../../../dbadmin/public/admin/assets/images/news/603e506b787cd.webp', '2021-03-02 05:00:59'),
(5, 'casc', 'sacasca', '<p>abbbbbbbbbbbbb</p>\r\n', 'cascasc', 2, '', '2021-03-02 10:14:24'),
(6, 'dd', 'ddd', '<p>ddddd</p>\r\n', 'dasd', 1, '', '2021-03-02 10:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `parent_id`) VALUES
(1, 'thoi su', 0),
(2, 'trong nuoc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_tag`
--

CREATE TABLE `news_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `news_tag`
--

INSERT INTO `news_tag` (`id`, `name`) VALUES
(3, 'ngay moi'),
(4, 'ket noi'),
(5, 'dascasc'),
(6, 'Food'),
(7, 'Healthy');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`) VALUES
(1, 'product_view', 'Xem sản phẩm'),
(2, 'product_add', 'Thêm sản phẩm'),
(3, 'product_edit', 'Sửa sản phẩm'),
(4, 'product_delete', 'Xóa sản phẩm'),
(5, 'post_view', 'Xem bài viết'),
(6, 'post_add', 'Thêm bài viết'),
(7, 'post_edit', 'Sửa bài viết'),
(8, 'post_delete', 'Xóa bài viết'),
(9, 'role_view', 'Xem quyền'),
(10, 'role_add', 'Thêm quyền'),
(11, 'role_edit', 'Sửa quyền'),
(12, 'role_delete', 'Xóa quyền'),
(13, 'user_view', 'Xem người dùng'),
(14, 'user_add', 'Thêm người dùng'),
(15, 'user_edit', 'Sửa người dùng'),
(16, 'user_delete', 'Xóa người dùng');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `images`, `name`, `description`, `category_id`, `price`, `status`) VALUES
(32, '', 'csacc', 'acc', 2, 444, 1),
(33, '', 'dsaddd', 'dddd', 2, 122000, 0),
(34, '', 'dsd', 'sdsdsd', 3, 5555, 1),
(35, '../../../../public/admin/assets/images/product/60190c99ec6c6.jpg', 'dsd', 'đâsd', 3, 366, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `parent_id`) VALUES
(1, 'dasdasdasd', 0),
(2, 'ascasc', 0),
(3, 'đsdsda', 2),
(4, 'huy', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `name`) VALUES
(1, 'halo'),
(3, 'heleo');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`) VALUES
(1, 'quan_ly', 'Quan ly'),
(2, 'nhan_vien', 'Nhan vien'),
(3, 'khach_hang', 'Khach hang');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `status` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `images`, `firstname`, `lastname`, `email`, `password`, `created_at`, `is_active`, `active`, `status`, `role_id`) VALUES
(2, 'user/600e2fe73a926.jpg', 'Zluk', 'God', 'zluk@gmail.com', '65866a9ae6e06ae87ed1a07ea2e0e01b', NULL, 1, 1, 0, 1),
(8, '../../../../public/admin/assets/images/user/601bac8f41428.jpg', 'Hung', 'Nguyen', 'hung.nd192@gmail.com', 'b34e76d553bcd2ba1a79ab7e985abb64', '2021-01-27 10:04:53', 1, 1, 1, 1),
(9, '../../../../public/admin/assets/images/user/603cf992dd4c2.png', 'dấc', 'ccaca', 'Aa@gmail.com', '123456Aa', NULL, 0, 0, 1, 2),
(11, '', 'các', 'scasc', 'Bx@gmail.com', 'bb59e8989587075c53edb1701a73abbf', NULL, 1, 1, 0, 2),
(12, '../../../../public/admin/assets/images/user/603d05f217ac3.png', 'dsad', 'đâsd', 'Kk@gmail.com', '', '2021-03-01 16:18:29', 1, 1, 0, 1),
(13, '../../../../public/admin/assets/images/user/603d094b082a3.png', 'he', 'đấ', 'Aa@gmail.com', 'afdd0b4ad2ec172c586e2150770fbf9e', '2021-03-01 16:33:31', 1, 1, 0, 1),
(14, '', 'ccc', 'ccc', 'll@gmail.com', '4a77e1f514bba2e7c23382f0c78434e0', '2021-03-01 16:03:55', 1, 1, 0, 2),
(15, '', 'ssss', 'sssss', 'Ss@gmail.com', '4f3a273b78f79c36bc1a3b7e6114fcde', '2021-03-01 16:40:46', 1, 1, 0, 2),
(16, '', 'csavaaa', 'aaaaa', 'Oo@gmail.com', '08ae3939d8cb005f4069ab453a398850', '2021-03-01 16:45:57', 1, 1, 1, 2),
(17, '', 'sc', 'vvv', 'Pp@gmail.com', 'af0d45f5272d3a55498d18f8a0903fc4', '2021-03-02 08:32:18', 1, 1, 1, 1),
(20, '', 'lbba', 'vacs', 'Mm@gmail.com', '79409c046934219ce6394df684b06f85', '2021-03-02 03:09:45', 0, 0, 0, 3),
(21, '../../../../public/admin/assets/images/user/603da7f1d4600.jpg', 'dvada', 'avdbb', 'dhzz.kulz@gmail.com', '', '2021-03-02 03:35:22', 1, 1, 0, 2),
(24, '', 'pham', 'thinh', 'phamducthinhbeo@gmail.com', '164d5fdfd02634293161afac4cf47299', '2021-03-03 08:01:26', 0, 0, 0, 3),
(25, '', 'pham', 'thinh', 'thinh123@gmail.com', '164d5fdfd02634293161afac4cf47299', '2021-03-03 08:11:23', 0, 0, 0, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_news_tag`
--
ALTER TABLE `link_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_product_tag`
--
ALTER TABLE `link_product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_role_permission`
--
ALTER TABLE `link_role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_tag`
--
ALTER TABLE `news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `link_news_tag`
--
ALTER TABLE `link_news_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `link_product_tag`
--
ALTER TABLE `link_product_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `link_role_permission`
--
ALTER TABLE `link_role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news_tag`
--
ALTER TABLE `news_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Database: `ajaxlesson`
--
CREATE DATABASE IF NOT EXISTS `ajaxlesson` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ajaxlesson`;

-- --------------------------------------------------------

--
-- Table structure for table `insertdata`
--

CREATE TABLE `insertdata` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `insertdata`
--
ALTER TABLE `insertdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `insertdata`
--
ALTER TABLE `insertdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `calender`
--
CREATE DATABASE IF NOT EXISTS `calender` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `calender`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` date NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `lname`, `fname`, `address`, `phoneNumber`, `images`, `status`, `is_active`, `created_at`, `role_id`) VALUES
(1, 'phamducthinhbeo@gmail.com', '164d5fdfd02634293161afac4cf47299', 'thinh', 'thinh', '', 0, '', 0, 0, '0000-00-00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `huy_oncode`
--
CREATE DATABASE IF NOT EXISTS `huy_oncode` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `huy_oncode`;

-- --------------------------------------------------------

--
-- Table structure for table `link_news_tag`
--

CREATE TABLE `link_news_tag` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `link_news_tag`
--

INSERT INTO `link_news_tag` (`id`, `news_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(37, 15, 9, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(38, 15, 10, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(39, 15, 14, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(40, 16, 9, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(41, 16, 15, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(42, 16, 14, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(43, 16, 7, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(44, 3, 13, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(45, 3, 9, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(46, 3, 15, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(47, 3, 8, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(48, 4, 12, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(49, 4, 13, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(50, 4, 15, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(51, 4, 14, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(52, 4, 7, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(53, 4, 11, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(54, 5, 12, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(55, 5, 15, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(56, 5, 14, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(57, 5, 7, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(58, 5, 11, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(59, 14, 9, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(60, 14, 10, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(61, 14, 15, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(62, 14, 8, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(63, 14, 14, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(64, 6, 13, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(65, 6, 9, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(66, 6, 10, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(67, 6, 15, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(68, 6, 8, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(69, 13, 12, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(70, 13, 13, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(71, 13, 9, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(72, 13, 10, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(73, 13, 14, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(74, 13, 7, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(75, 13, 11, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(76, 11, 9, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(77, 11, 10, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(78, 11, 15, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(79, 11, 8, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(80, 11, 14, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(81, 11, 7, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(82, 10, 9, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(83, 10, 8, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(84, 10, 7, '2021-03-10 02:54:06', '2021-03-10 02:54:19'),
(85, 18, 7, '2021-03-09 20:54:29', '2021-03-09 20:54:29'),
(86, 18, 8, '2021-03-09 20:54:29', '2021-03-09 20:54:29'),
(87, 18, 9, '2021-03-09 20:54:29', '2021-03-09 20:54:29'),
(88, 17, 9, '2021-03-09 21:34:44', '2021-03-09 21:34:44'),
(89, 17, 10, '2021-03-09 21:34:44', '2021-03-09 21:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `link_role_permission`
--

CREATE TABLE `link_role_permission` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `link_role_permission`
--

INSERT INTO `link_role_permission` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(205, 2, 6, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(206, 2, 8, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(207, 2, 7, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(208, 2, 5, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(209, 2, 2, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(210, 2, 4, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(211, 2, 3, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(212, 2, 1, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(213, 2, 10, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(214, 2, 12, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(215, 2, 11, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(216, 2, 9, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(217, 2, 14, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(218, 2, 16, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(219, 2, 15, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(220, 2, 13, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(221, 15, 6, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(222, 15, 2, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(223, 15, 13, '2021-03-10 04:00:53', '2021-03-10 04:01:08'),
(246, 1, 2, '2021-03-10 03:42:05', '2021-03-10 03:42:05'),
(247, 1, 3, '2021-03-10 03:42:05', '2021-03-10 03:42:05'),
(248, 1, 4, '2021-03-10 03:42:05', '2021-03-10 03:42:05'),
(249, 1, 5, '2021-03-10 03:42:05', '2021-03-10 03:42:05'),
(250, 1, 6, '2021-03-10 03:42:05', '2021-03-10 03:42:05'),
(251, 1, 7, '2021-03-10 03:42:05', '2021-03-10 03:42:05'),
(252, 1, 8, '2021-03-10 03:42:05', '2021-03-10 03:42:05'),
(253, 1, 9, '2021-03-10 03:42:05', '2021-03-10 03:42:05'),
(254, 1, 13, '2021-03-10 03:42:05', '2021-03-10 03:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `author`, `category_id`, `images`, `date`, `created_at`, `updated_at`) VALUES
(3, 'qưdqwd  ds ssds q', 'qdwqwd', '<p>qưdqwdqw</p>\r\n', 'Huy', 4, '../../../../public/admin/assets/images/newsImages/6040ab03ee61b.jpg', '2021-01-30 12:32:58', '2021-03-10 02:52:52', '2021-03-10 02:53:08'),
(4, 'sadasd', 'qưdqw', '<p>qưeqweq</p>\r\n', 'Ád', 4, '../../../../public/admin/assets/images/newsImages/6040aafb027ae.jpg', '2021-01-30 12:42:26', '2021-03-10 02:52:52', '2021-03-10 02:53:08'),
(5, 'dqwq', 'qưdqwd', '<p>dqwdqdqw</p>\r\n', 'qưeqwe', 4, '../../../../public/admin/assets/images/newsImages/6040aaf43ae5d.jpg', '2021-01-30 12:48:21', '2021-03-10 02:52:52', '2021-03-10 02:53:08'),
(6, 'test', 'test testt', '<p>llsadascnanoeqcqefcqcbkbvybc,yxbajcasncqcnoicxc .s;SM</p>\r\n', 'sdncacaskc', 5, '../../../../public/admin/assets/images/newsImages/6040aaed9ddec.jpg', '2021-02-08 10:36:54', '2021-03-10 02:52:52', '2021-03-10 02:53:08'),
(10, 'ádasda', 'sdqwdqwd', '<p>&aacute;dasd<strong>&aacute;dasdaqw<em>&egrave;qefefe</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sadasd', 4, '../../../../public/admin/assets/images/newsImages/6040aae71b57f.jpg', '2021-03-01 05:18:14', '2021-03-10 02:52:52', '2021-03-10 02:53:08'),
(11, 'đâs sca ae dứ', 'fewfefwe', '<h1>xin ch&agrave;o</h1>\r\n\r\n<p><strong><em>hưng hahaha</em></strong></p>\r\n', 'fefwfe', 4, '../../../../public/admin/assets/images/newsImages/6040aae041c62.jpg', '2021-03-01 05:19:37', '2021-03-10 02:52:52', '2021-03-10 02:53:08'),
(13, 'táo', 'ưqwqdqwdqw', '<p>hfdshsfdkjadsiucashlnshcslkdioqdkcdoiasldqoiads</p>\r\n', 'ádasdasd', 4, '../../../../public/admin/assets/images/newsImages/6040aad9394fe.jpg', '2021-03-03 14:18:50', '2021-03-10 02:52:52', '2021-03-10 02:53:08'),
(14, 'kkskkx', 'ad', '<p>hihihih xin ch&agrave;o sasscxycy</p>\r\n', 'kkaslsacxy', 8, '../../../../public/admin/assets/images/newsImages/60437e1de8ebd.jpg', '2021-03-03 15:16:44', '2021-03-10 02:52:52', '2021-03-10 02:53:08'),
(15, 'ấdsdqw', 'qdwqwdqwd', '<p>fvwefsdgdsdvvcsfcycdas</p>\r\n', '3223423', 5, '../../../../public/admin/assets/images/newsImages/60437e278d4bd.jpg', '2021-03-03 15:17:09', '2021-03-10 02:52:52', '2021-03-10 02:53:08'),
(16, 'fergfeffwdscsdfvf', 'dsgfdsgsdfsdf', '<p>ewfwdfsdfdsaf ừ ứd</p>\r\n', 'gg3gw', 6, '../../../../public/admin/assets/images/newsImages/60437e326480a.jpg', '2021-03-03 15:17:31', '2021-03-10 02:52:52', '2021-03-10 02:53:08'),
(18, 'test', 'test', '<p>test</p>\r\n', 'test', 5, '', NULL, '2021-03-09 20:54:29', '2021-03-09 20:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(4, 'Ngoài nước', 0, '2021-03-09 17:15:55', '2021-03-09 11:15:55'),
(5, 'Thể thao', 0, '2021-03-09 17:06:18', '2021-03-09 17:06:51'),
(6, 'Bóng đá', 5, '2021-03-09 17:06:18', '2021-03-09 17:06:51'),
(7, 'Trong nước', 0, '2021-03-09 17:06:18', '2021-03-09 17:06:51'),
(8, 'Thời sự', 0, '2021-03-09 17:06:18', '2021-03-09 17:06:51'),
(10, '1111', 6, '2021-03-17 01:40:48', '2021-03-17 01:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `news_tags`
--

CREATE TABLE `news_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_tags`
--

INSERT INTO `news_tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'Thời sự', '2021-03-09 17:29:38', '2021-03-09 17:29:56'),
(8, 'Thế giới', '2021-03-09 17:29:38', '2021-03-09 17:29:56'),
(9, 'Pháp luật', '2021-03-09 17:29:38', '2021-03-09 17:29:56'),
(10, 'Sức khỏe', '2021-03-09 17:29:38', '2021-03-09 17:29:56'),
(11, 'Đời sống', '2021-03-09 17:29:38', '2021-03-09 17:29:56'),
(12, 'Du lịch', '2021-03-09 17:29:38', '2021-03-09 17:29:56'),
(13, 'Khoa học', '2021-03-09 17:29:38', '2021-03-09 17:29:56'),
(14, 'Thể thao', '2021-03-09 17:29:38', '2021-03-09 17:29:56'),
(15, 'Tâm sự', '2021-03-09 17:29:38', '2021-03-09 17:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'product_view', 'Xem sản phẩm', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(2, 'product_add', 'Thêm sản phẩm', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(3, 'product_edit', 'Sửa sản phẩm', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(4, 'product_delete', 'Xóa sản phẩm', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(5, 'post_view', 'Xem bài viết', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(6, 'post_add', 'Thêm bài viết', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(7, 'post_edit', 'Sửa bài viết', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(8, 'post_delete', 'Xóa bài viết', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(9, 'role_view', 'Xem quyền', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(10, 'role_add', 'Thêm quyền', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(11, 'role_edit', 'Sửa quyền', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(12, 'role_delete', 'Xóa quyền', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(13, 'user_view', 'Xem người dùng', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(14, 'user_add', 'Thêm người dùng', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(15, 'user_edit', 'Sửa người dùng', '2021-03-10 04:00:14', '2021-03-10 04:00:29'),
(16, 'user_delete', 'Xóa người dùng', '2021-03-10 04:00:14', '2021-03-10 04:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'nv_nhap_lieu', 'Nhân viên nhập liệu', '2021-03-09 17:50:53', '2021-03-09 17:51:10'),
(2, 'quan_ly', 'Quản lý', '2021-03-09 17:50:53', '2021-03-09 17:51:10'),
(15, '', 'Ăn hại', '2021-03-09 17:50:53', '2021-03-09 17:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `images`, `firstname`, `lastname`, `email`, `password`, `created_at`, `updated_at`, `is_active`, `status`, `role_id`) VALUES
(18, '../../../../public/admin/assets/images/userImages/603cbb52836c9.jpg', 'Huy', 'Đào', 'namhuydao@tutamail.com', '164d5fdfd02634293161afac4cf47299', '2021-01-27 03:01:30', '2021-03-11 01:24:51', 1, 1, 2),
(23, '', 'huy', 'ádasdasd', 'lackilu1ke@tutamail.com', '46e44aa0bc21d8a826d79344df38be4b', '2021-03-01 03:53:04', '2021-03-09 09:02:14', 1, 1, 15),
(24, '../../../../../webadmin/public/admin/assets/images/userImages/603f0a78c9eb2.jpg', 'Vũ', 'Hưng', 'vanvthy@gmail.com', '2b4110cde52d9be3748854a44e1105af', '2021-03-02 16:03:04', '2021-03-09 09:02:14', 1, 1, 2),
(29, '', 'Thinh', 'Pham', 'phamducthinhbeo@gmail.com', '164d5fdfd02634293161afac4cf47299', '2021-03-13 01:11:36', '2021-03-13 01:13:23', 1, 1, 2),
(30, '', 'le', 'thinh', 'lethinh@gmail.com', '164d5fdfd02634293161afac4cf47299', '2021-03-17 01:10:46', '2021-03-17 01:12:05', 0, 0, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `link_news_tag`
--
ALTER TABLE `link_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_role_permission`
--
ALTER TABLE `link_role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `link_news_tag`
--
ALTER TABLE `link_news_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `link_role_permission`
--
ALTER TABLE `link_role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news_tags`
--
ALTER TABLE `news_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel`;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
--
-- Database: `mvc`
--
CREATE DATABASE IF NOT EXISTS `mvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mvc`;

-- --------------------------------------------------------

--
-- Table structure for table `link_news_tag`
--

CREATE TABLE `link_news_tag` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `link_news_tag`
--

INSERT INTO `link_news_tag` (`id`, `news_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2021-03-16 21:11:05', '2021-03-16 21:11:05'),
(2, 2, 2, '2021-03-16 21:11:05', '2021-03-16 21:11:05'),
(3, 2, 3, '2021-03-16 21:11:05', '2021-03-16 21:11:05'),
(4, 2, 4, '2021-03-16 21:11:05', '2021-03-16 21:11:05'),
(5, 3, 3, '2021-03-16 21:33:41', '2021-03-16 21:33:41'),
(6, 3, 4, '2021-03-16 21:33:41', '2021-03-16 21:33:41'),
(7, 3, 5, '2021-03-16 21:33:41', '2021-03-16 21:33:41'),
(8, 2, 7, '2021-03-16 21:35:28', '2021-03-16 21:35:28'),
(9, 2, 8, '2021-03-16 21:35:34', '2021-03-16 21:35:34'),
(10, 4, 3, '2021-03-16 21:36:01', '2021-03-16 21:36:01'),
(11, 4, 4, '2021-03-16 21:36:01', '2021-03-16 21:36:01'),
(12, 4, 6, '2021-03-16 21:36:01', '2021-03-16 21:36:01'),
(13, 4, 7, '2021-03-16 21:36:01', '2021-03-16 21:36:01'),
(14, 5, 3, '2021-03-17 20:26:29', '2021-03-17 20:26:29'),
(15, 5, 7, '2021-03-17 20:26:29', '2021-03-17 20:26:29'),
(16, 5, 8, '2021-03-17 20:26:29', '2021-03-17 20:26:29'),
(17, 5, 9, '2021-03-17 20:26:29', '2021-03-17 20:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `link_role_permission`
--

CREATE TABLE `link_role_permission` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `fname`, `password`, `created_at`, `updated_at`, `lname`, `email`, `images`, `role_id`) VALUES
(9, 'Pham', '164d5fdfd02634293161afac4cf47299', '2021-03-12 21:20:34', '2021-03-17 22:29:46', 'Thinh', 'phamducthinhbeo@gmail.com', '', 2),
(13, 'admin', '164d5fdfd02634293161afac4cf47299', '2021-03-17 22:30:54', '2021-03-17 22:30:54', 'gold', 'admin@gmail.com', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `author`, `category_id`, `images`, `date`, `created_at`, `updated_at`) VALUES
(2, 'How to simple', 'How to simple', 'alo alo', 'Phạm Đức Thịnh', 3, 'new/2021/03/17/155533054_3743596229027163_6492758379131311374_n.jpg', '0000-00-00 00:00:00', '2021-03-16 21:11:05', '2021-03-16 21:11:05'),
(3, 'qiwiruwqpru', 'qqqqqqq', 'qqqqqqqqq', 'qqqqqqqqqqq', 1, 'new/2021/03/17/155533054_3743596229027163_6492758379131311374_n.jpg', '0000-00-00 00:00:00', '2021-03-16 21:33:41', '2021-03-16 21:33:41'),
(4, 'aoloaoj', 'How to basic', 'aaaaaaaaaaaaaaa', 'aaaaaaaaaa', 1, 'new/2021/03/17/155533054_3743596229027163_6492758379131311374_n.jpg', '0000-00-00 00:00:00', '2021-03-16 21:36:01', '2021-03-16 21:36:01'),
(5, 'How to Dân Chơi', 'How to Dân Chơi', 'How to Dân Chơi', 'Phạm Đức Thịnh', 6, 'new/2021/03/18/155533054_3743596229027163_6492758379131311374_n.jpg', '0000-00-00 00:00:00', '2021-03-17 20:26:29', '2021-03-17 20:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Trong a nước', 0, '2021-03-17 02:51:57', '2021-03-17 01:59:33'),
(2, 'Ngoài nước', 0, '2021-03-17 02:51:57', '2021-03-17 02:51:57'),
(3, 'Bóng đá\r\n', 2, '2021-03-17 02:52:38', '2021-03-17 02:52:38'),
(4, 'Trong nước\r\n', 0, '2021-03-17 02:52:38', '2021-03-17 02:52:38'),
(5, '1111', 0, '2021-03-17 01:40:22', '2021-03-17 01:40:22'),
(6, 'ok', 4, '2021-03-17 01:43:52', '2021-03-17 01:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `news_tags`
--

CREATE TABLE `news_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_tags`
--

INSERT INTO `news_tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trong nước', '2021-03-17 03:08:35', '2021-03-17 03:08:35'),
(2, 'Thế giới', '2021-03-17 03:08:35', '2021-03-17 03:08:35'),
(3, 'Pháp luật\r\n', '2021-03-17 03:08:53', '2021-03-17 03:08:53'),
(4, 'Sức khỏe', '2021-03-17 03:08:53', '2021-03-17 03:08:53'),
(5, 'Đời sống', '2021-03-17 03:09:16', '2021-03-17 03:09:16'),
(6, 'Du lịch', '2021-03-17 03:09:16', '2021-03-17 03:09:16'),
(7, 'Khoa học', '2021-03-17 03:09:37', '2021-03-17 03:09:37'),
(8, 'Thể thao', '2021-03-17 03:09:37', '2021-03-17 03:09:37'),
(9, 'q', '2021-03-17 02:21:30', '2021-03-17 02:21:30');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'product_view', 'Xem sản phẩm', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(2, 'product_add', 'Thêm sản phẩm', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(3, 'product_edit', 'Sửa sản phẩm', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(4, 'product_delete', 'Xóa sản phẩm', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(5, 'post_view', 'Xem bài viết', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(6, 'post_add', 'Thêm bài viết', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(7, 'post_edit', 'Sửa bài viết', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(8, 'post_delete', 'Xóa bài viết', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(9, 'role_view', 'Xem quyền', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(10, 'role_add', 'Thêm quyền', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(11, 'role_edit', 'role_edit', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(12, 'role_delete', 'role_delete', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(13, 'user_view', 'Xem người dùng', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(14, 'user_add', 'Thêm người dùng', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(15, 'user_edit', 'Sửa người dùng', '2021-03-17 09:21:47', '2021-03-17 09:21:47'),
(16, 'user_delete', 'Xóa người dùng', '2021-03-17 09:21:47', '2021-03-17 09:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'nv_nhap_lieu', 'Nhân viên nhập liệu', '2021-03-17 09:18:29', '2021-03-17 09:18:29'),
(2, 'quan_ly', 'Quản lý', '2021-03-17 09:18:29', '2021-03-17 09:18:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `link_news_tag`
--
ALTER TABLE `link_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_role_permission`
--
ALTER TABLE `link_role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `link_news_tag`
--
ALTER TABLE `link_news_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `link_role_permission`
--
ALTER TABLE `link_role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news_tags`
--
ALTER TABLE `news_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `oncode`
--
CREATE DATABASE IF NOT EXISTS `oncode` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oncode`;

-- --------------------------------------------------------

--
-- Table structure for table `link_news_tag`
--

CREATE TABLE `link_news_tag` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `link_news_tag`
--

INSERT INTO `link_news_tag` (`id`, `news_id`, `tag_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 2, 5),
(4, 3, 2),
(5, 3, 4),
(6, 3, 5),
(7, 4, 2),
(9, 4, 5),
(10, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `link_product_tag`
--

CREATE TABLE `link_product_tag` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `link_product_tag`
--

INSERT INTO `link_product_tag` (`id`, `product_id`, `tag_id`) VALUES
(1, 11, 2),
(3, 11, 3),
(4, 8, 2),
(5, 8, 1),
(6, 8, 3),
(7, 6, 1),
(9, 3, 2),
(10, 3, 4),
(13, 10, 1),
(14, 10, 4),
(15, 2, 3),
(16, 5, 2),
(17, 5, 4),
(18, 12, 3),
(19, 14, 2),
(20, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `category_id`, `images`, `date`) VALUES
(3, 'qưdqwd', 'qdwqwd', 'qưdqwdqw', 5, '../../../../public/admin/assets/images/newsImages/6015480a3c481.jpg', '2021-01-30 12:32:58'),
(4, 'sadasd', 'qưdqw', 'qưeqweq', 3, '../../../../public/admin/assets/images/newsImages/601547b5c24ab.jpg', '2021-01-30 12:42:26'),
(5, 'dqwq', 'qưdqwd', 'dqwdqdqw', 4, '../../../../public/admin/assets/images/newsImages/601547c5ee046.jpg', '2021-01-30 12:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `parent_id`) VALUES
(2, 'Thời sự', 0),
(3, 'Trong nước', 2),
(4, 'Ngoài nước', 0),
(5, 'Thể thao', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_tags`
--

CREATE TABLE `news_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_tags`
--

INSERT INTO `news_tags` (`id`, `name`) VALUES
(2, 'bóng đá'),
(3, '24h'),
(4, 'mới'),
(5, 'haha'),
(6, 'hihi');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`) VALUES
(1, 'product_view', 'Xem sản phẩm'),
(2, 'product_add', 'Thêm sản phẩm'),
(3, 'product_edit', 'Sửa sản phẩm'),
(4, 'product_delete', 'Xóa sản phẩm'),
(5, 'post_view', 'Xem bài viết'),
(6, 'post_add', 'Thêm bài viết'),
(7, 'post_edit', 'Sửa bài viết'),
(8, 'post_delete', 'Xóa bài viết'),
(9, 'role_view', 'Sửa quyền'),
(10, 'role_add', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(4) NOT NULL,
  `images` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `status`, `images`, `category_id`) VALUES
(3, 'fasas', 'đâsdasd', 400000, 0, '../../../../public/admin/assets/images/productImages/6013becc28bcb.jpg', 3),
(5, 'qưeqwe', 'ádasd', 11222, 1, '../../../../public/admin/assets/images/productImages/6013bf32bfb98.jpg', 2),
(6, 'dqw', 'qdasda', 323232323, 1, '../../../../public/admin/assets/images/productImages/6013bf26a48e8.jpg', 3),
(8, 'ádasd', 'sadasd', 12213, 1, '../../../../public/admin/assets/images/productImages/6013bed4adc0d.jpg', 4),
(10, 'ádqw', 'đưqqưd', 12312, 1, '../../../../public/admin/assets/images/productImages/6013ce5c0be2f.jpg', 4),
(11, 'qưeqw', 'fqefqdsadasd', 12312, 1, '../../../../public/admin/assets/images/productImages/6013ce6308048.jpg', 4),
(12, 'ádasd', 'dqwdqwdq', 1231, 0, '../../../../public/admin/assets/images/productImages/601546b32b911.jpg', 4),
(14, 'qưdqw', 'dqwdqw', 321, 0, '../../../../public/admin/assets/images/productImages/6017ad5ba1a73.jpg', 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `parent_id`) VALUES
(13, 'a', 0),
(14, 'b', 0),
(15, 'c', 13),
(16, 'd', 15),
(17, 'e', 14),
(18, 'f', 16),
(19, 'g', 13),
(20, 'h', 13),
(21, 'i', 20);

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `name`) VALUES
(1, 'nổi bật'),
(2, 'mới'),
(3, 'phổ biến'),
(4, 'đẹp'),
(6, 'hihi');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `code`) VALUES
(1, 'Nhân viên nhập liệu', 'nv_nhap_lieu'),
(2, 'Quản lý', 'quan_ly');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`) VALUES
(78, 1, 6),
(79, 1, 7),
(80, 1, 2),
(81, 1, 3),
(82, 1, 1),
(83, 2, 2),
(84, 2, 4),
(85, 2, 3),
(86, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `images`, `firstname`, `lastname`, `email`, `password`, `created_at`, `is_active`, `status`, `role_id`) VALUES
(18, '../../../../public/admin/assets/images/userImages/6018af60190e1.jpg', 'Huy', 'Đào', 'namhuydao@tutamail.com', '164d5fdfd02634293161afac4cf47299', '2021-01-27 10:01:30', 1, 1, NULL),
(21, '', 'Hung', 'Hoang', 'hoanghung.developer@gmail.com', '', '2021-02-02 15:47:21', 1, 1, 1),
(22, '', 'pham', 'thinh', 'phamducthinhbeo@gmail.com', '164d5fdfd02634293161afac4cf47299', '2021-02-05 11:27:46', 1, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `link_news_tag`
--
ALTER TABLE `link_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_product_tag`
--
ALTER TABLE `link_product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
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
-- AUTO_INCREMENT for table `link_news_tag`
--
ALTER TABLE `link_news_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `link_product_tag`
--
ALTER TABLE `link_product_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news_tags`
--
ALTER TABLE `news_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Database: `oncode_lar_order`
--
CREATE DATABASE IF NOT EXISTS `oncode_lar_order` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oncode_lar_order`;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `collection`, `subtitle`, `title`, `description`, `created_at`, `updated_at`, `image`) VALUES
(1, 'TÚI XÁCH', 'BỘ SƯU TẬP MỚI', 'SẢN PHẨM ĐỘC ĐÁO!', 'BACKPACK', 'Thiết kế theo xu hướng thời trang đương đại mới nhất, khẳng định phong cách của bạn.', '2021-03-29 07:47:22', '2021-03-29 08:00:31', 'banner/2021/03/29/1.jpg'),
(2, 'TÚI XÁCH', 'BỘ SƯU TẬP MỚI', 'SANG TRỌNG & LỊCH LÃM!', 'BLACK HANDBAG', 'Những dòng sản phẩm được yêu thích nhất và được chế tác từ các chất liệu nhập khẩu 100%.', '2021-03-29 07:48:04', '2021-03-29 08:01:32', 'banner/2021/03/29/2.jpg'),
(3, 'QUẦN ÁO', 'BỘ SƯU TẬP MỚI', 'HÀNG MỚI VỀ!', 'AMAZING ADELLA', 'Năng động, trẻ trung & phong cách.', '2021-03-29 07:48:38', '2021-03-29 08:01:17', 'banner/2021/03/29/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `nguoi_nhan_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL,
  `ngay_nhan` datetime NOT NULL,
  `note` text NOT NULL,
  `status` int(1) NOT NULL COMMENT '0: Chờ admin xử lý. 1: Chờ ship lấy hàng.  2: Đang giao. 3: Hoàn thành. 4: Hủy',
  `ly_do_huy` text DEFAULT NULL,
  `counpon_code` varchar(10) DEFAULT NULL,
  `payment_type` int(1) DEFAULT NULL,
  `nguoi_mua_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bill_items`
--

CREATE TABLE `bill_items` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `base_price` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `discount_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Calvin Klein', '2021-03-29 00:10:45', '2021-03-29 00:10:45'),
(2, 'Diesel', '2021-03-29 00:10:50', '2021-03-29 00:21:21'),
(3, 'Polo', '2021-03-29 00:21:37', '2021-03-29 00:21:37'),
(4, 'Tommy Hilfiger', '2021-03-29 00:22:13', '2021-03-29 00:22:13'),
(6, 'Armani', '2021-03-29 01:41:54', '2021-03-29 01:41:54'),
(7, 'Prada', '2021-03-29 01:41:59', '2021-03-29 01:41:59'),
(8, 'H&M', '2021-03-29 01:42:06', '2021-03-29 01:42:06'),
(9, 'Chanel', '2021-03-29 01:49:34', '2021-03-29 01:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(187, '2014_10_12_000000_create_users_table', 1),
(188, '2014_10_12_100000_create_password_resets_table', 1),
(189, '2019_08_19_000000_create_failed_jobs_table', 1),
(190, '2021_03_19_031634_create_product_categories_table', 1),
(191, '2021_03_19_032041_create_products_table', 1),
(192, '2021_03_19_035919_create_post_categories_table', 1),
(193, '2021_03_19_035930_create_posts_table', 1),
(194, '2021_03_20_021113_create_tags_table', 1),
(195, '2021_03_20_021235_create_taggables_table', 1),
(196, '2021_03_21_175859_create_verify_users_table', 1),
(197, '2021_03_22_035709_create_roles_table', 1),
(198, '2021_03_22_035927_create_permissions_table', 1),
(199, '2021_03_22_040504_create_user_roles_table', 1),
(200, '2021_03_22_040530_create_permission_roles_table', 1),
(201, '2021_03_26_031935_create_product_images_table', 1),
(202, '2021_03_29_063357_create_brands_table', 2),
(203, '2021_03_29_063436_create_sizes_table', 2),
(204, '2021_03_29_063900_add_brand_to_product_table', 3),
(205, '2021_03_29_064319_create_product_sizes_table', 3),
(206, '2021_03_29_133448_create_settings_table', 4),
(207, '2021_03_29_141613_create_banners_table', 5),
(208, '2021_03_29_143641_add_image_to_banner_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', 'user', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, '', 'role', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, '', 'permission', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(4, 'user_view', 'view user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(5, 'user_create', 'create user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(6, 'user_edit', 'edit user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(7, 'user_delete', 'delete user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(8, 'role_view', 'view role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(9, 'role_create', 'create role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(10, 'role_edit', 'edit role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(11, 'role_delete', 'delete role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(12, 'permission_view', 'view permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(13, 'permission_create', 'create permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(14, 'permission_edit', 'edit permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(15, 'permission_delete', 'delete permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(16, NULL, 'post', 0, '2021-03-28 23:01:44', '2021-03-28 23:01:44'),
(17, 'post_view', 'view post', 16, '2021-03-28 23:02:00', '2021-03-28 23:02:00'),
(18, 'post_edit', 'edit post', 16, '2021-03-28 23:02:17', '2021-03-28 23:02:17'),
(19, 'post_create', 'create post', 16, '2021-03-28 23:02:37', '2021-03-28 23:02:37'),
(20, 'post_delete', 'delete post', 16, '2021-03-28 23:02:51', '2021-03-28 23:02:51'),
(21, NULL, 'product', 0, '2021-03-28 23:03:04', '2021-03-28 23:03:04'),
(22, 'product_view', 'view product', 21, '2021-03-28 23:03:22', '2021-03-28 23:03:22'),
(23, 'product_create', 'create product', 21, '2021-03-28 23:03:39', '2021-03-28 23:03:39'),
(24, 'product_edit', 'edit product', 21, '2021-03-28 23:04:02', '2021-03-28 23:04:02'),
(25, 'product_delete', 'delete product', 21, '2021-03-28 23:04:19', '2021-03-28 23:04:19'),
(26, NULL, 'product category', 0, '2021-03-28 23:15:12', '2021-03-28 23:15:12'),
(27, 'productCategory_view', 'view product category', 26, '2021-03-28 23:15:39', '2021-03-28 23:15:39'),
(28, 'productCategory_create', 'create product category', 26, '2021-03-28 23:15:59', '2021-03-28 23:15:59'),
(29, 'productCategory_edit', 'edit product category', 26, '2021-03-28 23:16:17', '2021-03-28 23:16:17'),
(30, 'productCategory_delete', 'delete product category', 26, '2021-03-28 23:16:57', '2021-03-28 23:16:57'),
(31, NULL, 'post category', 0, '2021-03-28 23:17:34', '2021-03-28 23:17:34'),
(32, 'postCategory_view', 'view post category', 31, '2021-03-28 23:17:57', '2021-03-28 23:17:57'),
(33, 'postCategory_create', 'create post category', 31, '2021-03-28 23:18:15', '2021-03-28 23:18:15'),
(34, 'postCategory_edit', 'edit post category', 31, '2021-03-28 23:18:36', '2021-03-28 23:18:36'),
(35, 'postCategory_delete', 'delete post category', 31, '2021-03-28 23:18:52', '2021-03-28 23:18:52'),
(36, NULL, 'tag', 0, '2021-03-28 23:19:07', '2021-03-28 23:19:07'),
(37, 'tag_view', 'view tag', 36, '2021-03-28 23:19:23', '2021-03-28 23:19:23'),
(38, 'tag_create', 'create tag', 36, '2021-03-28 23:19:42', '2021-03-28 23:19:42'),
(39, 'tag_edit', 'edit tag', 36, '2021-03-28 23:19:53', '2021-03-28 23:19:53'),
(40, 'tag_delete', 'delete tag', 36, '2021-03-28 23:20:05', '2021-03-28 23:20:05'),
(41, NULL, 'brand', 0, '2021-03-29 00:03:38', '2021-03-29 00:03:38'),
(42, 'brand_view', 'view brand', 41, '2021-03-29 00:03:53', '2021-03-29 00:03:53'),
(43, 'brand_create', 'create brand', 41, '2021-03-29 00:04:08', '2021-03-29 00:04:08'),
(44, 'brand_edit', 'edit brand', 41, '2021-03-29 00:04:23', '2021-03-29 00:04:23'),
(45, 'brand_delete', 'delete brand', 41, '2021-03-29 00:04:38', '2021-03-29 00:04:38'),
(46, NULL, 'size', 0, '2021-03-29 00:04:53', '2021-03-29 00:04:53'),
(47, 'size_view', 'view size', 46, '2021-03-29 00:05:12', '2021-03-29 00:05:12'),
(48, 'size_create', 'create size', 46, '2021-03-29 00:05:26', '2021-03-29 00:05:26'),
(49, 'size_edit', 'edit size', 46, '2021-03-29 00:05:41', '2021-03-29 00:05:41'),
(50, 'size_delete', 'delete size', 46, '2021-03-29 00:05:55', '2021-03-29 00:05:55'),
(51, NULL, 'setting', 0, '2021-03-29 06:40:07', '2021-03-29 06:40:07'),
(52, 'setting_view', 'view setting', 51, '2021-03-29 06:40:23', '2021-03-29 06:40:23'),
(53, 'setting_create', 'create setting', 51, '2021-03-29 06:40:44', '2021-03-29 06:40:44'),
(54, 'setting_edit', 'edit setting', 51, '2021-03-29 06:40:59', '2021-03-29 06:40:59'),
(55, 'setting_delete', 'delete setting', 51, '2021-03-29 06:41:17', '2021-03-29 06:41:17'),
(56, NULL, 'banner', 0, '2021-03-29 07:25:08', '2021-03-29 07:25:08'),
(57, 'banner_view', 'view banner', 56, '2021-03-29 07:25:24', '2021-03-29 07:25:24'),
(58, 'banner_create', 'create banner', 56, '2021-03-29 07:25:41', '2021-03-29 07:25:41'),
(59, 'banner_edit', 'edit banner', 56, '2021-03-29 07:25:59', '2021-03-29 07:25:59'),
(60, 'banner_delete', 'delete banner', 56, '2021-03-29 07:26:21', '2021-03-29 07:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, 4, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, 1, 5, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(4, 1, 6, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(5, 1, 7, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(6, 1, 8, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(7, 1, 9, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(8, 1, 10, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(9, 1, 11, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(10, 1, 12, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(11, 1, 13, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(12, 1, 14, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(13, 1, 15, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(14, 1, 17, NULL, NULL),
(15, 1, 18, NULL, NULL),
(16, 1, 19, NULL, NULL),
(17, 1, 20, NULL, NULL),
(18, 1, 22, NULL, NULL),
(19, 1, 23, NULL, NULL),
(20, 1, 24, NULL, NULL),
(21, 1, 25, NULL, NULL),
(22, 1, 27, NULL, NULL),
(23, 1, 28, NULL, NULL),
(24, 1, 29, NULL, NULL),
(25, 1, 30, NULL, NULL),
(26, 1, 32, NULL, NULL),
(27, 1, 33, NULL, NULL),
(28, 1, 34, NULL, NULL),
(29, 1, 35, NULL, NULL),
(30, 1, 37, NULL, NULL),
(31, 1, 38, NULL, NULL),
(32, 1, 39, NULL, NULL),
(33, 1, 40, NULL, NULL),
(34, 1, 42, NULL, NULL),
(35, 1, 43, NULL, NULL),
(36, 1, 44, NULL, NULL),
(37, 1, 45, NULL, NULL),
(38, 1, 47, NULL, NULL),
(39, 1, 48, NULL, NULL),
(40, 1, 49, NULL, NULL),
(41, 1, 50, NULL, NULL),
(42, 1, 52, NULL, NULL),
(43, 1, 53, NULL, NULL),
(44, 1, 54, NULL, NULL),
(45, 1, 55, NULL, NULL),
(46, 1, 57, NULL, NULL),
(47, 1, 58, NULL, NULL),
(48, 1, 59, NULL, NULL),
(49, 1, 60, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `author_id`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Vì Sao Chất Lượng Vẫn Cao Nhưng Giá Phải Chăng.', 'Câu trả lời và thông báo về một số thay đổi “nhỏ mà không nhỏ”. 2 ngày qua ADELLA nhận được nhiều sự quan tâm của c', '<h3>Điều G&igrave; L&agrave;m N&ecirc;n Thương Hiệu Adella 6 Năm Trước Chỉ L&agrave; 1 Cửa H&agrave;ng Trong Con Ng&otilde; Nhỏ !</h3>\r\n\r\n<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/1.jpg', 3, '2021-03-30 23:42:46', '2021-03-30 23:42:46'),
(2, 'Các Cách Chăm Sóc Sneaker.', 'Xin chào các độc giả của AĐELLA , hôm nay tôi sẽ nói cho các bạn về cách chăm sóc giầy Sneaker. Sở hữu những đôi gi', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/2.jpg', 2, '2021-03-30 23:47:13', '2021-03-30 23:47:13'),
(3, 'Những Mẫu Thời Trang Công Sở Cao Cấp Đẹp 2019.', 'Thời trang công sở ngày nay không còn là những khái niệm khô cứng về áo sơ mi, quần tây, chân váy. Mà đó là một sàn', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/3.jpg', 4, '2021-03-30 23:48:08', '2021-03-30 23:48:08'),
(4, 'Các Cách Chăm Sóc Sneaker.', 'Xin chào các độc giả của AĐELLA , hôm nay tôi sẽ nói cho các bạn về cách chăm sóc giầy Sneaker. Sở hữu những đôi gi', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/03/31/2.jpg', 5, '2021-03-30 23:49:10', '2021-03-30 23:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Tin Tức', 0, '2021-03-28 23:21:23', '2021-03-28 23:21:23'),
(2, 'Adella Logistics', 1, '2021-03-28 23:21:35', '2021-03-28 23:21:35'),
(3, 'Thương hiệu Adella', 1, '2021-03-28 23:21:46', '2021-03-28 23:21:46'),
(4, 'Feedback khách hàng', 1, '2021-03-28 23:21:55', '2021-03-28 23:21:55'),
(5, 'Thông tin khuyến mại', 1, '2021-03-28 23:22:03', '2021-03-28 23:22:03'),
(6, 'Tuyển dụng', 1, '2021-03-28 23:22:13', '2021-03-28 23:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` double(8,2) UNSIGNED NOT NULL,
  `discount_price` double(8,2) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `seller_id`, `avatar`, `base_price`, `discount_price`, `category_id`, `created_at`, `updated_at`, `brand_id`) VALUES
(2, 'Áo Len Nam', 'Áo len phom dáng Slim Fit ôm gọn gàng, tôn dáng và ấm áp. Thiết kế cổ tròn basic, bo gấu và tay áo gọn gàng. Mặt tr', 1, 'product/2021/03/29/1.jpg', 625000.00, 499000.00, 4, '2021-03-29 01:43:43', '2021-03-29 01:45:22', 6),
(3, 'Áo Len Dài Tay Nữ', 'Áo len sợi dày ánh kim đính hạt trang trí. Phom regular, cổ tròn, tay dài. Phù hợp mặc mùa đông, kiểu dáng thời tra', 1, 'product/2021/03/29/3.jpg', 499000.00, NULL, 1, '2021-03-29 01:46:37', '2021-03-29 01:46:37', 7),
(4, 'Váy Len Mỏng Dài Tay', 'Váy len nữ họa tiết kẻ ngang. Thiết kế dáng regular, tay dài buộc nơ, chất liệu mềm mại, nhẹ nhàng, ấm áp và không ', 1, 'product/2021/03/29/5.jpg', 300000.00, 179000.00, 1, '2021-03-29 01:48:00', '2021-03-29 01:48:00', 8),
(5, 'Áo Khoác Nam Mặc Nhà', 'Áo khoác nam mặc nhà dáng regular, phối màu ở cổ và tay áo. Chất liệu dày dặn, ấm áp vào mùa đông..', 1, 'product/2021/03/29/7.jpg', 449000.00, NULL, 3, '2021-03-29 01:50:00', '2021-03-29 01:50:08', 9),
(6, 'Áo Nỉ Nữ In Hình', 'Áo nỉ nữ in hình, dáng regular, cổ tròn, tay dài. Chất liệu mềm mại,ấm áp về mùa đông..', 1, 'product/2021/03/29/9.jpg', 349000.00, NULL, 1, '2021-03-29 01:51:06', '2021-03-29 01:51:06', 7),
(7, 'Quần Dài Nam', 'Quần jogger nam dáng regular, bo gấu, cạp chun, có giây rút, túi chéo và túi hộp 2 bên. Chất liệu có độ bền cao, ít', 1, 'product/2021/03/29/11.jpg', 600000.00, 449000.00, 6, '2021-03-29 01:52:28', '2021-03-29 01:52:28', 9),
(8, 'Áo Sơ Mi Nữ Linen', 'Áo sơ mi Cotton USA, phom dáng Regular fit, cổ tàu cài khuy, tay dài có măng séc, gấu đuôi tôm, đơn giản, mộc mạc. ', 1, 'product/2021/03/30/13.jpg', 199000.00, NULL, 1, '2021-03-29 23:37:28', '2021-03-29 23:37:28', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Nữ', 0, '2021-03-28 23:24:55', '2021-03-28 23:24:55'),
(2, 'Áo len', 0, '2021-03-28 23:25:06', '2021-03-28 23:25:06'),
(3, 'Áo khoác', 0, '2021-03-28 23:25:15', '2021-03-28 23:25:15'),
(4, 'Nam', 0, '2021-03-28 23:25:20', '2021-03-28 23:25:20'),
(5, 'Áo sơ mi', 0, '2021-03-28 23:25:28', '2021-03-28 23:25:28'),
(6, 'Quần áo thể thao', 0, '2021-03-28 23:25:40', '2021-03-28 23:25:40'),
(7, 'Thời trang công sở', 0, '2021-03-28 23:25:54', '2021-03-28 23:25:54'),
(8, 'Phụ kiện', 0, '2021-03-28 23:26:03', '2021-03-28 23:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `path`, `product_id`, `created_at`, `updated_at`) VALUES
(10, 'product/2021/03/29/1.jpg', 2, '2021-03-29 01:44:49', '2021-03-29 01:44:49'),
(11, 'product/2021/03/29/2.jpg', 2, '2021-03-29 01:44:49', '2021-03-29 01:44:49'),
(12, 'product/2021/03/29/3.jpg', 3, '2021-03-29 01:46:37', '2021-03-29 01:46:37'),
(13, 'product/2021/03/29/4.jpg', 3, '2021-03-29 01:46:37', '2021-03-29 01:46:37'),
(14, 'product/2021/03/29/5.jpg', 4, '2021-03-29 01:48:00', '2021-03-29 01:48:00'),
(15, 'product/2021/03/29/6.jpg', 4, '2021-03-29 01:48:00', '2021-03-29 01:48:00'),
(16, 'product/2021/03/29/7.jpg', 5, '2021-03-29 01:50:00', '2021-03-29 01:50:00'),
(17, 'product/2021/03/29/8.jpg', 5, '2021-03-29 01:50:00', '2021-03-29 01:50:00'),
(18, 'product/2021/03/29/11.jpg', 7, '2021-03-29 01:52:28', '2021-03-29 01:52:28'),
(19, 'product/2021/03/29/12.jpg', 7, '2021-03-29 01:52:28', '2021-03-29 01:52:28'),
(20, 'product/2021/03/30/13.jpg', 8, '2021-03-29 23:37:28', '2021-03-29 23:37:28'),
(21, 'product/2021/03/30/14.jpg', 8, '2021-03-29 23:37:28', '2021-03-29 23:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(5, 1, 2, NULL, NULL),
(6, 1, 3, NULL, NULL),
(7, 1, 4, NULL, NULL),
(8, 2, 1, NULL, NULL),
(9, 2, 2, NULL, NULL),
(10, 2, 3, NULL, NULL),
(11, 2, 4, NULL, NULL),
(12, 2, 5, NULL, NULL),
(13, 2, 6, NULL, NULL),
(14, 3, 1, NULL, NULL),
(15, 3, 2, NULL, NULL),
(16, 3, 3, NULL, NULL),
(17, 3, 4, NULL, NULL),
(18, 4, 1, NULL, NULL),
(19, 4, 2, NULL, NULL),
(20, 4, 3, NULL, NULL),
(21, 4, 4, NULL, NULL),
(22, 6, 1, NULL, NULL),
(23, 6, 2, NULL, NULL),
(24, 6, 3, NULL, NULL),
(25, 6, 4, NULL, NULL),
(26, 7, 1, NULL, NULL),
(27, 7, 2, NULL, NULL),
(28, 7, 3, NULL, NULL),
(29, 7, 5, NULL, NULL),
(30, 7, 6, NULL, NULL),
(31, 8, 1, NULL, NULL),
(32, 8, 2, NULL, NULL),
(33, 8, 3, NULL, NULL),
(34, 8, 4, NULL, NULL),
(35, 8, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'super admin', '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, 'writer', 'người viết tin tức', '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, 'seller', 'người bán hàng', '2021-03-27 10:51:37', '2021-03-27 10:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`) VALUES
(1, 'Địa chỉ', '48 Tố Hữu, Trung Văn, Từ Liêm, Hà Nội', '2021-03-29 08:20:50', '2021-03-29 08:20:50'),
(2, 'Phone', '0988888888', '2021-03-29 08:21:09', '2021-03-29 08:21:09'),
(3, 'Email', 'adella_fashion@gmail.com', '2021-03-29 08:21:28', '2021-03-29 08:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2021-03-29 00:22:35', '2021-03-29 00:24:46'),
(2, 'M', '2021-03-29 00:22:44', '2021-03-29 00:22:44'),
(3, 'L', '2021-03-29 00:22:47', '2021-03-29 00:22:47'),
(4, 'XS', '2021-03-29 00:23:00', '2021-03-29 00:23:00'),
(5, 'XL', '2021-03-29 00:23:05', '2021-03-29 00:23:05'),
(6, 'XXL', '2021-03-29 00:23:09', '2021-03-29 00:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(7, 2, 'Product', NULL, NULL),
(9, 2, 'Product', NULL, NULL),
(10, 2, 'Product', NULL, NULL),
(11, 2, 'Product', NULL, NULL),
(12, 2, 'Product', NULL, NULL),
(7, 3, 'Product', NULL, NULL),
(9, 3, 'Product', NULL, NULL),
(10, 3, 'Product', NULL, NULL),
(12, 3, 'Product', NULL, NULL),
(13, 3, 'Product', NULL, NULL),
(7, 4, 'Product', NULL, NULL),
(10, 4, 'Product', NULL, NULL),
(11, 4, 'Product', NULL, NULL),
(12, 4, 'Product', NULL, NULL),
(13, 4, 'Product', NULL, NULL),
(7, 5, 'Product', NULL, NULL),
(9, 5, 'Product', NULL, NULL),
(10, 5, 'Product', NULL, NULL),
(11, 5, 'Product', NULL, NULL),
(12, 5, 'Product', NULL, NULL),
(7, 6, 'Product', NULL, NULL),
(9, 6, 'Product', NULL, NULL),
(10, 6, 'Product', NULL, NULL),
(7, 7, 'Product', NULL, NULL),
(9, 7, 'Product', NULL, NULL),
(10, 7, 'Product', NULL, NULL),
(12, 7, 'Product', NULL, NULL),
(13, 7, 'Product', NULL, NULL),
(7, 8, 'Product', NULL, NULL),
(11, 8, 'Product', NULL, NULL),
(12, 8, 'Product', NULL, NULL),
(13, 8, 'Product', NULL, NULL),
(9, 1, 'Post', NULL, NULL),
(10, 1, 'Post', NULL, NULL),
(12, 1, 'Post', NULL, NULL),
(7, 2, 'Product', NULL, NULL),
(9, 2, 'Product', NULL, NULL),
(10, 2, 'Product', NULL, NULL),
(11, 2, 'Product', NULL, NULL),
(12, 2, 'Product', NULL, NULL),
(7, 3, 'Product', NULL, NULL),
(9, 3, 'Product', NULL, NULL),
(10, 3, 'Product', NULL, NULL),
(12, 3, 'Product', NULL, NULL),
(13, 3, 'Product', NULL, NULL),
(7, 4, 'Product', NULL, NULL),
(10, 4, 'Product', NULL, NULL),
(11, 4, 'Product', NULL, NULL),
(12, 4, 'Product', NULL, NULL),
(13, 4, 'Product', NULL, NULL),
(7, 5, 'Product', NULL, NULL),
(9, 5, 'Product', NULL, NULL),
(10, 5, 'Product', NULL, NULL),
(11, 5, 'Product', NULL, NULL),
(12, 5, 'Product', NULL, NULL),
(7, 6, 'Product', NULL, NULL),
(9, 6, 'Product', NULL, NULL),
(10, 6, 'Product', NULL, NULL),
(7, 7, 'Product', NULL, NULL),
(9, 7, 'Product', NULL, NULL),
(10, 7, 'Product', NULL, NULL),
(12, 7, 'Product', NULL, NULL),
(13, 7, 'Product', NULL, NULL),
(7, 8, 'Product', NULL, NULL),
(11, 8, 'Product', NULL, NULL),
(12, 8, 'Product', NULL, NULL),
(13, 8, 'Product', NULL, NULL),
(9, 1, 'Post', NULL, NULL),
(10, 1, 'Post', NULL, NULL),
(12, 1, 'Post', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'quần áo', '2021-03-28 23:23:03', '2021-03-28 23:23:03'),
(8, 'giày', '2021-03-28 23:23:11', '2021-03-28 23:23:11'),
(9, 'thời trang', '2021-03-28 23:23:17', '2021-03-28 23:23:17'),
(10, 'shopping', '2021-03-28 23:23:30', '2021-03-28 23:23:30'),
(11, 'mua sắm online', '2021-03-28 23:23:41', '2021-03-28 23:23:41'),
(12, 'fashion', '2021-03-28 23:23:53', '2021-03-28 23:23:53'),
(13, 'mặc đẹp', '2021-03-28 23:24:00', '2021-03-28 23:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'user/2021/03/30/13.1.jpg', 'admin@admin.com', '2021-03-27 10:51:37', '$2y$10$x6KfOXO5SF6cvDBBzPYHJu8o3ckXDt50ATn4tm/9BIgIgD2jWOMbK', 'fsb2DIgAgeZ3OqV1KrmcBBI0dSLbcbaqokfwkgVwZwD7aUEVpytzTwvhSfgp', '2021-03-27 10:51:37', '2021-03-29 23:30:32'),
(2, 'ádasd', 'qưdqwd', NULL, 'lackiluke@mail.com', '2021-03-29 00:58:39', '$2y$10$qVATf/CuZFM/mmyNeMxLz.A9UvhGhcQ7JcPVIgUK3Q4eVXQdJfClm', NULL, '2021-03-29 00:58:39', '2021-03-29 00:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `token`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'iNssPlgItRzS3b5M2N6Iw1nu30eYqwUcbDIAsf37Cf9oGae6lyhfSJsMraXL', 2, '2021-03-29 00:58:39', '2021-03-29 00:58:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_items`
--
ALTER TABLE `bill_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_items`
--
ALTER TABLE `bill_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `php`
--
CREATE DATABASE IF NOT EXISTS `php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `php`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Thực phẩm'),
(2, 'Đồ gia dụng'),
(3, 'Điện tử'),
(4, 'thời trang');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `age` int(3) NOT NULL,
  `startDate` date NOT NULL,
  `salary` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `images`, `name`, `position`, `office`, `age`, `startDate`, `salary`, `status`) VALUES
(5, '../../../../public/admin/assets/images/employeeImages/600ff022a57cc.jpg', 'Linh', 'Bảo vệ', 'Hà Nội', 20, '2021-01-08', '1000000', 1),
(10, '../../../../public/admin/assets/images/employeeImages/600ff02a86dc6.jpg', 'Vinh', 'Mentor', 'Oncode', 30, '2021-01-29', '20000000', 0),
(13, '../../../../public/admin/assets/images/employeeImages/60102ef071280.jpg', 'Hưng', 'Giám Đốc', 'Hà Nội', 20, '2020-12-27', '5000000', 0),
(14, '../../../../public/admin/assets/images/employeeImages/6010c6aa7077e.jpg', 'Vương', 'Tạp vụ', 'Hà Nội', 80, '2020-12-28', '50000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(4) NOT NULL,
  `images` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `status`, `images`, `category_id`) VALUES
(1, 'đwq', 'qưdwqdqwd', 123123, 0, '../../../../public/admin/assets/images/employeeImages/60123e1fb2612.jpg', 1),
(3, 'fasas', 'đâsdasd', 400000, 1, '../../../../public/admin/assets/images/employeeImages/60123e3144206.jpg', 3),
(4, 'qưeqwe', 'ádasd', 11222, 1, '../../../../public/admin/assets/images/employeeImages/6012652178ffb.jpg', NULL),
(6, 'dqw', 'qdasda', 323232323, 0, '../../../../public/admin/assets/images/productImages/601268c73b21e.jpg', 0),
(7, 'chuối', 'abc', 10000, 0, '', 2),
(8, 'afsd', 'fas', 1324, 0, '', 0),
(9, 'fas', '', 1234, 0, '', 3),
(10, 'fas', '', 1234, 0, '', 3),
(11, 'a', 'a', 1221212, 1, '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 3, 1),
(4, 4, 1),
(13, 10, 2),
(14, 10, 3),
(15, 11, 3),
(16, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'phổ biến'),
(2, 'mới'),
(3, 'nổi bật'),
(4, 'đẹp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `images`, `firstname`, `lastname`, `email`, `password`, `created_at`, `is_active`, `status`) VALUES
(18, '../../../../public/admin/assets/images/userImages/601264af327df.jpg', 'Huy', 'Đào', 'namhuydao@tutamail.com', '164d5fdfd02634293161afac4cf47299', '2021-01-27 10:01:30', 1, 1),
(19, '', 'Hungf', 'Honag', 'hoanghung.developer@gmail.com', '6b3a4a0c9225510b31759aa104e3ed9e', '2021-01-28 18:45:02', 1, 1),
(24, '', 'pham', 'thinh', 'phamducthinhbeo@gmail.com', '164d5fdfd02634293161afac4cf47299', '2021-02-01 08:56:40', 1, 1);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"adelathinh\",\"table\":\"menu\"},{\"db\":\"adelaapi\",\"table\":\"menus\"},{\"db\":\"adelathinh\",\"table\":\"permissions\"},{\"db\":\"adelathinh\",\"table\":\"products\"},{\"db\":\"adelathinh\",\"table\":\"product_categories\"},{\"db\":\"adelaapi\",\"table\":\"product_images\"},{\"db\":\"adelaapi\",\"table\":\"product_categories\"},{\"db\":\"adelaapi\",\"table\":\"products\"},{\"db\":\"adelathinh\",\"table\":\"tags\"},{\"db\":\"adelathinh\",\"table\":\"roles\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'mvc', 'login', '{\"CREATE_TIME\":\"2021-03-17 16:14:33\",\"col_order\":[0,1,2,7,8,3,4,5,6],\"col_visib\":[1,1,1,1,1,1,1,1,1]}', '2021-03-17 09:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-05-05 03:27:45', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":214}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Thực phẩm'),
(2, 'Đồ gia dụng'),
(3, 'Điện tử'),
(4, 'thời trang');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `salary` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `position`, `office`, `age`, `startDate`, `salary`, `status`, `images`) VALUES
(3, 'Angelica Ramos	', 'Accountant', 'Tokyo', 33, '2008-11-28 00:00:00', 162700, 1, '0'),
(4, 'Bradley Greer	', 'dan choi', 'anh em bon be la nha', 20, '2019-10-31 17:03:35', 10000000, 0, '0'),
(5, 'Brenden Wagner	', 'Accountant', 'Tokyo', 33, '2008-11-28 00:00:00', 162700, 0, '0'),
(10, 'a', 'a', 'a', 12, '2012-12-12 00:00:00', 1, 0, ''),
(11, '1', '1', '1', 1, '2001-01-01 00:00:00', 11, 1, 'upload/600e59572d0dc.jpg'),
(12, 'Thinh', 'pp', 'pp', 12, '0000-00-00 00:00:00', 10, 0, 'upload/600e5948ee757.jpg'),
(13, 'a', 'a', 'a', 12, '2012-12-12 00:00:00', 1212121212, 0, ''),
(15, 'adasdh', 'a', 'a', 12, '2012-12-12 00:00:00', 12121212, 0, ''),
(16, 'a', 'a', 'a', 12, '2012-12-12 00:00:00', 111, 0, './upload/601cb8cf8992b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` date DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `lname`, `fname`, `address`, `phoneNumber`, `images`, `status`, `is_active`, `created_at`, `role_id`) VALUES
(27, 'phamducthinhbeo@gmail.com', '164d5fdfd02634293161afac4cf47299', 'thinh', 'pham', '', 0, 'usersUpload/601d1bb5d833f.jpg', 1, 0, NULL, '1'),
(33, 'phamdu1chthinhbeo@gmail.com', '123QWEasd', 'thinh', 'pham', '', 0, '', 0, 0, NULL, '1'),
(34, 'asu@duas.com', '123QWEasd', 'asfi', 'tu', '', 0, './usersUpload/603f3e7a2aece.jpg', 0, 0, NULL, '2');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `parent_id`) VALUES
(1, 'thoi su', 1),
(2, 'giai tri', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news_tag`
--

CREATE TABLE `news_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`) VALUES
(1, 'product_view', 'Xem sản phẩm'),
(2, 'product_add', 'Thêm sản phẩm'),
(3, 'product_edit', 'Sửa sản phẩm'),
(4, 'product_delete', 'Xóa sản phẩm'),
(5, 'post_view', 'Xem sản phẩm'),
(6, 'post_add', 'Thêm sản phẩm'),
(7, 'post_edit', 'Sửa sản phẩm'),
(8, 'post_delete', 'Xóa sản phẩm');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(4) NOT NULL,
  `images` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `status`, `images`, `category_id`) VALUES
(1, 'a', 'a', 11111, 1, './upload/601cea1515cc8.jpg', 0),
(2, 'a', 'a', 12123124, 0, './upload/601cec721e06a.jpg', 0),
(3, 'a', 'a', 12132345, 0, './upload/601ced1eda61e.jpg', 4),
(4, 'a', 'a', 123234234, 0, 'upload/601ced4b7c91c.jpg', 3),
(5, 'a', 'a', 19, 0, 'upload/601cf8b154272.jpg', 4),
(6, 'a', 'a', 1111111111, 0, '', 4),
(7, 'a', 'a', 122121, 0, './upload/601cf949ab885.jpg', 3),
(8, 'a', 'a12', 1212, 0, '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` int(255) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 2, 3),
(5, 2, 4),
(6, 3, 1),
(7, 3, 2),
(8, 3, 3),
(9, 3, 4),
(10, 4, 1),
(11, 4, 2),
(12, 5, 1),
(13, 5, 2),
(14, 6, 1),
(15, 7, 3),
(16, 7, 4),
(17, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `code`) VALUES
(1, 'Nhân viên nhập liệu', 'nv_nhap_lieu'),
(2, 'Quản lý', 'quan_ly');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`) VALUES
(22, 1, 2),
(23, 1, 4),
(24, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'phổ biến'),
(2, 'phổ biến'),
(3, 'phổ biến'),
(4, 'đẹp\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_tag`
--
ALTER TABLE `news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news_tag`
--
ALTER TABLE `news_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `superfood`
--
CREATE DATABASE IF NOT EXISTS `superfood` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `superfood`;

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
(4, '2021_03_19_031634_create_product_categories_table', 1),
(5, '2021_03_19_032041_create_products_table', 1),
(6, '2021_03_19_035919_create_post_categories_table', 1),
(7, '2021_03_19_035930_create_posts_table', 1),
(8, '2021_03_20_021113_create_tags_table', 1),
(9, '2021_03_20_021235_create_taggables_table', 1),
(10, '2021_03_21_175859_create_verify_users_table', 1),
(11, '2021_03_22_035709_create_roles_table', 1),
(12, '2021_03_22_035927_create_permissions_table', 1),
(13, '2021_03_22_040504_create_user_roles_table', 1),
(14, '2021_03_22_040530_create_permission_roles_table', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` double(8,2) UNSIGNED NOT NULL,
  `discount_price` double(8,2) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `content`, `images`, `status`) VALUES
(75, '12e1', 'qweasdas', '12e12e', 'upload/60055fe475e85.jpg', 1),
(76, 'test4', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1),
(77, 'ko', 'ko', 'ko', 'upload/6006a2bd5499c.jpg', 1),
(78, 'test1', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1),
(79, 'test 2', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1),
(80, 'test 3', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1),
(81, 'test 5', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1),
(82, 'test 6', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1),
(83, 'test 7', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1),
(84, 'test 8', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1),
(85, 'test 9', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1),
(86, 'test 10', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1),
(87, 'test 11', 'asdasd', 'r1312', 'upload/60055ffba5466.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `status`, `created_at`, `is_active`) VALUES
(20, 'huy@mail.com', '46e44aa0bc21d8a826d79344df38be4b', 'asd', 0, NULL, 0),
(23, 'huy@gmail.com', '46e44aa0bc21d8a826d79344df38be4b', 'qweqw', 0, NULL, 0),
(24, 'hung@gmail.com', '78ea18d05d2cddae3c4f84c656dbedfd', 'HoÃ ng HÃ¹ng', 0, NULL, 0),
(27, 'hoanghung.developer@gmail.com', '78ea18d05d2cddae3c4f84c656dbedfd', 'Hung', 0, '2021-01-21 20:38:14', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
