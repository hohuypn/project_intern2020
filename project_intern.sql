-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2020 at 10:24 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_intern`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Thời Trang Nữ', 'image\\category\\0.04064200 1596169446-022512-female-fashion.png', '2020-07-20 19:24:58', '2020-07-31 04:24:06'),
(2, 'Thời Trang Nam', 'image\\category\\0.63376700 1596166532-030835-man_style.png', '2020-07-20 20:08:12', '2020-07-31 03:35:32'),
(3, 'Giày Nam', 'image\\category\\0.04399800 1598927365-giaynam.png', '2020-07-20 20:08:19', '2020-09-01 02:29:25'),
(4, 'Phụ kiện & Điện thoại', 'image\\category\\0.54239700 1596166741-dienthoai&phukien.png', '2020-07-21 01:24:58', '2020-07-31 03:39:01'),
(5, 'Máy tính & Laptop', 'image\\category\\0.97145000 1596166779-maytinh&laptop.png', '2020-07-21 01:26:06', '2020-07-31 03:39:39'),
(6, 'Thể thao & Du lịch', 'image\\category\\0.73936100 1596169398-thethao&dulich.png', '2020-07-21 01:26:52', '2020-07-31 04:23:18'),
(7, 'Đồng Hồ', 'image\\category\\0.48305100 1598927288-dongho.png', '2020-07-30 13:46:18', '2020-09-01 02:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 'RaNghi Van Huy', 'ranghivanhuy@gmail.com', 'Support', 'Nothing to support', '2020-07-30 01:38:34', '2020-07-31 01:56:04'),
(2, 'Hồ Văn Huy', 'huy.ho@gmail.com', 'Support about profile', 'I need you support me about profile', '2020-07-30 08:42:34', '2020-07-30 08:42:34'),
(3, 'Nguyen Van A', 'a.nguyen@gmail.com', 'Support', 'Nothing to support', '2020-07-31 01:46:03', '2020-07-31 01:46:03');

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
(4, '2020_07_20_082808_laratrust_setup_tables', 1),
(5, '2020_07_20_093500_create_categories_table', 2),
(6, '2020_07_21_063041_create_products_table', 3),
(7, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(8, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(10, '2016_06_01_000004_create_oauth_clients_table', 4),
(11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(12, '2020_07_23_013136_create_contacts_table', 4),
(13, '2020_07_30_154522_create_stores_table', 5),
(14, '2020_07_30_155631_create_orders_table', 6),
(15, '2020_07_30_160424_create_order_details_table', 7),
(16, '2020_07_31_104426_create_slides_table', 8),
(17, '2020_08_21_111048_create_cart_items_table', 9),
(18, '2020_07_30_155633_create_orders_table', 10),
(19, '2020_07_30_160425_create_order_details_table', 11),
(20, '2020_08_29_085005_add_attribute_quantity_into_order_details_table', 12),
(21, '2020_08_29_090648_delete_column_into_orders_table', 13),
(22, '2020_08_29_164753_update_column_quantity_and_delete_column_status', 14),
(23, '2020_08_30_184937_modified_column_in_order_details', 15),
(24, '2020_08_30_185307_add_new_columns_in_orders_table', 16),
(25, '2020_08_31_080032_modified_column_into_order_details_table', 17),
(26, '2020_08_31_080554_modified_column_into_products_table', 18),
(27, '2020_08_31_080715_add_foreign_column_into_order_details_table', 19),
(28, '2020_08_31_081221_modified_column_into_users_table', 20),
(29, '2020_08_31_081402_add_foreign_key_column_into_orders_table', 21),
(30, '2020_08_31_084842_modified_column_into_categories_table', 22),
(31, '2020_08_31_085036_modify_column_into_products_table', 23),
(32, '2020_08_31_223820_add_name_column_into_order_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02b4b183f3240840077b6e74bc446d054aedda845b1b70e0a4b8fcd4a4f2fd8332447fe48bef0aeb', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 13:54:32', '2020-08-24 13:54:32', '2021-08-24 20:54:32'),
('07af86887f6a548e01aa11ecf61a048935b62224bddac55f95aa5ea528c486a53b0ea735a94d061c', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 13:33:08', '2020-08-24 13:33:08', '2021-08-24 20:33:08'),
('0d4282c9fba64b7eac53a78461dea95398226d588ad9f3a5cc8918b5734662df17eefdef55759bae', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:08:42', '2020-08-24 03:08:42', '2021-08-24 10:08:42'),
('18a9d34af4288e824045048cecf103fa685636807f10ee0150dfe14af9fe1cd87ffef4266c91e15c', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:07:06', '2020-08-24 03:07:06', '2021-08-24 10:07:06'),
('29c4a334d07634e5c9a723bf9bc28daca6b3f5b6ff747e4b72e834f581485df85764133d2f6bf2a8', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:06:57', '2020-08-24 03:06:57', '2021-08-24 10:06:57'),
('310f7c052b2f7a61433a7f9d2212acee1daf26eccd9ff94d109a9695d319ef87b40f9d93fbeaf1e8', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:06:57', '2020-08-24 03:06:57', '2021-08-24 10:06:57'),
('50edbc87ca717f6822d70e174b45e9f9e9d0b518d46cff869f3a41ccddf2e056e5720c5c68234f5c', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:03:38', '2020-08-24 03:03:38', '2021-08-24 10:03:38'),
('6789bfe25cf551d479ab0dcf05fdc5e223bd840d29bc232a548ad86beea3cf130491e47d8117c961', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:06:43', '2020-08-24 03:06:43', '2021-08-24 10:06:43'),
('718b8755fd161886bf8761b8032aae2bc3c24e5afacc70b7bbe7dcf4bf24ace72b70ba21c0dd378c', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:02:01', '2020-08-24 03:02:01', '2021-08-24 10:02:01'),
('8a2fb54d805d351f1f4ce47d20e388ccfe05f335b7b83868fce0298f578a480f0cce84826cf2d64e', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 13:43:35', '2020-08-24 13:43:35', '2021-08-24 20:43:35'),
('8a4fdbb962d061f02e0f0303db7eb8a31090445c4245d660e074edaa22764248d35ac22f103f10a0', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 13:52:30', '2020-08-24 13:52:30', '2021-08-24 20:52:30'),
('9820863cc680c931cf6254e7e52c016793316770e54836631ace3e07f2fe29e8aed1def16763e0c6', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:07:05', '2020-08-24 03:07:05', '2021-08-24 10:07:05'),
('9bb84b841989e8201ee69b53fc064feb12f0a38e3925a2ad6f3a98cd8bad4e6ccf0192c785006d60', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 13:47:16', '2020-08-24 13:47:16', '2021-08-24 20:47:16'),
('b4cbd590a779f296b23c135195af4d569db080fe02be0b775b15230eda5d4bb5194ca93626b98973', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:08:07', '2020-08-24 03:08:07', '2021-08-24 10:08:07'),
('ce5ab947523b1af2c8b44e947de7e665ae62a7fa346140a663d6f2fbf1a48418fe4810480d3aa3db', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:01:27', '2020-08-24 03:01:27', '2021-08-24 10:01:27'),
('d7279706643718e898139fad0db151dcf63517c527357ff3d84ac800c3c3d4158ded03aa56f55682', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:06:59', '2020-08-24 03:06:59', '2021-08-24 10:06:59'),
('e13dd6ff4df83a01b1e91742f2305000c2cb25245cea908e37c8b545757ae0c0410b1e727eb95917', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 13:50:50', '2020-08-24 13:50:50', '2021-08-24 20:50:50'),
('f809f63aa26856ccff5c94410b1bb249dc11bcce6d691d279cde5f44bf61815bcf28ae2401af0199', 1, 1, 'Personal Access Token', '[]', 0, '2020-08-24 03:07:46', '2020-08-24 03:07:46', '2021-08-24 10:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '98W8Bd0HzclD7Fobr4RihvU7nPihYZLEuG3kuYMk', NULL, 'http://localhost', 1, 0, 0, '2020-07-30 01:24:08', '2020-07-30 01:24:08'),
(2, NULL, 'Laravel Password Grant Client', 'Ocayl8eSvZG0IB2G9SMFK9pO5hGoCWMiTl0qBZoO', 'users', 'http://localhost', 0, 1, 0, '2020-07-30 01:24:08', '2020-07-30 01:24:08');

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
(1, 1, '2020-07-30 01:24:08', '2020-07-30 01:24:08');

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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `shipment_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `shipment_address`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(125, 1, NULL, 'ranghivanhuy@gmail.com', 334133327, '101B Lê Hữu Trác, Sơn Trà, Đà Nẵng', 'Giao hàng sớm cho tôi, cảm ơn!', 1, '2020-08-31 09:28:02', '2020-08-31 09:28:02'),
(126, 1, NULL, 'ranghivanhuy@gmail.com', 334133327, '101B Lê Hữu Trác, Sơn Trà, Đà Nẵng', 'Giao hàng sớm cho tôi, cảm ơn!', 1, '2020-08-31 09:35:21', '2020-08-31 09:35:21'),
(127, 1, NULL, 'ranghivanhuy@gmail.com', 334133327, '101B Lê Hữu Trác, Sơn Trà, Đà Nẵng', 'Giao hàng sớm cho tôi, cảm ơn!', 1, '2020-08-31 09:36:19', '2020-08-31 09:36:19'),
(128, 1, NULL, 'ranghivanhuy@gmail.com', 334133327, '101B Lê Hữu Trác, Sơn Trà, Đà Nẵng', 'Giao hàng sớm cho tôi, cảm ơn!', 1, '2020-08-31 09:37:27', '2020-08-31 09:37:27'),
(129, 1, NULL, 'ranghivanhuy@gmail.com', 334133327, '101B Lê Hữu Trác, Sơn Trà, Đà Nẵng', 'Giao hàng sớm cho tôi, cảm ơn!', 1, '2020-08-31 09:38:15', '2020-08-31 09:38:15'),
(138, 1, NULL, 'ngoctai.dev@gmail.com', 915981110, '101B Lê Hữu Trác, Sơn Trà, Đà Nẵng', NULL, 1, '2020-08-31 14:57:29', '2020-08-31 14:57:29'),
(143, 1, NULL, 'ngoctai.dev@gmail.com', 915981110, '101B Lê Hữu Trác, Sơn Trà, Đà Nẵng', NULL, 1, '2020-08-31 15:09:41', '2020-08-31 15:09:41'),
(145, 1, NULL, 'ngoctai.dev@gmail.com', 915981110, '101B Lê Hữu Trác, Sơn Trà, Đà Nẵng', NULL, 1, '2020-08-31 15:10:58', '2020-08-31 15:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `order_quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(8, 125, 6, 2, 199000, '2020-08-31 09:28:02', '2020-08-31 09:28:02'),
(9, 125, 7, 3, 140, '2020-08-31 09:28:02', '2020-08-31 09:28:02'),
(10, 127, 7, 3, 140, '2020-08-31 09:36:19', '2020-08-31 09:36:19'),
(11, 128, 6, 1, 199000, '2020-08-31 09:37:27', '2020-08-31 09:37:27'),
(12, 129, 6, 1, 199000, '2020-08-31 09:38:15', '2020-08-31 09:38:15'),
(13, 129, 7, 2, 140, '2020-08-31 09:38:15', '2020-08-31 09:38:15'),
(14, 138, 7, 5, 140, '2020-08-31 14:57:29', '2020-08-31 14:57:29'),
(17, 143, 7, 5, 140, '2020-08-31 15:09:41', '2020-08-31 15:09:41'),
(18, 143, 6, 5, 199000, '2020-08-31 15:09:41', '2020-08-31 15:09:41'),
(20, 145, 7, 5, 140, '2020-08-31 15:10:58', '2020-08-31 15:10:58'),
(21, 145, 6, 4, 199000, '2020-08-31 15:10:58', '2020-08-31 15:10:58');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create-product', 'Create product', 'create-product can create new product', '2020-07-20 02:00:41', '2020-07-20 02:00:41'),
(2, 'edit-product', 'Edit product', 'edit-product can edit product', '2020-07-20 02:01:25', '2020-07-20 02:01:25'),
(3, 'list-product', 'List product', 'list-product can list all products', '2020-07-20 02:01:56', '2020-07-20 02:01:56'),
(4, 'delete-product', 'Delete product', 'delete-product can delete product', '2020-07-20 02:03:22', '2020-07-20 02:03:22'),
(6, 'edit-user', 'Edit user', 'edit-user can edit user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(3, 3),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instock` int(11) DEFAULT NULL,
  `description` varchar(555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `displayed` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `instock`, `description`, `image`, `categories_id`, `displayed`, `created_at`, `updated_at`) VALUES
(1, 'Quần shorts nữ, quần đùi đũi cạp chun - QDD - SLIKY', 'QSN-01', '55000.00', 15, 'Quần sooc váy ống rộng chất liệu đũi sước thân thiện môi trường. QUẦN SHORT NỮ, CHUN SLIKY  CỰC THOẢI MÁI THOÁNG MÁ. Màu sắc: Đen - Be - Nâu - Rêu -Đỏ-Hồng. Mát mẻ lại còn lịch sự', 'C:\\xampp\\tmp\\phpF9C1.tmp', 1, 1, '2020-07-21 00:39:54', '2020-07-21 00:39:54'),
(2, 'Sản phẩm mới', 'M-01', '13000.00', 10, 'Hàng chất lượng cao', 'C:\\xampp\\tmp\\phpABC9.tmp', 2, 1, '2020-07-30 13:57:41', '2020-07-30 13:57:41'),
(3, 'Sản phẩm mới', 'M-01', '13000.00', 10, 'Hàng chất lượng cao', 'public\\product\\0.25949500 1596118428-030835-man_style.png', 1, 1, '2020-07-30 14:13:48', '2020-07-30 14:13:48'),
(4, 'Sản phẩm mới', 'SP-M01', '13000.00', 10, 'Hàng chất lượng cao', 'image\\product\\0.60418000 1596171577-074150-quanshort.jpg', 1, 1, '2020-07-30 14:17:28', '2020-07-31 04:59:37'),
(5, 'Sản phẩm 1', 'SP-01', '13000.00', 10, 'Hàng chất lượng cao', 'image\\product\\0.74541900 1596116050-074322-quanshort3.jpg', 1, 1, '2020-07-30 13:34:10', '2020-07-30 13:34:10'),
(6, 'Mũ Lưỡi Chai Chạy Bộ Chống Nắng AONIJIE E4106', 'M-01', '199000.00', 1, 'Hiện tại trên thị trường có rất nhiều sản phẩm  AONIJIE là hàng không chính hãng (hàng xách tay, nhập tiểu ngạch phiên bản nội địa Trung Quốc)', 'image\\product\\0.65955300 1596186400-mu4.jfif', 2, 1, '2020-07-31 09:04:27', '2020-07-31 09:06:40'),
(7, 'Đồng hồ nữ Casio Anh Khuê LA680WA-1BDF', 'DH-001', '140.00', 10, 'Chất lượng cao, chóng thấm', 'image\\product\\0.76193800 1598478067-mu4.jfif', 7, 1, '2020-08-26 21:32:57', '2020-08-28 08:14:09'),
(8, 'Đồng hồ nữ Casio Anh Khuê LA680WA-1BDF', 'DH-001', '130.00', 20, 'Vật liệu vỏ / vành bezel: Nhựa / Mạ crôm, Dây đeo bằng thép không gỉ', 'image\\product\\0.13239100 1598478055-mu2.jfif', 7, 0, '2020-08-26 21:40:55', '2020-08-26 21:40:55'),
(9, 'Váy Ngắn Nữ', 'VN-001', '130000.00', 15, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.54578100 1599125232-1.jpg', 1, 1, '2020-09-03 09:27:12', '2020-09-03 09:27:12'),
(10, 'Quần Ngắn Nữ - Quần Jean', 'QNN-001', '150000.00', 15, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.36967600 1599125321-2.jpg', 1, 1, '2020-09-03 09:28:41', '2020-09-03 09:28:41'),
(11, 'Áo Đôi Mẹ Con', 'AD-001', '100000.00', 20, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.10863600 1599125396-3.jpg', 1, 1, '2020-09-03 09:29:56', '2020-09-03 09:29:56'),
(12, 'Áo Croptop tay dài đen chữ đỏ hót( kèm ảnh chụp)', 'AC-001', '120000.00', 25, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.90348800 1599125441-4.jpg', 1, 1, '2020-09-03 09:30:41', '2020-09-03 09:30:41'),
(13, 'Áo Croptop tay dài trắng chữ đỏ hót( kèm ảnh chụp)', 'AC-001', '120000.00', 12, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.22292900 1599125497-5.jpg', 1, 1, '2020-09-03 09:31:37', '2020-09-03 09:31:37'),
(14, 'Áo Croptop tay dài đỏ chữ trắng hót( kèm ảnh chụp)', 'AC-001', '120000.00', 10, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.66165500 1599125524-6.jpg', 1, 1, '2020-09-03 09:32:04', '2020-09-03 09:32:04'),
(15, 'Áo Croptop tay dài đenchữ trắng hót( kèm ảnh chụp)', 'AC-001', '120000.00', 30, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.62605200 1599125564-7.jpg', 1, 1, '2020-09-03 09:32:44', '2020-09-03 09:32:44'),
(16, 'Áo croptop body ôm eo tay bồng hở rốn, màu đen VST', 'AC-001', '120000.00', 50, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.24023600 1599125646-8.jpg', 1, 1, '2020-09-03 09:34:06', '2020-09-03 09:34:06'),
(17, 'Áo croptop body ôm eo tay bồng hở rốn, màu trắng VST', 'AC-001', '120000.00', 55, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.85735800 1599125658-9.jpg', 1, 1, '2020-09-03 09:34:18', '2020-09-03 09:34:18'),
(18, 'Quần kẻ karo ống suông mẫu mới hot VST', 'QK-001', '110000.00', 35, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.42166000 1599125707-10.jpg', 1, 1, '2020-09-03 09:35:07', '2020-09-03 09:35:07'),
(19, 'Áo thun nam polo bo dệt phong cách Pigofashion chuẩn xuất khẩu AHT16', 'QK-001', '150000.00', 20, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.00107900 1599125848-1.jpg', 2, 1, '2020-09-03 09:37:28', '2020-09-03 09:37:28'),
(20, 'Áo khoác nam phong cách Pigofashion chuẩn xuất khẩu', 'AKN-001', '250000.00', 25, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.57815500 1599125887-2.jpg', 2, 1, '2020-09-03 09:38:07', '2020-09-03 09:38:07'),
(21, 'Áo khoác nam màu đen phong cách Pigofashion chuẩn xuất khẩu', 'AKN-001', '250000.00', 10, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.89497100 1599125908-3.jpg', 2, 1, '2020-09-03 09:38:28', '2020-09-03 09:38:28'),
(22, 'Áo khoác nam màu xanh đen phong cách Pigofashion chuẩn xuất khẩu', 'AKN-001', '250000.00', 14, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.19582800 1599125924-4.jpg', 2, 1, '2020-09-03 09:38:44', '2020-09-03 09:38:44'),
(23, 'Áo khoác nam màu xanh đen phong cách', 'AKN-001', '250000.00', 30, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.39196500 1599125948-5.jpg', 2, 1, '2020-09-03 09:39:08', '2020-09-03 09:39:08'),
(24, 'Áo thun nam', 'ATN-001', '160000.00', 32, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.26121900 1599126000-6.jpg', 2, 1, '2020-09-03 09:40:00', '2020-09-03 09:40:00'),
(25, 'Áo thun nam trắng', 'ATN-001', '160000.00', 40, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.97656700 1599126018-7.jpg', 2, 1, '2020-09-03 09:40:18', '2020-09-03 09:40:18'),
(26, 'Áo thun nam màu các kiểu', 'ATN-001', '160000.00', 60, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.87171900 1599126035-8.jpg', 2, 1, '2020-09-03 09:40:35', '2020-09-03 09:40:35'),
(27, 'Quần short nam', 'QSN-001', '170000.00', 70, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.62390800 1599126069-9.jpg', 2, 1, '2020-09-03 09:41:09', '2020-09-03 09:41:09'),
(28, 'Áo thun nam', 'QSN-001', '150000.00', 55, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.99108600 1599126141-10.jpg', 2, 1, '2020-09-03 09:42:22', '2020-09-03 09:42:22'),
(29, 'Áo thun nam màu trắng', 'ATN-002', '150000.00', 65, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.98413800 1599126176-11.jpg', 2, 1, '2020-09-03 09:42:57', '2020-09-03 09:42:57'),
(30, 'Áo thun nam màu xanh da trời', 'ATN-002', '150000.00', 35, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.99465300 1599126197-12.jpg', 2, 1, '2020-09-03 09:43:18', '2020-09-03 09:43:18'),
(31, 'Áo thun nam màu xanh da trời 2', 'ATN-002', '150000.00', 35, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.98266800 1599126216-13.jpg', 2, 1, '2020-09-03 09:43:37', '2020-09-03 09:43:37'),
(32, 'Áo thun nam màu xanh đen trời 2', 'ATN-002', '150000.00', 20, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.83279100 1599126235-14.jpg', 2, 1, '2020-09-03 09:43:55', '2020-09-03 09:43:55'),
(33, 'Áo thun nam đủ màu các loại', 'ATN-002', '150000.00', 30, 'Vui lòng đọc hồ sơ shop để tránh đánh giá shop 1*. Sp bên shop hàng giá rẻ hàng sinh viên .hàng học sinh ko phải hàng shop', 'image\\product\\0.21921900 1599126257-15.jpg', 2, 1, '2020-09-03 09:44:17', '2020-09-03 09:44:17'),
(34, 'Giày Nam Thời Trang Thể Thao SODOHA F22', 'GN-001', '134000.00', 25, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài.', 'image\\product\\0.67151000 1599126437-1.jpg', 3, 1, '2020-09-03 09:47:17', '2020-09-03 09:47:17'),
(35, 'Giày Nam Thời Trang Thể Thao SODOHA F22 cổ đen', 'GN-001', '134000.00', 15, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.01769700 1599126517-2.jpg', 3, 1, '2020-09-03 09:48:37', '2020-09-03 09:48:37'),
(36, 'Giày Nam Thời Trang Thể Thao SODOHA F22 màu đen', 'GN-001', '165000.00', 10, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.72115800 1599126560-3.jpg', 3, 1, '2020-09-03 09:49:20', '2020-09-03 09:49:20'),
(37, 'Giày Nam Thời Trang Thể Thao SODOHA  màu đen', 'GN-001', '175000.00', 25, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.40511000 1599126589-4.jpg', 3, 1, '2020-09-03 09:49:49', '2020-09-03 09:49:49'),
(38, 'Giày Nam Thời Trang Thể Thao SODOHA  cổ đỏ', 'GN-001', '160000.00', 30, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.27889800 1599126613-5.jpg', 3, 1, '2020-09-03 09:50:13', '2020-09-03 09:50:13'),
(39, 'Giày Nam Thời Trang Thể Thao SODOHA  màu đỏ', 'GN-001', '160000.00', 40, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.16710900 1599126644-6.jpg', 3, 1, '2020-09-03 09:50:44', '2020-09-03 09:50:44'),
(40, 'Giày Nam Thời Trang Thể Thao', 'GN-001', '200000.00', 15, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.56035000 1599126907-9.jpg', 3, 1, '2020-09-03 09:55:07', '2020-09-03 09:55:07'),
(41, 'Giày Nam Thời Trang Thể Thao Đen', 'GN-001', '200000.00', 15, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.00818800 1599126944-10.jpg', 3, 1, '2020-09-03 09:55:44', '2020-09-03 09:55:44'),
(42, 'Giày Nam Thời Trang Thể Thao Đen Các Loại', 'GN-001', '200000.00', 15, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.47566500 1599126965-11.jpg', 3, 1, '2020-09-03 09:56:05', '2020-09-03 09:56:05'),
(43, 'Giày Nam Thời Trang Thể Thao Xám', 'GN-001', '200000.00', 15, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.38049800 1599126982-12.jpg', 3, 1, '2020-09-03 09:56:22', '2020-09-03 09:56:22'),
(44, 'Giày Nam Thời Trang Thể Thao Xám Các Loại', 'GN-001', '190000.00', 15, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.53370900 1599127014-13.jpg', 3, 1, '2020-09-03 09:56:54', '2020-09-03 09:56:54'),
(45, 'Giày Nam Thời Trang Thể Thao Đen Siêu Đẹp', 'GN-001', '250000.00', 15, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.18173100 1599127042-14.jpg', 3, 1, '2020-09-03 09:57:22', '2020-09-03 09:57:22'),
(46, 'Giày Nam Thời Trang Thể Thao Xám Siêu Đẹp', 'GN-001', '250000.00', 15, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.55287400 1599127058-15.jpg', 3, 1, '2020-09-03 09:57:38', '2020-09-03 09:57:38'),
(47, 'Giày Nam Thời Trang Thể Thao Đen Đẹp Đẻ', 'GN-001', '250000.00', 15, 'Để thể hiện mình là người lịch sự, các bạn nam đều phải để ý để vẻ ngoài của mình mỗi khi đi ra ngoài. Đặc biệt, kết hợp trang phục với cá phụ kiện thời trang là vô cùng quan trong. .', 'image\\product\\0.60314300 1599127076-16.jpg', 3, 1, '2020-09-03 09:57:56', '2020-09-03 09:57:56'),
(48, 'Ốp Lưng Iphone Trơn Dẻo', 'OL-001', '30000.00', 15, 'Nếu quý khách không hài lòng với bất kì lí do gì. Shin Case sẽ hoàn tiền hoặc gửi lại sản mới thay thế cho quý khách.', 'image\\product\\0.04560800 1599127192-1.jpg', 4, 1, '2020-09-03 09:59:52', '2020-09-03 09:59:52'),
(49, 'Ốp Lưng Iphone Trơn Dẻo Vàng Trọn Bộ', 'OL-001', '30000.00', 15, 'Nếu quý khách không hài lòng với bất kì lí do gì. Shin Case sẽ hoàn tiền hoặc gửi lại sản mới thay thế cho quý khách.', 'image\\product\\0.56088600 1599127214-2.jpg', 4, 1, '2020-09-03 10:00:14', '2020-09-03 10:00:14'),
(50, 'Ốp Lưng Iphone Trơn Dẻo Đen Toàn Tập', 'OL-001', '30000.00', 15, 'Nếu quý khách không hài lòng với bất kì lí do gì. Shin Case sẽ hoàn tiền hoặc gửi lại sản mới thay thế cho quý khách.', 'image\\product\\0.59514500 1599127229-3.jpg', 4, 1, '2020-09-03 10:00:29', '2020-09-03 10:00:29'),
(51, 'Ốp Lưng Iphone Trơn Dẻo Màu Xanh Dương', 'OL-001', '30000.00', 15, 'Nếu quý khách không hài lòng với bất kì lí do gì. Shin Case sẽ hoàn tiền hoặc gửi lại sản mới thay thế cho quý khách.', 'image\\product\\0.99265000 1599127250-4.jpg', 4, 1, '2020-09-03 10:00:51', '2020-09-03 10:00:51'),
(52, 'Ốp Lưng Iphone Trơn Dẻo Màu Hồng', 'OL-001', '30000.00', 15, 'Nếu quý khách không hài lòng với bất kì lí do gì. Shin Case sẽ hoàn tiền hoặc gửi lại sản mới thay thế cho quý khách.', 'image\\product\\0.79543000 1599127265-5.jpg', 4, 1, '2020-09-03 10:01:05', '2020-09-03 10:01:05'),
(53, 'Ốp Lưng Iphone Trơn Dẻo Màu Nâu', 'OL-001', '30000.00', 15, 'Nếu quý khách không hài lòng với bất kì lí do gì. Shin Case sẽ hoàn tiền hoặc gửi lại sản mới thay thế cho quý khách.', 'image\\product\\0.95952400 1599127276-7.jpg', 4, 1, '2020-09-03 10:01:16', '2020-09-03 10:01:16'),
(54, 'Ốp Lưng Iphone Trơn Dẻo Màu Xanh Đen', 'OL-001', '30000.00', 15, 'Nếu quý khách không hài lòng với bất kì lí do gì. Shin Case sẽ hoàn tiền hoặc gửi lại sản mới thay thế cho quý khách.', 'image\\product\\0.20989100 1599127295-8.jpg', 4, 1, '2020-09-03 10:01:35', '2020-09-03 10:01:35'),
(55, 'Ốp Lưng Iphone Trơn Dẻo Màu Các Loại', 'OL-001', '30000.00', 15, 'Nếu quý khách không hài lòng với bất kì lí do gì. Shin Case sẽ hoàn tiền hoặc gửi lại sản mới thay thế cho quý khách.', 'image\\product\\0.52832700 1599127323-9.jpg', 4, 1, '2020-09-03 10:02:03', '2020-09-03 10:02:03'),
(56, 'Điện Thoại Chính Hãng', 'ĐT-001', '979000.00', 15, 'Camera trước 32 MP (IMX616) + Cảm biến thông minh AI, Khẩu độ	F/2.4', 'image\\product\\0.95298700 1599127797-10.jpg', 4, 1, '2020-09-03 10:09:57', '2020-09-03 10:09:57'),
(57, 'Điện Thoại Chính Hãng', 'ĐT-001', '4979000', 15, 'Camera trước 32 MP (IMX616) + Cảm biến thông minh AI, Khẩu độ	F/2.4', 'image\\product\\0.68475700 1599127924-11.jpg', 4, 1, '2020-09-03 10:12:04', '2020-09-03 10:12:04'),
(58, 'Điện Thoại Chính Hãng Đẹp', 'ĐT-001', '4979000', 15, 'Camera trước 32 MP (IMX616) + Cảm biến thông minh AI, Khẩu độ	F/2.4', 'image\\product\\0.51707800 1599127949-12.jpg', 4, 1, '2020-09-03 10:12:29', '2020-09-03 10:12:29'),
(59, 'Điện Thoại Chính Hãng Vivo', 'ĐT-001', '4979000', 15, 'Camera trước 32 MP (IMX616) + Cảm biến thông minh AI, Khẩu độ	F/2.4', 'image\\product\\0.12805100 1599127965-13.jpg', 4, 1, '2020-09-03 10:12:45', '2020-09-03 10:12:45'),
(60, 'Iphone 11 Pro Max', 'ĐT-001', '24000000', 15, 'Hàng Chính Hãng - Giá bán quốc tế', 'image\\product\\0.78156000 1599128017-14.jpg', 4, 1, '2020-09-03 10:13:37', '2020-09-03 10:13:37'),
(61, 'Iphone 11 Pro Max 1', 'ĐT-001', '24000000', 15, 'Hàng Chính Hãng - Giá bán quốc tế', 'image\\product\\0.48900600 1599128029-15.jpg', 4, 1, '2020-09-03 10:13:49', '2020-09-03 10:13:49'),
(62, 'Iphone 11 Pro Max 1', 'ĐT-001', '24000000', 15, 'Hàng Chính Hãng - Giá bán quốc tế 3 camera', 'image\\product\\0.00897100 1599128042-16.jpg', 4, 1, '2020-09-03 10:14:02', '2020-09-03 10:14:02'),
(63, 'Iphone 11 Pro', 'ĐT-001', '24000000', 15, 'Hàng Chính Hãng - Giá bán quốc tế 3 camera', 'image\\product\\0.87985300 1599128060-17.jpg', 4, 1, '2020-09-03 10:14:20', '2020-09-03 10:14:20'),
(64, 'Samsung S10', 'ĐT-001', '8000000', 15, 'Hàng Chính Hãng - Giá bán quốc tế 3 camera', 'image\\product\\0.81552200 1599128086-18.jpg', 4, 1, '2020-09-03 10:14:46', '2020-09-03 10:14:46'),
(65, 'Vivo 10s', 'ĐT-001', '8000000', 15, 'Hàng Chính Hãng - Giá bán quốc tế 3 camera', 'image\\product\\0.63756700 1599128107-19.jpg', 4, 1, '2020-09-03 10:15:07', '2020-09-03 10:15:07'),
(66, 'Vivo 10s 1', 'ĐT-001', '9000000', 15, 'Hàng Chính Hãng - Giá bán quốc tế 3 camera', 'image\\product\\0.93294100 1599128122-20.jpg', 4, 1, '2020-09-03 10:15:22', '2020-09-03 10:15:22'),
(67, 'Màn hình HP 22fw (21.5 Inch/FULLHD/60Hz/5Ms/IPS/3KS61AA) - Hàng Chính Hãng', 'MH-001', '3000000', 15, 'Bảo hành tận nhà miến phí Giao & Nhận (quý khách liên hệ tổng đài để được tư vấn chi tiết).', 'image\\product\\0.88735800 1599187647-1.jpg', 5, 1, '2020-09-04 02:47:27', '2020-09-04 02:47:27'),
(68, 'Màn hình HP 23FW (21.5 Inch/FULLHD/60Hz/5Ms/IPS/3KS61AA) - Hàng Chính Hãng', 'MH-001', '3000000', 15, 'Bảo hành tận nhà miến phí Giao & Nhận (quý khách liên hệ tổng đài để được tư vấn chi tiết).', 'image\\product\\0.13504800 1599187689-2.jpg', 5, 1, '2020-09-04 02:48:09', '2020-09-04 02:48:09'),
(69, 'Màn hình HP 22FW - Hàng Chính Hãng', 'MH-001', '3000000', 15, 'Bảo hành tận nhà miến phí Giao & Nhận (quý khách liên hệ tổng đài để được tư vấn chi tiết).', 'image\\product\\0.51630900 1599187719-3.jpg', 5, 1, '2020-09-04 02:48:39', '2020-09-04 02:48:39'),
(70, 'Màn hình HP 22FW - Hàng Chính Hãng 1', 'MH-001', '3000000', 15, 'Bảo hành tận nhà miến phí Giao & Nhận (quý khách liên hệ tổng đài để được tư vấn chi tiết).', 'image\\product\\0.72862300 1599187730-4.jpg', 5, 1, '2020-09-04 02:48:50', '2020-09-04 02:48:50'),
(71, 'Màn hình HP 22FW - Hàng Chính Hãng siêu mỏng, siêu cong', 'MH-001', '3000000', 15, 'Bảo hành tận nhà miến phí Giao & Nhận (quý khách liên hệ tổng đài để được tư vấn chi tiết).', 'image\\product\\0.41356600 1599187754-5.jpg', 5, 1, '2020-09-04 02:49:14', '2020-09-04 02:49:14'),
(72, 'Laptop ASUS ZenBook UX534FTC-AA189T i7-10510U|16GB|1TB|GTX 1650 4GB|15.6\"FHD|Win 10', 'MH-001', '34990000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.29180200 1599187953-6.jpg', 5, 1, '2020-09-04 02:52:33', '2020-09-04 02:52:33'),
(73, 'Laptop ASUS ZenBook UX534FTC-AA189T i7-10510U|16GB|1TB|GTX 1650 4GB|15.6\"FHD|Win 10 1', 'MH-001', '34990000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.30363600 1599187988-7.jpg', 5, 1, '2020-09-04 02:53:08', '2020-09-04 02:53:08'),
(74, 'Laptop ASUS ZenBook UX534FTC-AA189T i7-10510U|16GB|1TB|GTX 1650 4GB|15.6\"FHD|Win 10 2', 'MH-001', '34990000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.57589900 1599188007-8.jpg', 5, 1, '2020-09-04 02:53:27', '2020-09-04 02:53:27'),
(75, 'Laptop ASUS ZenBook', 'LT-001', '23000000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.70482100 1599188047-9.jpg', 5, 1, '2020-09-04 02:54:07', '2020-09-04 02:54:07'),
(76, 'Laptop ASUS ZenBook 1', 'LT-001', '23000000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.26535900 1599188060-10.jpg', 5, 1, '2020-09-04 02:54:20', '2020-09-04 02:54:20'),
(77, 'Laptop ASUS ZenBook 2', 'LT-001', '23000000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.63670600 1599188072-11.jpg', 5, 1, '2020-09-04 02:54:32', '2020-09-04 02:54:32'),
(78, 'Laptop DELL ZenBook 2', 'LT-001', '7000000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.27031900 1599188119-12.jpg', 5, 1, '2020-09-04 02:55:19', '2020-09-04 02:55:19'),
(79, 'Laptop DELL ZenBook 3', 'LT-001', '7000000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.94546700 1599188168-13.jpg', 5, 1, '2020-09-04 02:56:08', '2020-09-04 02:56:08'),
(80, 'Laptop for game 1', 'LT-001', '20000000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.31092000 1599188202-14.jpg', 5, 1, '2020-09-04 02:56:42', '2020-09-04 02:56:42'),
(81, 'Laptop for game 2', 'LT-001', '20000000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.89890300 1599188210-15.jpg', 5, 1, '2020-09-04 02:56:50', '2020-09-04 02:56:50'),
(82, 'Laptop for game 3', 'LT-001', '20000000', 15, 'Card đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR5 with Max-Q + Intel UHD Graphics. Màn hình	15.6\" FHD (1920 x 1080) IPS, NanoEdge, 100% sRGB, 178° wide-view, 350nits', 'image\\product\\0.42817000 1599188219-16.jpg', 5, 1, '2020-09-04 02:56:59', '2020-09-04 02:56:59'),
(83, 'Đai lưng tập gym, gánh tạ GoodFit GF721WS', 'DL-001', '249000', 15, 'Đai lưng tập gym GoodFit GF721WS đặc biệt hữu hiệu trong các trường hợp bạn gánh tạ hay tập tạ mà cột sống của bạn chịu áp lực, sử dụng đai sẽ hạn chế được vấn đề chấn thương, mức gánh tạ của bạn sẽ đảm bảo được tăng lên.', 'image\\product\\0.25979100 1599188363-1.jpg', 6, 1, '2020-09-04 02:59:23', '2020-09-04 02:59:23'),
(84, 'Đai lưng tập gym, gánh tạ GoodFit GF721WS 1', 'DL-001', '249000', 15, 'Đai lưng tập gym GoodFit GF721WS đặc biệt hữu hiệu trong các trường hợp bạn gánh tạ hay tập tạ mà cột sống của bạn chịu áp lực, sử dụng đai sẽ hạn chế được vấn đề chấn thương, mức gánh tạ của bạn sẽ đảm bảo được tăng lên.', 'image\\product\\0.60261200 1599188447-2.jpg', 6, 1, '2020-09-04 03:00:47', '2020-09-04 03:00:47'),
(85, 'Đai lưng tập gym, gánh tạ GoodFit GF721WS màu đen', 'DL-001', '249000', 15, 'Đai lưng tập gym GoodFit GF721WS đặc biệt hữu hiệu trong các trường hợp bạn gánh tạ hay tập tạ mà cột sống của bạn chịu áp lực, sử dụng đai sẽ hạn chế được vấn đề chấn thương, mức gánh tạ của bạn sẽ đảm bảo được tăng lên.', 'image\\product\\0.63563800 1599188926-3.jpg', 6, 1, '2020-09-04 03:08:46', '2020-09-04 03:08:46'),
(86, 'Đai lưng tập gym, gánh tạ GoodFit GF721WS màu đen 1', 'DL-001', '249000', 15, 'Đai lưng tập gym GoodFit GF721WS đặc biệt hữu hiệu trong các trường hợp bạn gánh tạ hay tập tạ mà cột sống của bạn chịu áp lực, sử dụng đai sẽ hạn chế được vấn đề chấn thương, mức gánh tạ của bạn sẽ đảm bảo được tăng lên.', 'image\\product\\0.12661800 1599189069-4.jpg', 6, 1, '2020-09-04 03:11:09', '2020-09-04 03:11:09'),
(87, 'Đai lưng tập gym, gánh tạ GoodFit GF721WS màu đen 2', 'DL-001', '249000', 15, 'Đai lưng tập gym GoodFit GF721WS đặc biệt hữu hiệu trong các trường hợp bạn gánh tạ hay tập tạ mà cột sống của bạn chịu áp lực, sử dụng đai sẽ hạn chế được vấn đề chấn thương, mức gánh tạ của bạn sẽ đảm bảo được tăng lên.', 'image\\product\\0.37193400 1599189079-5.jpg', 6, 1, '2020-09-04 03:11:19', '2020-09-04 03:11:19'),
(88, 'Đai lưng tập gym, gánh tạ GoodFit GF721WS màu xanh dương', 'DL-001', '249000', 15, 'Đai lưng tập gym GoodFit GF721WS đặc biệt hữu hiệu trong các trường hợp bạn gánh tạ hay tập tạ mà cột sống của bạn chịu áp lực, sử dụng đai sẽ hạn chế được vấn đề chấn thương, mức gánh tạ của bạn sẽ đảm bảo được tăng lên.', 'image\\product\\0.96806700 1599189094-6.jpg', 6, 1, '2020-09-04 03:11:34', '2020-09-04 03:11:34'),
(89, 'Đai lưng tập gym, gánh tạ GoodFit GF721WS cho nam nữ', 'DL-001', '249000', 15, 'Đai lưng tập gym GoodFit GF721WS đặc biệt hữu hiệu trong các trường hợp bạn gánh tạ hay tập tạ mà cột sống của bạn chịu áp lực, sử dụng đai sẽ hạn chế được vấn đề chấn thương, mức gánh tạ của bạn sẽ đảm bảo được tăng lên.', 'image\\product\\0.73171500 1599189111-7.jpg', 6, 1, '2020-09-04 03:11:51', '2020-09-04 03:11:51'),
(90, 'Bó gối thể thao GoodFit 2 trong 1 GF511K', 'BG-001', '98000', 15, 'Bó gối thể thao GoodFit GF511K có 2 chức năng chính đó là chức năng hỗ trợ và bảo vệ. Hỗ trợ đầu gối khi gặp chấn thương, bảo vệ đầu. gối khỏi những lực tác động không mong muốn khiến chấn thương nặng hơn, đau hơn. Còn chức năng bảo vệ cần thiết khi cơ thể bạn cảm thấy uể oải.', 'image\\product\\0.28681600 1599189308-8.jpg', 6, 1, '2020-09-04 03:15:08', '2020-09-04 03:15:08'),
(91, 'Bó gối thể thao GoodFit 2 trong 1 GF511K 1', 'BG-001', '98000', 15, 'Bó gối thể thao GoodFit GF511K có 2 chức năng chính đó là chức năng hỗ trợ và bảo vệ. Hỗ trợ đầu gối khi gặp chấn thương, bảo vệ đầu. gối khỏi những lực tác động không mong muốn khiến chấn thương nặng hơn, đau hơn. Còn chức năng bảo vệ cần thiết khi cơ thể bạn cảm thấy uể oải.', 'image\\product\\0.23274300 1599189330-9.jpg', 6, 1, '2020-09-04 03:15:30', '2020-09-04 03:15:30'),
(92, 'Bó gối thể thao GoodFit 2 trong 1 GF511K nam', 'BG-001', '98000', 15, 'Bó gối thể thao GoodFit GF511K có 2 chức năng chính đó là chức năng hỗ trợ và bảo vệ. Hỗ trợ đầu gối khi gặp chấn thương, bảo vệ đầu. gối khỏi những lực tác động không mong muốn khiến chấn thương nặng hơn, đau hơn. Còn chức năng bảo vệ cần thiết khi cơ thể bạn cảm thấy uể oải.', 'image\\product\\0.79131200 1599189339-10.jpg', 6, 1, '2020-09-04 03:15:39', '2020-09-04 03:15:39'),
(93, 'Bó gối thể thao GoodFit 2 trong 1 GF511K nam tiêu chuẩn', 'BG-001', '98000', 15, 'Bó gối thể thao GoodFit GF511K có 2 chức năng chính đó là chức năng hỗ trợ và bảo vệ. Hỗ trợ đầu gối khi gặp chấn thương, bảo vệ đầu. gối khỏi những lực tác động không mong muốn khiến chấn thương nặng hơn, đau hơn. Còn chức năng bảo vệ cần thiết khi cơ thể bạn cảm thấy uể oải.', 'image\\product\\0.46866500 1599189355-11.jpg', 6, 1, '2020-09-04 03:15:55', '2020-09-04 03:15:55'),
(94, 'Bó gối thể thao GoodFit 2 trong 1 GF511K thể thao', 'BG-001', '98000', 15, 'Bó gối thể thao GoodFit GF511K có 2 chức năng chính đó là chức năng hỗ trợ và bảo vệ. Hỗ trợ đầu gối khi gặp chấn thương, bảo vệ đầu. gối khỏi những lực tác động không mong muốn khiến chấn thương nặng hơn, đau hơn. Còn chức năng bảo vệ cần thiết khi cơ thể bạn cảm thấy uể oải.', 'image\\product\\0.28769300 1599189374-12.jpg', 6, 1, '2020-09-04 03:16:14', '2020-09-04 03:16:14'),
(95, 'Bó gối thể thao GoodFit 2 trong 1 GF511K cho dân bóng chuyền', 'BG-001', '98000', 15, 'Bó gối thể thao GoodFit GF511K có 2 chức năng chính đó là chức năng hỗ trợ và bảo vệ. Hỗ trợ đầu gối khi gặp chấn thương, bảo vệ đầu. gối khỏi những lực tác động không mong muốn khiến chấn thương nặng hơn, đau hơn. Còn chức năng bảo vệ cần thiết khi cơ thể bạn cảm thấy uể oải.', 'image\\product\\0.54905200 1599189393-13.jpg', 6, 1, '2020-09-04 03:16:33', '2020-09-04 03:16:33'),
(96, 'Balo Chạy Bộ AONIJIE E913S 5L Tặng Kèm Vest Nước 1.5L', 'BL-001', '499000', 15, 'NHIỀU NGĂN CHỨA ĐỒ: Thiết Kế với 9 túi nhỏ bên ngoài balo, bạn có thể lưu trữ tất cả nhỏ các vật dụng như chìa khóa, điện thoại và tiền mặt v. v.', 'image\\product\\0.53465700 1599189698-14.jpg', 6, 1, '2020-09-04 03:21:38', '2020-09-04 03:21:38'),
(97, 'Balo Chạy Bộ AONIJIE E913S 5L Tặng Kèm Vest Nước 1.5L nam nữ', 'BL-001', '499000', 15, 'NHIỀU NGĂN CHỨA ĐỒ: Thiết Kế với 9 túi nhỏ bên ngoài balo, bạn có thể lưu trữ tất cả nhỏ các vật dụng như chìa khóa, điện thoại và tiền mặt v. v.', 'image\\product\\0.33720100 1599189712-15.jpg', 6, 1, '2020-09-04 03:21:52', '2020-09-04 03:21:52'),
(98, 'Balo Chạy Bộ AONIJIE E913S 5L Tặng Kèm Vest Nước 1.5L tiện lợi', 'BL-001', '499000', 15, 'NHIỀU NGĂN CHỨA ĐỒ: Thiết Kế với 9 túi nhỏ bên ngoài balo, bạn có thể lưu trữ tất cả nhỏ các vật dụng như chìa khóa, điện thoại và tiền mặt v. v.', 'image\\product\\0.17264900 1599189730-16.jpg', 6, 1, '2020-09-04 03:22:10', '2020-09-04 03:22:10'),
(99, 'Balo Chạy Bộ AONIJIE E913S 5L Tặng Kèm Vest Nước 1.5L 1', 'BL-001', '499000', 15, 'NHIỀU NGĂN CHỨA ĐỒ: Thiết Kế với 9 túi nhỏ bên ngoài balo, bạn có thể lưu trữ tất cả nhỏ các vật dụng như chìa khóa, điện thoại và tiền mặt v. v.', 'image\\product\\0.01629700 1599189743-17.jpg', 6, 1, '2020-09-04 03:22:23', '2020-09-04 03:22:23'),
(100, 'Vest Nước 1.5L', 'VN-001', '20000', 15, 'Thuận tiện khi đi du lịch, chạy bộ, tập thể thao', 'image\\product\\0.93115800 1599189800-18.jpg', 6, 1, '2020-09-04 03:23:20', '2020-09-04 03:23:20'),
(101, 'ĐỒNG HỒ NAM NIBOSI 2309(1985) CHẠY 6 KIM, DÂY DA CAO CẤP, SIÊU CHỐNG NƯỚC CHỐNG XƯỚC', 'DH-001', '325000', 15, 'Đồng hồ NIBOSI 1985L sở hữu thiết kế sang trọng với các chi tiết được chế tác tinh xảo, góp phần nâng tầm phong cách của người đeo. Bên cạnh đó, phần kim và số được thể hiện rõ ràng nhưng cũng không kém phần tinh tế, vừa đáp ứng nhu cầu quản lý thời gian vừa tô điểm thêm cho set trang phục của bạn. Với đồng hồ NIBOSI 1985L, bạn nam có thể sử dụng trong mọi dịp, từ đi làm, đi chơi hay tham dự những buổi tiệc.', 'image\\product\\0.66688800 1599190244-1.jpg', 7, 1, '2020-09-04 03:30:44', '2020-09-04 03:30:44'),
(102, 'ĐỒNG HỒ NAM  DÂY DA CAO CẤP, SIÊU CHỐNG NƯỚC CHỐNG XƯỚC', 'DH-001', '325000', 15, 'Đồng hồ NIBOSI 1985L sở hữu thiết kế sang trọng với các chi tiết được chế tác tinh xảo, góp phần nâng tầm phong cách của người đeo. Bên cạnh đó, phần kim và số được thể hiện rõ ràng nhưng cũng không kém phần tinh tế, vừa đáp ứng nhu cầu quản lý thời gian vừa tô điểm thêm cho set trang phục của bạn. Với đồng hồ NIBOSI 1985L, bạn nam có thể sử dụng trong mọi dịp, từ đi làm, đi chơi hay tham dự những buổi tiệc.', 'image\\product\\0.95960600 1599190278-2.jpg', 7, 1, '2020-09-04 03:31:18', '2020-09-04 03:31:18'),
(103, 'ĐỒNG HỒ NAM  DÂY DA CAO CẤP, SIÊU CHỐNG NƯỚC CHỐNG  XƯỚC ĐEN', 'DH-001', '325000', 15, 'Đồng hồ NIBOSI 1985L sở hữu thiết kế sang trọng với các chi tiết được chế tác tinh xảo, góp phần nâng tầm phong cách của người đeo. Bên cạnh đó, phần kim và số được thể hiện rõ ràng nhưng cũng không kém phần tinh tế, vừa đáp ứng nhu cầu quản lý thời gian vừa tô điểm thêm cho set trang phục của bạn. Với đồng hồ NIBOSI 1985L, bạn nam có thể sử dụng trong mọi dịp, từ đi làm, đi chơi hay tham dự những buổi tiệc.', 'image\\product\\0.64423300 1599190298-3.jpg', 7, 1, '2020-09-04 03:31:38', '2020-09-04 03:31:38'),
(104, 'ĐỒNG HỒ CASIO', 'DH-001', '125000', 15, 'Đồng hồ NIBOSI 1985L sở hữu thiết kế sang trọng với các chi tiết được chế tác tinh xảo, góp phần nâng tầm phong cách của người đeo. Bên cạnh đó, phần kim và số được thể hiện rõ ràng nhưng cũng không kém phần tinh tế, vừa đáp ứng nhu cầu quản lý thời gian vừa tô điểm thêm cho set trang phục của bạn. Với đồng hồ NIBOSI 1985L, bạn nam có thể sử dụng trong mọi dịp, từ đi làm, đi chơi hay tham dự những buổi tiệc.', 'image\\product\\0.32445500 1599190317-3.jpg', 7, 1, '2020-09-04 03:31:57', '2020-09-04 03:31:57'),
(105, 'ĐỒNG HỒ CASIO', 'DH-001', '125000', 15, 'Đồng hồ NIBOSI 1985L sở hữu thiết kế sang trọng với các chi tiết được chế tác tinh xảo, góp phần nâng tầm phong cách của người đeo. Bên cạnh đó, phần kim và số được thể hiện rõ ràng nhưng cũng không kém phần tinh tế, vừa đáp ứng nhu cầu quản lý thời gian vừa tô điểm thêm cho set trang phục của bạn. Với đồng hồ NIBOSI 1985L, bạn nam có thể sử dụng trong mọi dịp, từ đi làm, đi chơi hay tham dự những buổi tiệc.', 'image\\product\\0.40737700 1599190323-4.jpg', 7, 1, '2020-09-04 03:32:03', '2020-09-04 03:32:03'),
(106, 'ĐỒNG HỒ CASIO cao cấp', 'DH-001', '125000', 15, 'Đồng hồ NIBOSI 1985L sở hữu thiết kế sang trọng với các chi tiết được chế tác tinh xảo, góp phần nâng tầm phong cách của người đeo. Bên cạnh đó, phần kim và số được thể hiện rõ ràng nhưng cũng không kém phần tinh tế, vừa đáp ứng nhu cầu quản lý thời gian vừa tô điểm thêm cho set trang phục của bạn. Với đồng hồ NIBOSI 1985L, bạn nam có thể sử dụng trong mọi dịp, từ đi làm, đi chơi hay tham dự những buổi tiệc.', 'image\\product\\0.52382800 1599190339-11.jpg', 7, 1, '2020-09-04 03:32:19', '2020-09-04 03:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'user', 'User', 'user can buy, search, view for product and view, update profile', '2020-07-20 01:56:11', '2020-07-20 01:56:11'),
(2, 'admin', 'Administrator', 'admin can do everything in application', NULL, NULL),
(3, 'seller', 'Seller', 'Seller can sell product in this application', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'image\\slide\\0.45404800 1596169612-slide1.jfif', '2020-07-31 03:50:42', '2020-07-31 04:26:52'),
(2, 'Slide 2', 'image\\slide\\0.74403500 1596167461-slide2.jfif', '2020-07-31 03:51:01', '2020-07-31 03:51:01'),
(3, 'Slide 3', 'image\\slide\\0.14169100 1596167476-slide3.jfif', '2020-07-31 03:51:16', '2020-07-31 03:51:16'),
(4, 'Slide 4', 'image\\slide\\0.42532500 1596167483-slide4.jfif', '2020-07-31 03:51:23', '2020-07-31 03:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `phone`, `email`, `address`, `description`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Cửa hàng Thủy Vũ', 334565615, 'thuyvu.store@gmail.com', '101B Lê Hữu Trác, Sơn Trà, Đà Nẵng', 'Khách hàng là thượng đế', 'image\\store\\0.22466300 1596185060-store1.jpg', 1, '2020-07-31 08:44:20', '2020-07-31 08:44:20'),
(2, 'Cửa hàng LIBÉ', 334565651, 'libe.store@gmail.com', '99 Tô Hiến Thành, Sơn Trà, Đà Nẵng', 'Luôn luôn lắng nghe. Luôn luôn thấy hiểu', 'image\\store\\0.42348700 1596185707-store2.jpg', 4, '2020-07-31 08:49:12', '2020-07-31 08:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `phone`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Văn Huy', 'ranghivanhuy@gmail.com', '101B Lê Hữu Trác, Sơn Trà, Đà Nẵng', 334133327, '$2y$10$3ZqQKMMbNy/S.iU2oIXlxOsF9mU6SBt3xIoVvR7T3rZbtxWWKNIP.', 1, NULL, '2020-07-20 02:29:16', '2020-08-28 07:48:54'),
(2, 'Nguyễn Văn A', 'admin@gmail.com', '99 Tô Hiến Thành', 389651504, '$2y$10$tuwRnRjMNLMIv1MXU0ZqBOBQWfS3WNb.o5dqRswtHelTK2yG.tK/q', 1, NULL, '2020-08-28 03:22:17', '2020-08-28 03:22:17'),
(3, 'Chinh La Toi', 'chinhlatoi@gmail.com', '99 Tô Hiến Thành', 389541504, '$2y$10$sxieFmCA5P5ZpNrskxKDDec1hJYMalQVW8i3kldkoW6Mvw/.PvJFa', 0, NULL, '2020-08-28 07:53:11', '2020-08-28 08:01:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_user_id_index` (`user_id`),
  ADD KEY `cart_items_product_id_index` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categories_id_index` (`categories_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
