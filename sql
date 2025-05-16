-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2025 lúc 06:50 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `libro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 là hoạt động, 1 là khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 'Nguyễn Nhật Ánh', '2025-02-17 07:05:21', '2025-02-17 07:05:21', 0),
(2, 'Aoyama Gosho', '2025-02-17 07:05:21', '2025-02-17 07:05:21', 0),
(11, 'Huỳnh Thái Ngọc', '2025-03-20 20:08:34', '2025-03-20 20:08:43', 0),
(12, 'Phạm Lữ Ân', '2025-04-03 04:52:54', '2025-04-03 04:52:54', 0),
(13, 'Lam', '2025-04-03 04:56:15', '2025-04-03 04:56:15', 0),
(14, 'Phùng Quán', '2025-04-03 05:11:22', '2025-04-03 05:11:22', 0),
(15, 'Trác Nhã', '2025-04-03 05:12:27', '2025-04-03 05:12:27', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 là hoạt động, 1 là khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`, `del_flg`) VALUES
(2, 'Kinh tế', NULL, '2025-02-17 01:17:44', '2025-03-20 19:11:15', 0),
(3, 'Tâm Lý - Kĩ Năng Sống', NULL, '2025-02-17 01:17:44', '2025-02-17 01:17:44', 0),
(4, 'Nuôi Dậy Con', NULL, '2025-02-17 01:17:44', '2025-02-17 01:17:44', 0),
(5, 'Sách Thiếu Nhi', NULL, '2025-02-17 01:17:44', '2025-02-17 01:17:44', 0),
(6, 'Giáo Khoa - Tham Khảo', NULL, '2025-02-17 01:17:44', '2025-02-17 01:17:44', 0),
(7, 'Văn học', NULL, '2025-02-16 21:44:02', '2025-02-16 21:44:02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `covers`
--

CREATE TABLE `covers` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: hoạt động, 1: khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `covers`
--

INSERT INTO `covers` (`id`, `type`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 'Bìa cứng', '2025-03-12 03:16:28', '2025-03-12 03:16:28', 0),
(2, 'Bìa mềm', '2025-03-12 03:16:28', '2025-03-28 07:39:02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 là hoạt động, 1 là khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 'Shōnen', '2025-02-17 07:33:25', '2025-02-17 07:33:25', 0),
(2, 'Shoujo', '2025-02-17 07:33:25', '2025-02-17 07:33:25', 0),
(6, 'Kodomo', '2025-03-20 19:59:48', '2025-03-20 19:59:48', 0),
(7, 'Seinen', '2025-03-20 19:59:57', '2025-03-20 19:59:57', 0),
(8, 'Doujinshi', '2025-03-20 20:00:41', '2025-03-20 20:00:41', 0),
(9, 'School life', '2025-03-20 20:00:49', '2025-03-20 20:00:49', 0),
(10, 'Comedy', '2025-03-20 20:00:55', '2025-03-20 20:00:55', 0),
(11, 'Fantasy', '2025-03-20 20:03:59', '2025-03-20 20:03:59', 0),
(12, 'Adventure', '2025-03-20 20:04:08', '2025-03-20 20:04:08', 0),
(13, 'Tâm lý', '2025-03-28 02:11:00', '2025-03-28 02:13:11', 1),
(14, 'Tình yêu', '2025-03-28 02:11:05', '2025-03-28 02:13:14', 1),
(15, 'Thiếu nhi', '2025-03-28 02:11:50', '2025-03-28 02:13:18', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 là hoạt động, 1 là khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `name`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 'Tiếng Việt', '2025-02-17 07:20:46', '2025-02-17 07:20:46', 0),
(2, 'Tiếng Anh', '2025-02-17 07:20:46', '2025-02-17 07:20:46', 0),
(4, 'Tiếng Nhật', '2025-04-11 00:51:53', '2025-04-11 00:51:53', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `logs`
--

INSERT INTO `logs` (`id`, `message`, `created_at`) VALUES
(1, 'Người dùng đăng ký: client3 - Email: client@gmail.com', '2025-03-28 07:48:29'),
(2, 'Tài khoản bị khóa do nhập sai quá nhiều: ninh', '2025-03-28 08:16:05'),
(3, 'Tài khoản bị khóa do nhập sai quá nhiều: ninh', '2025-03-28 08:16:05'),
(4, 'Tài khoản bị khóa do nhập sai quá nhiều: hao', '2025-03-28 08:19:25'),
(5, 'Tài khoản bị khóa do nhập sai quá nhiều: hao', '2025-03-28 08:19:25'),
(6, 'Tài khoản bị khóa do nhập sai quá nhiều: dong', '2025-03-28 08:24:42'),
(7, 'Tài khoản bị khóa do nhập sai quá nhiều: dong', '2025-03-28 08:24:42'),
(8, 'Tài khoản bị khóa do nhập sai quá nhiều: thang', '2025-03-28 08:31:37'),
(9, 'Tài khoản thang@gmail.com bị khóa do nhập sai quá nhiều lần', '2025-03-28 01:31:37'),
(10, 'Người dùng đăng ký: anninh12 - Email: anninh12@gmail.com', '2025-04-04 03:06:27'),
(11, 'Người dùng đăng ký: vana - Email: vana@gmail.com', '2025-04-14 04:27:27'),
(12, 'Người dùng đăng ký: sadmin - Email: bombimquabombim12@gmail.com', '2025-04-17 07:02:40'),
(13, 'Tài khoản bị khóa do nhập sai quá nhiều: sadmin', '2025-04-24 04:40:43'),
(14, 'Tài khoản bombimquabombim12@gmail.com bị khóa do nhập sai quá nhiều lần', '2025-04-23 21:40:43'),
(15, 'Tài khoản bị khóa do nhập sai quá nhiều: sadmin', '2025-04-24 04:40:54'),
(16, 'Tài khoản bị khóa do nhập sai quá nhiều: sadmin', '2025-04-24 04:41:12'),
(17, 'Người dùng đăng ký: bombim - Email: bombimquabombim12@gmail.com', '2025-04-24 04:42:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `multiple_images`
--

CREATE TABLE `multiple_images` (
  `id` int(11) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `multiple_images`
--

INSERT INTO `multiple_images` (`id`, `image_link`, `product_id`, `created_at`, `updated_at`) VALUES
(72, 'uploads/jB6APLKm2Terf8Co78ygM1kNHeAKNim6FVkRLBRK.jpg', 138, '2025-03-20 20:20:58', '2025-03-20 20:20:58'),
(78, 'uploads/ZuTxs7OJa7MmHXJ3tyQfLMdTb5YDgQ2c7bdWqW6I.jpg', 135, '2025-04-03 04:46:30', '2025-04-03 04:46:30'),
(79, 'uploads/Y7lwz9t5tl0BgqwNzon6BUXEVAkYPwJPG9EXMcwA.jpg', 135, '2025-04-03 04:46:30', '2025-04-03 04:46:30'),
(80, 'uploads/7cUZiVpsoPIp2bSe2Uhj3Js1FHrEnjDFlb87V7sX.jpg', 135, '2025-04-03 04:46:30', '2025-04-03 04:46:30'),
(81, 'uploads/r0ccRzeD9YdBwfbeqOUint8vCYXhr1I5oxzIe1SU.jpg', 135, '2025-04-03 04:46:30', '2025-04-03 04:46:30'),
(82, 'uploads/Wb8cyYIJkeaxvon8zXCX9uScdfYluJ2dsfzxrJ97.jpg', 137, '2025-04-03 04:46:52', '2025-04-03 04:46:52'),
(83, 'uploads/NDf8DqHRuwfMczgZtETpzUsMgckOBoKeXxwFvJuE.jpg', 137, '2025-04-03 04:46:52', '2025-04-03 04:46:52'),
(84, 'uploads/DS9E8lfCvr0qZ6MFFM1cvy8ZCy9EODCGOvEV9mvj.jpg', 139, '2025-04-03 04:50:51', '2025-04-03 04:50:51'),
(85, 'uploads/e5YC68y2Wapw8aX2M3CYUjktsstJCMHUjnXzd1xy.jpg', 139, '2025-04-03 04:50:51', '2025-04-03 04:50:51'),
(86, 'uploads/KoU38vBA3Z6byJMr8ZEIxvmg9dE1bGiJ2gDDl5IR.jpg', 139, '2025-04-03 04:50:51', '2025-04-03 04:50:51'),
(87, 'uploads/XbVhcOtI6GcMf1PVuEgBq1HRaZ3Mc0YgErkxiMBK.jpg', 139, '2025-04-03 04:50:51', '2025-04-03 04:50:51'),
(88, 'uploads/kfpPDV6QJiMIhJHL1hgvbhK0ATSLPoa3qRX1zTaK.jpg', 140, '2025-04-03 04:55:36', '2025-04-03 04:55:36'),
(89, 'uploads/RLg6zzu4TA9VhuylnRKsdkSocit0qs5rSsnAxcNl.jpg', 140, '2025-04-03 04:55:36', '2025-04-03 04:55:36'),
(90, 'uploads/mPGXoIWUnsqAEXzmRf6HL6CqpeWZ9jQKGUlULRwu.jpg', 140, '2025-04-03 04:55:36', '2025-04-03 04:55:36'),
(91, 'uploads/B9Ceze77w3OACiLeIdkQpmiLfSnL6HRfy3MTEzQV.jpg', 141, '2025-04-03 05:05:19', '2025-04-03 05:05:19'),
(92, 'uploads/AuPiT71cNTwCa82Yjxc4XJvw2AQGE5sVKs6xhufy.jpg', 141, '2025-04-03 05:05:19', '2025-04-03 05:05:19'),
(93, 'uploads/qjmj0WDnNc8J4GxoJSGZxKm23jmk0rbOnrdUbuPB.jpg', 141, '2025-04-03 05:05:19', '2025-04-03 05:05:19'),
(94, 'uploads/HWHBanjq1URWnvvxEqlZvPL2gCmejSavD7ooOfQt.jpg', 141, '2025-04-03 05:05:19', '2025-04-03 05:05:19'),
(106, 'uploads/WUHHWPFkpnBbIq9a71iB2YE84vqzupkBHV3CtCld.webp', 143, '2025-05-04 21:38:59', '2025-05-04 21:38:59'),
(107, 'uploads/Hhb3SUetWTCclOVmGSfnU3Q0XMpqdu7tRAC6KINq.webp', 143, '2025-05-04 21:38:59', '2025-05-04 21:38:59'),
(108, 'uploads/mHCUruTSarmue2z2tp6m8sCsjK5vsWAWCLpRW6pd.webp', 143, '2025-05-04 21:38:59', '2025-05-04 21:38:59'),
(109, 'uploads/KtM1uKhfGIQyvY7BjFZoaY2UAdGurvvgVNwKfmhb.webp', 142, '2025-05-04 21:39:33', '2025-05-04 21:39:33'),
(111, 'uploads/bfPfvfiCmqL8Q3zGmjYlHrQ7l5OCJf6gHA2cpkt6.webp', 145, '2025-05-04 21:45:16', '2025-05-04 21:45:16'),
(112, 'uploads/8nIblny9FzIYPume1m3BydTb8vRhdLFcL6ncjL6P.webp', 145, '2025-05-04 21:45:16', '2025-05-04 21:45:16'),
(113, 'uploads/QUcbvpUjENphpWswcOuiMtXS3dvesro7ZGJivSFc.webp', 145, '2025-05-04 21:45:16', '2025-05-04 21:45:16'),
(114, 'uploads/Gq5zgf9iyyf4x0R8zVtizeyrsJHdcKDfXfv7W7BN.webp', 146, '2025-05-04 21:45:39', '2025-05-04 21:45:39'),
(115, 'uploads/bGHim2LU15Ilik2fMN22O0AYtstOsujjr0sscDVl.webp', 146, '2025-05-04 21:45:39', '2025-05-04 21:45:39'),
(116, 'uploads/AHNVFUztEJ3TCE6YpKk9ryQX8OL7g7ftE62lUW9G.webp', 146, '2025-05-04 21:45:39', '2025-05-04 21:45:39'),
(117, 'uploads/mdBel4qnN1JJgqkGVC4I3qPN8ZJcSiWNgMnponmC.webp', 147, '2025-05-04 21:47:21', '2025-05-04 21:47:21'),
(118, 'uploads/CtOBT0gHXK89uPoAHipmFSObwLtNVk0nIbVplsEV.webp', 147, '2025-05-04 21:47:21', '2025-05-04 21:47:21'),
(119, 'uploads/wgTlGtGveDSO7afaA2Sx23BzOFuGX1G0XwkvN1um.webp', 147, '2025-05-04 21:47:21', '2025-05-04 21:47:21'),
(120, 'uploads/oMRSYcCnOGlXMVTYkZ907HerLkK2EA3EkVzfeu7J.webp', 148, '2025-05-04 21:50:06', '2025-05-04 21:50:06'),
(121, 'uploads/SekpOe5MNmPS2eQYFpTDmUSmFVFWFbcnsbwT0LCh.webp', 148, '2025-05-04 21:50:06', '2025-05-04 21:50:06'),
(122, 'uploads/2wZtOBgZv6wyaXMtc1HErc4eN1n8OuONB7DyHyH4.webp', 148, '2025-05-04 21:50:06', '2025-05-04 21:50:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code_order` varchar(50) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `note` text DEFAULT NULL,
  `user_name` varchar(150) DEFAULT NULL,
  `user_email` varchar(150) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_status_id` int(11) NOT NULL,
  `payment_method` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: COD , 1: Ví Momo',
  `voucher_id` int(11) DEFAULT NULL,
  `shipping_name` varchar(150) DEFAULT NULL,
  `shipping_phone` varchar(50) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code_order`, `total_price`, `note`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_id`, `order_status_id`, `payment_method`, `voucher_id`, `shipping_name`, `shipping_phone`, `shipping_address`, `shipping_email`, `created_at`, `updated_at`) VALUES
(1, 'ORD-20250319-TTGUQ1', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 6, 0, NULL, '', '', '', NULL, '2025-03-19 01:06:51', '2025-03-20 18:02:56'),
(2, 'ORD-20250319-EA12NO', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 4, 0, NULL, '', '', '', NULL, '2025-03-19 01:20:22', '2025-03-20 18:12:11'),
(3, 'ORD-20250319-6RA33G', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 6, 0, NULL, '', '', '', NULL, '2025-03-19 01:27:26', '2025-03-20 20:30:29'),
(4, 'ORD-20250319-9DD5Q8', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, NULL, '', '', '', NULL, '2025-03-19 01:27:47', '2025-03-19 01:27:47'),
(6, 'ORD-20250319-IJULUH', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, NULL, '', '', '', NULL, '2025-03-19 01:39:11', '2025-03-19 01:39:11'),
(7, 'ORD-20250319-KF4LZ8', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, NULL, '', '', '', NULL, '2025-03-19 01:41:54', '2025-03-19 01:41:54'),
(8, 'ORD-20250319-NUGR6I', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, NULL, '', '', '', NULL, '2025-03-19 02:17:58', '2025-03-19 02:17:58'),
(9, 'ORD-20250319-U6GIBK', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, NULL, '', '', '', NULL, '2025-03-19 02:18:10', '2025-03-19 02:18:10'),
(10, 'ORD-20250319-1UZGKJ', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, NULL, '', '', '', NULL, '2025-03-19 02:41:48', '2025-03-19 02:41:48'),
(11, 'ORD-20250319-MLZ4YI', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, NULL, '', '', '', NULL, '2025-03-19 02:47:27', '2025-03-19 02:47:27'),
(12, 'ORD-20250321-FT6NPI', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, NULL, '', '', '', NULL, '2025-03-20 20:50:50', '2025-03-20 20:50:50'),
(13, 'ORD-20250321-OGEHWR', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 3, 0, NULL, '', '', '', NULL, '2025-03-20 20:50:56', '2025-03-20 20:51:21'),
(14, 'ORD-20250326-VW3UPM', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-25 23:46:11', '2025-03-25 23:46:11'),
(15, 'ORD-20250326-GOMDJJ', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-25 23:47:51', '2025-03-25 23:47:51'),
(16, 'ORD-20250326-MTVTA2', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-25 23:48:58', '2025-03-25 23:48:58'),
(17, 'ORD-20250326-IDXOWY', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-25 23:50:41', '2025-03-25 23:50:41'),
(18, 'ORD-20250326-IIO7QY', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 2, '', '', '', NULL, '2025-03-25 23:56:08', '2025-03-25 23:56:08'),
(19, 'ORD-20250326-5CC9LO', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 2, '', '', '', NULL, '2025-03-25 23:59:42', '2025-03-25 23:59:42'),
(20, 'ORD-20250326-BEAKFY', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 2, '', '', '', NULL, '2025-03-26 00:06:44', '2025-03-26 00:06:44'),
(21, 'ORD-20250326-Q339NW', 130000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 2, '', '', '', NULL, '2025-03-26 00:06:57', '2025-03-26 00:06:57'),
(22, 'ORD-20250326-YXNQPI', 130000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 2, '', '', '', NULL, '2025-03-26 00:09:04', '2025-03-26 00:09:04'),
(23, 'ORD-20250326-N38EXK', 130000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 3, '', '', '', NULL, '2025-03-26 00:10:00', '2025-03-26 00:10:00'),
(24, 'ORD-20250326-ODHMMG', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 3, '', '', '', NULL, '2025-03-26 00:10:09', '2025-03-26 00:10:09'),
(25, 'ORD-20250326-QFRLKE', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 3, '', '', '', NULL, '2025-03-26 00:13:59', '2025-03-26 00:13:59'),
(26, 'ORD-20250326-XB55C7', 80000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 3, '', '', '', NULL, '2025-03-26 00:25:23', '2025-03-26 00:25:23'),
(27, 'ORD-20250326-AN0RD9', 110000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 3, '', '', '', NULL, '2025-03-26 00:28:52', '2025-03-26 00:28:52'),
(28, 'ORD-20250326-RO0R6E', 80000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 3, '', '', '', NULL, '2025-03-26 00:34:28', '2025-03-26 00:34:28'),
(29, 'ORD-20250326-1NIQFG', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:05:50', '2025-03-26 01:05:50'),
(30, 'ORD-20250326-TFP3IW', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:12:58', '2025-03-26 01:12:58'),
(31, 'ORD-20250326-T83VOA', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:18:07', '2025-03-26 01:18:07'),
(32, 'ORD-20250326-FTMTWA', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:18:22', '2025-03-26 01:18:22'),
(33, 'ORD-20250326-PBRGOA', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:18:36', '2025-03-26 01:18:36'),
(34, 'ORD-20250326-KSXOAE', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:19:25', '2025-03-26 01:19:25'),
(35, 'ORD-20250326-UNAZFF', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:24:31', '2025-03-26 01:24:31'),
(39, 'ORD-20250326-LI5WC4', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:28:38', '2025-03-26 01:28:38'),
(40, 'ORD-20250326-DLHMJ0', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 2, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:32:00', '2025-03-26 01:32:00'),
(41, 'ORD-20250326-OH2DDU', 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:33:03', '2025-03-26 01:33:03'),
(42, 'ORD-20250326-QCHEXS', 10000.00, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:33:15', '2025-03-26 01:33:15'),
(43, 'ORD-20250326-KRRBBC', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:33:51', '2025-03-26 01:33:51'),
(44, 'ORD-20250326-LOZL6N', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:53:23', '2025-03-26 01:53:23'),
(45, 'ORD-20250326-HZWUKV', 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:53:33', '2025-03-26 01:53:33'),
(46, 'ORD-20250326-2BISGE', 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 01:58:43', '2025-03-26 01:58:43'),
(47, 'ORD-20250326-NQMSWD', 10000.00, NULL, 'ninh', 'ninh@gmail.com', '0345651932', 'Hà Nội', 2, 1, 0, 1, '', '', '', NULL, '2025-03-26 02:15:40', '2025-03-26 02:15:40'),
(48, 'ORD-20250326-USGVFZ', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 2, 1, 0, 1, '', '', '', NULL, '2025-03-26 02:15:47', '2025-03-26 02:15:47'),
(49, 'ORD-20250326-FPGYFM', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 02:26:09', '2025-03-26 02:26:09'),
(50, 'ORD-20250326-NMDDVO', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, NULL, '', '', '', NULL, '2025-03-26 02:27:38', '2025-03-26 02:27:38'),
(51, 'ORD-20250326-5GQB5I', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 02:27:58', '2025-03-26 02:27:58'),
(52, 'ORD-20250326-HNWKCG', 10000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 02:59:43', '2025-03-26 02:59:43'),
(53, 'ORD-20250326-PTBWPX', 1530000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 03:28:16', '2025-03-26 03:28:16'),
(54, 'ORD-20250326-SXLELL', 2730000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-03-26 03:28:38', '2025-03-26 03:28:38'),
(55, 'ORD-20250404-QIKKR9', 7887500.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 19:23:45', '2025-04-03 19:23:45'),
(56, 'ORD-20250404-ZZ1GFH', 7887500.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 19:30:07', '2025-04-03 19:30:07'),
(57, 'ORD-20250404-OQ6AH9', 4130000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 19:30:31', '2025-04-03 19:30:31'),
(58, 'ORD-20250404-J0NGCL', 4130000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:08:25', '2025-04-03 20:08:25'),
(59, 'ORD-20250404-D2DCQX', 7130000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:08:51', '2025-04-03 20:08:51'),
(60, 'ORD-20250404-0OES4T', 7930000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:09:12', '2025-04-03 20:09:12'),
(61, 'ORD-20250404-0HAV79', 800000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:10:57', '2025-04-03 20:10:57'),
(62, 'ORD-20250404-TRSYT9', 800000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:11:44', '2025-04-03 20:11:44'),
(63, 'ORD-20250404-NX5JD1', 800000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:12:21', '2025-04-03 20:12:21'),
(64, 'ORD-20250404-YOI2CG', 800000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:13:45', '2025-04-03 20:13:45'),
(65, 'ORD-20250404-U6FQBD', 800000.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:22:14', '2025-04-03 20:22:14'),
(66, 'ORD-20250404-TW9NVV', 800000.00, NULL, 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:22:34', '2025-04-03 20:22:34'),
(67, 'ORD-20250404-WIOFAP', 800000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:25:01', '2025-04-03 20:25:01'),
(68, 'ORD-20250404-PFRJEL', 800000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:46:08', '2025-04-03 20:46:08'),
(69, 'ORD-20250404-HEJSQZ', 140000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:47:41', '2025-04-03 20:47:41'),
(70, 'ORD-20250404-SHPWFU', 140000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:48:10', '2025-04-03 20:48:10'),
(71, 'ORD-20250404-OINMAY', 140000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:48:57', '2025-04-03 20:48:57'),
(72, 'ORD-20250404-6WB6Q8', 140000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:51:20', '2025-04-03 20:51:20'),
(73, 'ORD-20250404-ND2EAX', 350000.00, 'giao nhanh đê', 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:51:33', '2025-04-03 20:51:33'),
(74, 'ORD-20250404-QJNMPW', 350000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:52:24', '2025-04-03 20:52:24'),
(75, 'ORD-20250404-MLZH6P', 350000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', NULL, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:55:23', '2025-04-03 20:55:23'),
(76, 'ORD-20250404-4VOFM3', 350000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:55:31', '2025-04-03 20:55:31'),
(77, 'ORD-20250404-EO2HXS', 350000.00, 'giao nhanh đê', 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 20:55:42', '2025-04-03 20:55:42'),
(78, 'ORD-20250404-JGRZCX', 350000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 21:02:02', '2025-04-03 21:02:02'),
(79, 'ORD-20250404-VNEOVN', 350000.00, 'giao nhanh đê', 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, '', '', '', NULL, '2025-04-03 21:02:09', '2025-04-03 21:02:09'),
(81, 'ORD-20250404-BJKUP3', 350000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 01:31:23', '2025-04-04 01:31:23'),
(82, 'ORD-20250404-XY6JVL', 350000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:15:46', '2025-04-04 02:15:46'),
(83, 'ORD-20250404-DUCEIO', 350000.00, 'giao nhanh đê', 'Nguyễn An Linh', 'annin@gmail.com', '0987654321', 'Hà Nội đó nhé', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:17:12', '2025-04-04 02:17:12'),
(84, 'ORD-20250404-AEBQ8T', 350000.00, 'giao nhanh đê', 'anninh12', 'annin@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:25:20', '2025-04-04 02:25:20'),
(85, 'ORD-20250404-GWDUTU', 350000.00, 'giao nhanh đê', 'anninh12', 'annin@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:26:58', '2025-04-04 02:26:58'),
(86, 'ORD-20250404-UNYJAB', 350000.00, 'giao nhanh đê', 'anninh12', 'annin@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:27:52', '2025-04-04 02:27:52'),
(87, 'ORD-20250404-YTUUOD', 350000.00, 'giao nhanh đê', 'anninh12', 'annin@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:29:39', '2025-04-04 02:29:39'),
(88, 'ORD-20250404-X8V6TB', 350000.00, 'giao nhanh đê', 'anninh12', 'annin@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:29:49', '2025-04-04 02:29:49'),
(89, 'ORD-20250404-ILFNQE', 350000.00, 'giao nhanh đê', 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:32:33', '2025-04-04 02:32:33'),
(90, 'ORD-20250404-6YJZ0V', 350000.00, 'giao nhanh đê', 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:37:48', '2025-04-04 02:37:48'),
(91, 'ORD-20250404-EAGAOM', 350000.00, 'giao nhanh đê', 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:38:44', '2025-04-04 02:38:44'),
(92, 'ORD-20250404-XIPWHJ', 350000.00, 'giao nhanh đê', 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, NULL, NULL, NULL, NULL, '2025-04-04 02:42:53', '2025-04-04 02:42:53'),
(93, 'ORD-20250404-XEUNBF', 350000.00, 'giao nhanh đê', 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, 1, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', NULL, '2025-04-04 02:43:20', '2025-04-04 02:43:20'),
(94, 'ORD-20250404-NGJHYU', 350000.00, 'giao nhanh đê', 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 3, 0, 1, 'anninh12', '0345651932', 'Hà Nội', NULL, '2025-04-04 02:47:01', '2025-04-10 21:22:35'),
(95, 'ORD-20250414-QIAS5D', 150000.00, NULL, 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, NULL, 'anninh12', '0345651932', 'Hà Nội', NULL, '2025-04-13 18:00:08', '2025-04-13 18:00:08'),
(96, 'ORD-20250414-NU4XZW', 516400.00, NULL, 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 0, NULL, 'Nguyễn An Ninh HiHi', '0345651932', 'Hà Nội', NULL, '2025-04-13 19:30:42', '2025-04-13 19:30:42'),
(97, 'ORD-20250414-HOHD8R', 516400.00, NULL, 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 2, NULL, 'Nguyễn An Ninh HiHi', '0345651932', 'Hà Nội', NULL, '2025-04-13 19:31:08', '2025-04-13 19:31:08'),
(98, 'ORD-20250414-2QZ1MJ', 106000.00, NULL, 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 1, 2, NULL, 'Nguyễn An Ninh HiHi', '0345651932', 'Hà Nội', NULL, '2025-04-13 19:40:10', '2025-04-13 19:40:10'),
(99, 'ORD-20250414-TPCFEI', 106000.00, NULL, 'anninh12', 'anninh12@gmail.com', '0345651932', 'Hà Nội', 13, 7, 2, NULL, 'Nguyễn An Ninh HiHi', '0345651932', 'Hà Nội', NULL, '2025-04-13 19:42:26', '2025-04-14 03:02:25'),
(100, 'ORD-20250414-3HFBXT', 106000.00, NULL, 's.admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Supper Admin', '0345651932', 'Hà Nội', NULL, '2025-04-13 20:19:42', '2025-04-13 20:19:42'),
(101, 'ORD-20250414-ZEZTJR', 182000.00, NULL, 's.admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Supper Admin', '0345651932', 'Hà Nội', NULL, '2025-04-13 20:21:54', '2025-04-13 20:21:54'),
(102, 'ORD-20250414-I7DJIA', 182000.00, NULL, 's.admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Supper Admin', '0345651932', 'Hà Nội', NULL, '2025-04-13 20:23:07', '2025-04-13 20:23:07'),
(103, 'ORD-20250414-5DXKDY', 106000.00, NULL, 's.admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 2, NULL, 'Supper Admin', '0345651932', 'Hà Nội', NULL, '2025-04-13 20:23:25', '2025-04-13 20:23:25'),
(105, 'ORD-20250414-92BHH9', 400750.00, 'giao nhanh đê', 's.admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, 4, 's.admin', '0345651932', 'Hà Nội', NULL, '2025-04-14 00:48:37', '2025-04-14 00:48:37'),
(106, 'ORD-20250414-HS21TP', 400750.00, 'giao nhanh đê', 's.admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, 4, 's.admin', '0345651932', 'Hà Nội', NULL, '2025-04-14 00:55:33', '2025-04-14 00:55:33'),
(107, 'ORD-20250414-WMQQGG', 400750.00, 'giao nhanh đê', 's.admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, 5, 's.admin', '0345651932', 'Hà Nội', NULL, '2025-04-14 02:21:31', '2025-04-14 09:53:07'),
(108, 'ORD-20250417-RS428C', 400750.00, 'giao nhanh đê', 's.admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, 5, 's.admin', '0345651932', 'Hà Nội', NULL, '2025-04-17 02:25:00', '2025-04-17 02:25:00'),
(109, 'ORD-20250424-0FWSDN', 150000.00, 'bọc cẩn thận nhé', 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', NULL, NULL, 16, 1, 0, NULL, 'Nguyễn An Ninh', '0345651932', 'Hà Nội, Tây Hồ, Nhật Tân', 'bombimquabombim12@gmail.com', '2025-04-23 21:43:57', '2025-04-23 21:43:57'),
(110, 'ORD-20250424-L7T260', 150000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 1, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-04-23 21:56:02', '2025-04-23 21:56:02'),
(111, 'ORD-20250424-BTRKJL', 106000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 1, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-04-23 21:59:28', '2025-04-23 21:59:28'),
(112, 'ORD-20250424-CQYJVM', 150000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 1, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-04-23 22:05:18', '2025-04-23 22:05:18'),
(113, 'ORD-20250424-UFWG5X', 110750.00, NULL, 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Supper Admin', '0345651932', 'Hà Nội', 'sadmin@gmail.com', '2025-04-23 22:57:50', '2025-04-23 22:57:50'),
(114, 'ORD-20250424-OFCC3R', 150000.00, NULL, 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Supper Admin', '0345651932', 'Hà Nội', 'sadmin@gmail.com', '2025-04-24 01:42:28', '2025-04-24 01:42:28'),
(115, 'ORD-20250424-BOZFAQ', 140000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 2, 0, 4, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-04-24 02:16:54', '2025-04-24 07:02:24'),
(116, 'ORD-20250424-QTSTSB', 150000.00, NULL, 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 2, NULL, 'Supper Admin', '0345651932', 'Hà Nội', 'sadmin@gmail.com', '2025-04-24 03:33:12', '2025-04-24 03:33:12'),
(117, 'ORD-20250424-CRMQHN', 150000.00, NULL, 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 7, 0, NULL, 'Supper Admin', '0345651932', 'Hà Nội', 'sadmin@gmail.com', '2025-04-24 03:53:23', '2025-04-24 03:54:02'),
(118, 'ORD-20250424-QPXH32', 150000.00, NULL, 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Supper Admin', '0345651932', 'Hà Nội', 'sadmin@gmail.com', '2025-04-24 05:13:15', '2025-04-24 05:13:15'),
(119, 'ORD-20250424-RM11BQ', 110000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 2, 0, 2, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-04-24 06:20:48', '2025-04-24 07:01:16'),
(120, 'ORD-20250424-JLGM78', 350000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14', NULL, 6, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14', NULL, '2025-04-24 06:49:55', '2025-04-24 06:53:28'),
(121, 'ORD-20250424-UTW3FG', 106000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', NULL, 1, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', NULL, '2025-04-24 06:59:01', '2025-04-24 06:59:01'),
(122, 'ORD-20250424-2F43UZ', 150000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 1, 0, NULL, 'Nguyễn An LINH', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-04-24 07:12:33', '2025-04-24 07:12:33'),
(123, 'ORD-20250424-8JKAC8', 150000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 1, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-04-24 07:16:59', '2025-04-24 07:16:59'),
(124, 'ORD-20250424-KFUJYA', 120010.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 1, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-04-24 07:17:46', '2025-04-24 07:17:46'),
(125, 'ORD-20250425-J9JT3U', 110000.00, 'giao nhanh đê', 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Supper Admin', '0345651932', 'Hà Nội', 'sadmin@gmail.com', '2025-04-25 01:48:13', '2025-04-25 01:48:13'),
(126, 'ORD-20250425-980SW1', 110000.00, 'giao nhanh đê', 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'sadmin@gmail.com', '2025-04-25 01:49:58', '2025-04-25 01:49:58'),
(127, 'ORD-20250425-8FMMW4', 110000.00, 'giao nhanh đê', 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-04-25 01:50:39', '2025-04-25 01:50:39'),
(128, 'ORD-20250425-55JMDJ', 110000.00, 'giao nhanh đê', 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-04-25 01:58:05', '2025-04-25 01:58:05'),
(129, 'ORD-20250425-RTUFBF', 110000.00, 'giao nhanh đê', 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-04-25 02:00:28', '2025-04-25 02:00:28'),
(130, 'ORD-20250425-72IQBF', 110000.00, 'giao nhanh đê', 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-04-25 02:07:49', '2025-04-25 02:07:49'),
(131, 'ORD-20250425-5PHUF7', 410000.00, 'giao nhanh đê', 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 1, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-04-25 02:11:22', '2025-04-25 02:11:22'),
(132, 'ORD-20250426-EE2K2T', 410000.00, 'giao nhanh đê', 'Supper Admin', 'sadmin@gmail.com', '0345651932', 'Hà Nội', 1, 7, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-04-26 00:05:17', '2025-05-04 20:06:15'),
(133, 'ORD-20250426-JUDQMC', 320000.00, 'giao nhanh đê', 'Nguyễn An Ninh', 'anninh12@gmail.com', '0345651932', 'Hà Nội, Tây Hồ, Nhật Tân', 13, 1, 0, 4, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-04-26 00:30:19', '2025-04-26 00:30:19'),
(134, 'ORD-20250426-LVLTCM', 280000.00, 'giao nhanh đê', 'Nguyễn An Ninh', 'anninh12@gmail.com', '0345651932', 'Hà Nội, Tây Hồ, Nhật Tân', 13, 1, 0, 3, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-04-26 00:38:03', '2025-04-26 00:38:03'),
(135, 'ORD-20250428-QB1TEU', 120010.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 7, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-04-28 05:50:19', '2025-04-28 05:53:55'),
(136, 'ORD-20250428-NCUJXG', 1133000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 2, 0, 3, 'Nguyễn MInh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-04-28 06:35:19', '2025-04-28 06:38:54'),
(137, 'ORD-20250503-C97TUI', 280000.00, 'giao nhanh đê', 'Nguyễn An Ninh', 'anninh12@gmail.com', '0345651932', 'Hà Nội, Tây Hồ, Nhật Tân', 13, 1, 0, 3, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-05-02 23:08:40', '2025-05-02 23:08:40'),
(138, 'ORD-20250503-7DWPNG', 280000.00, 'giao nhanh đê', 'Nguyễn An Ninh', 'anninh12@gmail.com', '0345651932', 'Hà Nội, Tây Hồ, Nhật Tân', 13, 1, 0, 3, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-05-02 23:41:53', '2025-05-02 23:41:53'),
(139, 'ORD-20250503-0HR1HJ', 280000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 1, 0, 3, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-05-03 00:26:54', '2025-05-03 00:26:54'),
(140, 'ORD-20250503-4YX6EH', 300000.00, 'giao nhanh đê', 'Nguyễn An Ninh', 'anninh12@gmail.com', '0345651932', 'Hà Nội, Tây Hồ, Nhật Tân', 13, 1, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-05-03 00:45:59', '2025-05-03 00:45:59'),
(141, 'ORD-20250503-RMGDYY', 300000.00, 'giao nhanh đê', 'Nguyễn An Ninh', 'anninh12@gmail.com', '0345651932', 'Hà Nội, Tây Hồ, Nhật Tân', 13, 1, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-05-03 02:18:57', '2025-05-03 02:18:57'),
(142, 'ORD-20250503-KUJEUE', 300000.00, 'giao nhanh đê', 'Nguyễn An Ninh', 'anninh12@gmail.com', '0345651932', 'Hà Nội, Tây Hồ, Nhật Tân', 13, 1, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-05-03 02:23:31', '2025-05-03 02:23:31'),
(143, 'ORD-20250503-WRPYA6', 300000.00, 'giao nhanh đê', 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 1, 0, NULL, 'Nguyễn An Linh', '0987654321', 'Hà Nội đó nhé', 'annin@gmail.com', '2025-05-03 02:30:14', '2025-05-03 02:30:14'),
(144, 'ORD-20250504-WCACLY', 120000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 1, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-05-04 07:56:48', '2025-05-04 07:56:48'),
(145, 'ORD-20250504-0YO0LM', 200000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 7, 0, 4, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-05-04 08:53:28', '2025-05-04 08:55:18'),
(146, 'ORD-20250504-DCETML', 130000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 6, 1, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-05-04 08:56:06', '2025-05-04 08:59:03'),
(147, 'ORD-20250504-F87SPI', 120000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 7, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-05-04 09:18:57', '2025-05-04 09:43:59'),
(148, 'ORD-20250504-IAJSPN', 120000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 2, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-05-04 09:19:04', '2025-05-04 09:19:49'),
(149, 'ORD-20250504-HZCOZ3', 120000.00, NULL, 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 16, 7, 0, NULL, 'Nguyễn An Ninh', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', 'bombimquabombim12@gmail.com', '2025-05-04 09:21:39', '2025-05-04 21:23:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_line` double(10,2) NOT NULL,
  `hard_products` varchar(255) DEFAULT NULL,
  `hard_price_time` double(10,2) DEFAULT NULL,
  `hard_cover` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `quantity`, `total_line`, `hard_products`, `hard_price_time`, `hard_cover`, `order_id`, `product_variant_id`) VALUES
(1, 1, 40000.00, NULL, NULL, '', 1, 2),
(2, 1, 40000.00, NULL, NULL, '', 1, 3),
(3, 1, 40000.00, NULL, NULL, '', 2, 2),
(4, 1, 40000.00, NULL, NULL, '', 2, 3),
(5, 1, 40000.00, NULL, NULL, '', 3, 2),
(6, 1, 40000.00, NULL, NULL, '', 3, 3),
(7, 1, 40000.00, NULL, NULL, '', 4, 2),
(8, 1, 40000.00, NULL, NULL, '', 4, 3),
(9, 1, 40000.00, NULL, NULL, '', 6, 2),
(10, 1, 40000.00, NULL, NULL, '', 6, 3),
(11, 1, 40000.00, NULL, NULL, '', 7, 2),
(12, 1, 40000.00, NULL, NULL, '', 7, 3),
(13, 1, 40000.00, NULL, NULL, '', 8, 2),
(14, 1, 40000.00, NULL, NULL, '', 8, 3),
(15, 1, 40000.00, NULL, NULL, '', 9, 2),
(16, 1, 40000.00, NULL, NULL, '', 9, 3),
(17, 1, 40000.00, NULL, NULL, '', 10, 2),
(18, 1, 40000.00, NULL, NULL, '', 10, 3),
(19, 1, 40000.00, NULL, NULL, '', 11, 2),
(20, 1, 40000.00, NULL, NULL, '', 11, 3),
(21, 1, 40000.00, NULL, NULL, '', 12, 2),
(22, 1, 40000.00, NULL, NULL, '', 12, 3),
(23, 1, 40000.00, NULL, NULL, '', 13, 2),
(24, 1, 40000.00, NULL, NULL, '', 13, 3),
(25, 1, 40000.00, NULL, NULL, '', 14, 2),
(26, 1, 40000.00, NULL, NULL, '', 14, 3),
(27, 1, 40000.00, NULL, NULL, '', 15, 2),
(28, 1, 40000.00, NULL, NULL, '', 15, 3),
(29, 1, 40000.00, NULL, NULL, '', 16, 2),
(30, 1, 40000.00, NULL, NULL, '', 16, 3),
(31, 1, 40000.00, NULL, NULL, '', 17, 2),
(32, 1, 40000.00, NULL, NULL, '', 17, 3),
(33, 1, 40000.00, NULL, NULL, '', 18, 2),
(34, 1, 40000.00, NULL, NULL, '', 18, 3),
(35, 1, 40000.00, NULL, NULL, '', 19, 2),
(36, 1, 40000.00, NULL, NULL, '', 19, 3),
(37, 1, 40000.00, NULL, NULL, '', 20, 2),
(38, 1, 40000.00, NULL, NULL, '', 20, 3),
(39, 1, 40000.00, NULL, NULL, '', 21, 2),
(40, 1, 40000.00, NULL, NULL, '', 21, 3),
(41, 1, 40000.00, NULL, NULL, '', 22, 2),
(42, 1, 40000.00, NULL, NULL, '', 22, 3),
(43, 1, 40000.00, NULL, NULL, '', 23, 2),
(44, 1, 40000.00, NULL, NULL, '', 23, 3),
(45, 1, 40000.00, NULL, NULL, '', 24, 2),
(46, 1, 40000.00, NULL, NULL, '', 24, 3),
(47, 1, 40000.00, NULL, NULL, '', 25, 2),
(48, 1, 40000.00, NULL, NULL, '', 25, 3),
(49, 1, 40000.00, NULL, NULL, '', 26, 2),
(50, 1, 40000.00, NULL, NULL, '', 26, 3),
(51, 1, 40000.00, NULL, NULL, '', 27, 2),
(52, 1, 40000.00, NULL, NULL, '', 27, 3),
(53, 1, 40000.00, NULL, NULL, '', 28, 2),
(54, 1, 40000.00, NULL, NULL, '', 28, 3),
(55, 1, 40000.00, NULL, NULL, '', 29, 2),
(56, 1, 40000.00, NULL, NULL, '', 29, 3),
(57, 1, 40000.00, NULL, NULL, '', 30, 2),
(58, 1, 40000.00, NULL, NULL, '', 30, 3),
(59, 1, 40000.00, NULL, NULL, '', 31, 2),
(60, 1, 40000.00, NULL, NULL, '', 31, 3),
(61, 1, 40000.00, NULL, NULL, '', 32, 2),
(62, 1, 40000.00, NULL, NULL, '', 32, 3),
(63, 1, 40000.00, NULL, NULL, '', 33, 2),
(64, 1, 40000.00, NULL, NULL, '', 33, 3),
(65, 1, 40000.00, NULL, NULL, '', 34, 2),
(66, 1, 40000.00, NULL, NULL, '', 34, 3),
(67, 1, 40000.00, NULL, NULL, '', 35, 2),
(68, 1, 40000.00, NULL, NULL, '', 35, 3),
(69, 1, 40000.00, NULL, NULL, '', 39, 2),
(70, 1, 40000.00, NULL, NULL, '', 39, 3),
(71, 1, 40000.00, NULL, NULL, '', 40, 2),
(72, 1, 40000.00, NULL, NULL, '', 40, 3),
(73, 1, 40000.00, NULL, NULL, '', 41, 2),
(74, 1, 40000.00, NULL, NULL, '', 41, 3),
(75, 1, 40000.00, NULL, NULL, '', 42, 2),
(76, 1, 40000.00, NULL, NULL, '', 42, 3),
(77, 1, 40000.00, NULL, NULL, '', 43, 2),
(78, 1, 40000.00, NULL, NULL, '', 43, 3),
(79, 1, 40000.00, NULL, NULL, '', 44, 2),
(80, 1, 40000.00, NULL, NULL, '', 44, 3),
(81, 1, 40000.00, NULL, NULL, '', 45, 2),
(82, 1, 40000.00, NULL, NULL, '', 45, 3),
(83, 1, 40000.00, NULL, NULL, '', 46, 2),
(84, 1, 40000.00, NULL, NULL, '', 46, 3),
(85, 1, 40000.00, NULL, NULL, '', 47, 2),
(86, 1, 40000.00, NULL, NULL, '', 47, 3),
(87, 1, 40000.00, NULL, NULL, '', 48, 2),
(88, 1, 40000.00, NULL, NULL, '', 48, 3),
(89, 1, 40000.00, NULL, NULL, '', 49, 2),
(90, 1, 40000.00, NULL, NULL, '', 49, 3),
(91, 1, 40000.00, NULL, NULL, '', 50, 2),
(92, 1, 40000.00, NULL, NULL, '', 50, 3),
(93, 1, 40000.00, NULL, NULL, '', 51, 2),
(94, 1, 40000.00, NULL, NULL, '', 51, 3),
(95, 1, 40000.00, NULL, NULL, '', 52, 2),
(96, 1, 40000.00, NULL, NULL, '', 52, 3),
(97, 20, 40000.00, NULL, NULL, '', 53, 2),
(98, 20, 40000.00, NULL, NULL, '', 53, 3),
(99, 50, 40000.00, NULL, NULL, '', 54, 1),
(100, 20, 40000.00, NULL, NULL, '', 54, 3),
(101, 50, 6757500.00, NULL, NULL, '', 55, 4),
(102, 20, 1200000.00, NULL, NULL, '', 55, 6),
(103, 50, 6757500.00, NULL, NULL, '', 56, 4),
(104, 20, 1200000.00, NULL, NULL, '', 56, 6),
(105, 50, 3000000.00, NULL, NULL, '', 57, 7),
(106, 20, 1200000.00, NULL, NULL, '', 57, 6),
(107, 50, 3000000.00, NULL, NULL, '', 58, 7),
(108, 20, 1200000.00, NULL, NULL, '', 58, 6),
(109, 50, 6000000.00, NULL, NULL, '', 59, 8),
(110, 20, 1200000.00, NULL, NULL, '', 59, 6),
(111, 50, 6000000.00, NULL, NULL, '', 60, 8),
(112, 20, 2000000.00, NULL, NULL, '', 60, 2),
(113, 5, 600000.00, NULL, NULL, '', 61, 8),
(114, 3, 270000.00, NULL, NULL, '', 61, 3),
(115, 5, 600000.00, NULL, NULL, '', 62, 8),
(116, 3, 270000.00, NULL, NULL, '', 62, 3),
(117, 5, 600000.00, NULL, NULL, '', 63, 8),
(118, 3, 270000.00, NULL, NULL, '', 63, 3),
(119, 5, 600000.00, NULL, NULL, '', 64, 8),
(120, 3, 270000.00, NULL, NULL, '', 64, 3),
(121, 5, 600000.00, NULL, NULL, '', 65, 8),
(122, 3, 270000.00, NULL, NULL, '', 65, 3),
(123, 5, 600000.00, NULL, NULL, '', 66, 8),
(124, 3, 270000.00, NULL, NULL, '', 66, 3),
(125, 5, 600000.00, NULL, NULL, '', 67, 8),
(126, 3, 270000.00, NULL, NULL, '', 67, 3),
(127, 5, 600000.00, NULL, NULL, '', 68, 8),
(128, 3, 270000.00, NULL, NULL, '', 68, 3),
(129, 1, 120000.00, NULL, NULL, '', 69, 8),
(130, 1, 90000.00, NULL, NULL, '', 69, 3),
(131, 1, 120000.00, NULL, NULL, '', 70, 8),
(132, 1, 90000.00, NULL, NULL, '', 70, 3),
(133, 1, 120000.00, NULL, NULL, '', 71, 8),
(134, 1, 90000.00, NULL, NULL, '', 71, 3),
(135, 1, 120000.00, NULL, NULL, '', 72, 8),
(136, 1, 90000.00, NULL, NULL, '', 72, 3),
(137, 1, 120000.00, NULL, NULL, '', 73, 8),
(138, 3, 300000.00, NULL, NULL, '', 73, 2),
(139, 1, 120000.00, NULL, NULL, '', 74, 8),
(140, 3, 300000.00, NULL, NULL, '', 74, 2),
(141, 1, 120000.00, NULL, NULL, '', 75, 8),
(142, 3, 300000.00, NULL, NULL, '', 75, 2),
(143, 1, 120000.00, NULL, NULL, '', 76, 8),
(144, 3, 300000.00, NULL, NULL, '', 76, 2),
(145, 1, 120000.00, NULL, NULL, '', 77, 8),
(146, 3, 300000.00, NULL, NULL, '', 77, 2),
(147, 1, 120000.00, NULL, NULL, '', 78, 8),
(148, 3, 300000.00, NULL, NULL, '', 78, 2),
(149, 1, 120000.00, NULL, NULL, '', 79, 8),
(150, 3, 300000.00, NULL, NULL, '', 79, 2),
(151, 1, 120000.00, NULL, NULL, '', 81, 8),
(152, 3, 300000.00, NULL, NULL, '', 81, 2),
(153, 1, 120000.00, NULL, NULL, '', 82, 8),
(154, 3, 300000.00, NULL, NULL, '', 82, 2),
(155, 1, 120000.00, NULL, NULL, '', 83, 8),
(156, 3, 300000.00, NULL, NULL, '', 83, 2),
(157, 1, 120000.00, NULL, NULL, '', 84, 8),
(158, 3, 300000.00, NULL, NULL, '', 84, 2),
(159, 1, 120000.00, NULL, NULL, '', 85, 8),
(160, 3, 300000.00, NULL, NULL, '', 85, 2),
(161, 1, 120000.00, NULL, NULL, '', 86, 8),
(162, 3, 300000.00, NULL, NULL, '', 86, 2),
(163, 1, 120000.00, NULL, NULL, '', 87, 8),
(164, 3, 300000.00, NULL, NULL, '', 87, 2),
(165, 1, 120000.00, NULL, NULL, '', 88, 8),
(166, 3, 300000.00, NULL, NULL, '', 88, 2),
(167, 1, 120000.00, NULL, NULL, '', 89, 8),
(168, 3, 300000.00, NULL, NULL, '', 89, 2),
(169, 1, 120000.00, NULL, NULL, '', 90, 8),
(170, 3, 300000.00, NULL, NULL, '', 90, 2),
(171, 1, 120000.00, NULL, NULL, '', 91, 8),
(172, 3, 300000.00, NULL, NULL, '', 91, 2),
(173, 1, 120000.00, NULL, NULL, '', 92, 8),
(174, 3, 300000.00, NULL, NULL, '', 92, 2),
(175, 1, 120000.00, NULL, NULL, '', 93, 8),
(176, 3, 300000.00, NULL, NULL, '', 93, 2),
(177, 1, 120000.00, NULL, NULL, '', 94, 8),
(178, 3, 300000.00, NULL, NULL, '', 94, 2),
(179, 1, 120000.00, NULL, NULL, '', 95, 8),
(180, 1, 486400.00, NULL, NULL, '', 96, 9),
(181, 1, 486400.00, NULL, NULL, '', 97, 9),
(182, 1, 76000.00, NULL, NULL, '', 98, 5),
(183, 1, 76000.00, NULL, NULL, '', 99, 5),
(184, 1, 76000.00, NULL, NULL, '', 100, 5),
(185, 2, 152000.00, NULL, NULL, '', 101, 5),
(186, 2, 152000.00, NULL, NULL, '', 102, 5),
(187, 1, 76000.00, NULL, NULL, '', 103, 5),
(188, 1, 80750.00, NULL, NULL, '', 105, 1),
(189, 3, 300000.00, NULL, NULL, '', 105, 2),
(190, 1, 80750.00, NULL, NULL, '', 106, 1),
(191, 3, 300000.00, NULL, NULL, '', 106, 2),
(192, 1, 80750.00, NULL, NULL, '', 107, 1),
(193, 3, 300000.00, NULL, NULL, '', 107, 2),
(194, 1, 80750.00, NULL, NULL, '', 108, 1),
(195, 3, 300000.00, NULL, NULL, '', 108, 2),
(196, 1, 120000.00, NULL, NULL, '', 109, 8),
(197, 1, 120000.00, NULL, NULL, '', 110, 8),
(198, 1, 76000.00, NULL, NULL, '', 111, 5),
(199, 1, 120000.00, NULL, NULL, '', 112, 8),
(200, 1, 80750.00, 'Hạ Đỏoooo', 80750.00, '', 113, 1),
(201, 1, 120000.00, 'Hạ Đỏ', 120000.00, '', 114, 8),
(202, 1, 120000.00, 'Hạ Đỏ', 120000.00, '', 115, 8),
(203, 1, 120000.00, 'Hạ Đỏ', 120000.00, '', 116, 8),
(204, 1, 120000.00, 'Hạ Đỏ', 120000.00, '', 117, 8),
(205, 1, 120000.00, 'Hạ Đỏ', 120000.00, '', 118, 8),
(206, 1, 120000.00, 'Hạ Đỏ', 120000.00, '', 119, 8),
(207, 2, 240000.00, 'Hạ Đỏ', 120000.00, '', 120, 8),
(208, 1, 80000.00, 'Hạ Đỏ', 80000.00, '', 120, 1),
(209, 1, 76000.00, 'Trốn Lên Mái Nhà Để Khóc - Tặng Kèm Bookmark', 76000.00, '', 121, 5),
(210, 1, 120000.00, 'Hạ Đoooo', 120000.00, '', 122, 8),
(211, 1, 120000.00, 'Hạ Đoooo', 120000.00, '', 123, 8),
(212, 1, 90010.00, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 90010.00, '', 124, 3),
(213, 1, 80000.00, 'Hạ Đoooo', 80000.00, '', 125, 1),
(214, 3, 0.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 0.00, '', 125, 2),
(215, 1, 80000.00, 'Hạ Đoooo', 80000.00, '', 126, 1),
(216, 3, 0.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 0.00, '', 126, 2),
(217, 1, 80000.00, 'Hạ Đoooo', 80000.00, '', 127, 1),
(218, 3, 0.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 0.00, '', 127, 2),
(219, 1, 80000.00, 'Hạ Đoooo', 80000.00, '', 128, 1),
(220, 3, 0.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 0.00, '', 128, 2),
(221, 1, 80000.00, 'Hạ Đoooo', 80000.00, '', 129, 1),
(222, 3, 0.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 0.00, '', 129, 2),
(223, 1, 80000.00, 'Hạ Đoooo', 80000.00, '', 130, 1),
(224, 3, 0.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 0.00, '', 130, 2),
(225, 1, 80000.00, 'Hạ Đoooo', 80000.00, '', 131, 1),
(226, 3, 300000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 100000.00, '', 131, 2),
(227, 1, 80000.00, 'Hạ Đoooo', 80000.00, '', 132, 1),
(228, 3, 300000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 100000.00, '', 132, 2),
(229, 3, 300000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 100000.00, '', 133, 2),
(230, 3, 300000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 100000.00, '', 134, 2),
(231, 1, 90010.00, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 90010.00, '', 135, 3),
(232, 2, 973000.00, 'ポスターコレクション 葬送のフリーレン 1 - Frieren: Beyond Journey\'s End Poster Collection 1', 486500.00, '', 136, 9),
(233, 3, 180000.00, 'Tuổi Thơ Dữ Dội - Tập 1 (Tái Bản 2019)', 60000.00, '', 136, 6),
(234, 3, 300000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 100000.00, '', 137, 2),
(235, 3, 300000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 100000.00, '', 138, 2),
(236, 3, 300000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 100000.00, '', 139, 2),
(237, 3, 270000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 90000.00, '', 140, 2),
(238, 3, 270000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 90000.00, 'Bìa cứng', 141, 2),
(239, 3, 270000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 90000.00, 'Bìa cứng', 142, 2),
(240, 3, 270000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 90000.00, 'Bìa cứng', 143, 2),
(241, 1, 90000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 90000.00, 'Bìa cứng', 144, 2),
(242, 2, 160000.00, 'Hạ Đỏ', 80000.00, 'Bìa cứng', 145, 1),
(243, 1, 20000.00, 'Hạ Đỏ', 20000.00, 'Bìa mềm', 145, 8),
(244, 5, 100000.00, 'Hạ Đỏ', 20000.00, 'Bìa mềm', 146, 8),
(245, 1, 90000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 90000.00, 'Bìa mềm', 147, 2),
(246, 1, 90000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 90000.00, 'Bìa mềm', 148, 2),
(247, 1, 90000.00, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 90000.00, 'Bìa mềm', 149, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chờ xác nhận', '2025-02-17 10:07:39', '2025-02-17 10:07:39'),
(2, 'Đã xác nhận', '2025-02-17 10:07:39', '2025-02-17 10:07:39'),
(3, 'Đang chuẩn bị hàng', '2025-02-17 10:07:39', '2025-02-17 10:07:39'),
(4, 'Đã đóng gói', '2025-02-17 10:07:39', '2025-02-17 10:07:39'),
(5, 'Đang giao hàng', '2025-02-17 10:07:39', '2025-02-17 10:07:39'),
(6, 'Đã giao hàng ', '2025-02-17 10:07:39', '2025-02-17 10:07:39'),
(7, 'Đã hủy', '2025-02-17 10:07:39', '2025-02-17 10:07:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(72, 'App\\Models\\User', 2, 'auth_token', '47e3a5a280affd2d6e72648a320a5f0c26dd617d5ad461c493141835af6bf710', '[\"*\"]', NULL, NULL, '2025-03-19 02:47:06', '2025-03-19 02:47:06'),
(73, 'App\\Models\\User', 2, 'auth_token', '5389350151bc74738265953ca913f8ea01af718e4620d1a183d35937528cfe81', '[\"*\"]', '2025-03-19 03:13:45', NULL, '2025-03-19 03:13:38', '2025-03-19 03:13:45'),
(74, 'App\\Models\\User', 2, 'auth_token', '3657e7cc849b773b455b15dbfa85742e29eb08ccd6746b7160d2a82a6d1bb330', '[\"*\"]', '2025-03-20 17:47:25', NULL, '2025-03-19 03:14:25', '2025-03-20 17:47:25'),
(75, 'App\\Models\\User', 2, 'auth_token', '100c180728e07d9064da85bf14c5cd7463251743e9dbeb8bba5453a0c830f16c', '[\"*\"]', '2025-03-20 20:27:54', NULL, '2025-03-20 17:47:48', '2025-03-20 20:27:54'),
(76, 'App\\Models\\User', 1, 'auth_token', '5170051096606a1e6587ade3d83c971125c0eb3db0cfdd2305686d65297b4ca5', '[\"*\"]', '2025-03-20 20:43:29', NULL, '2025-03-20 20:28:08', '2025-03-20 20:43:29'),
(77, 'App\\Models\\User', 2, 'auth_token', '8f0d1d8df55f9d607a2f5ba18f4880489cd8d8da3b6767d42675dbd6f9ec3646', '[\"*\"]', '2025-03-20 20:45:24', NULL, '2025-03-20 20:45:21', '2025-03-20 20:45:24'),
(78, 'App\\Models\\User', 1, 'auth_token', '2823037f008166bbb24daa947de20b3e8f083352fff9b30f4cca92755401862f', '[\"*\"]', '2025-03-20 20:55:16', NULL, '2025-03-20 20:47:55', '2025-03-20 20:55:16'),
(79, 'App\\Models\\User', 2, 'auth_token', 'ee7e6632f6b34adc5a5ed209cb5a8438b4339de58d59cf9d7dcce2df09258691', '[\"*\"]', '2025-03-20 20:55:30', NULL, '2025-03-20 20:55:26', '2025-03-20 20:55:30'),
(80, 'App\\Models\\User', 1, 'auth_token', '614bb03231d93342098027286fb70b382df2cf54b582f3cd827220f00d2cb40a', '[\"*\"]', '2025-03-24 01:43:36', NULL, '2025-03-20 20:56:04', '2025-03-24 01:43:36'),
(81, 'App\\Models\\User', 1, 'auth_token', 'a3aa1bec29fd7f2422d675453add74111cde05d2b66640196320299048cd7bee', '[\"*\"]', '2025-03-24 02:08:29', NULL, '2025-03-24 02:01:40', '2025-03-24 02:08:29'),
(82, 'App\\Models\\User', 1, 'auth_token', 'fff6be915cc53caaca3d9727aa07ca5aafe75490a54ec2e14283ff51b7f94215', '[\"*\"]', '2025-03-25 17:53:43', NULL, '2025-03-25 17:53:41', '2025-03-25 17:53:43'),
(83, 'App\\Models\\User', 2, 'auth_token', '417fff6ff8b39a643040c5700b634ecfa2750b0216eade409976f220d4d04444', '[\"*\"]', '2025-04-14 00:25:46', NULL, '2025-03-25 19:23:50', '2025-04-14 00:25:46'),
(84, 'App\\Models\\User', 2, 'auth_token', '5dd36098c1c42b968f38aee15887b5959aff249d5cea77af384774df38851045', '[\"*\"]', '2025-03-26 02:15:47', NULL, '2025-03-26 01:28:24', '2025-03-26 02:15:47'),
(85, 'App\\Models\\User', 1, 'auth_token', '62997f40b20215435dbc750b5b5b512dd77b879706cb34490a18afff0bb83b28', '[\"*\"]', '2025-03-27 18:44:43', NULL, '2025-03-27 18:24:16', '2025-03-27 18:44:43'),
(86, 'App\\Models\\User', 1, 'auth_token', '9c1485c11ab86ed189ce07d2ce1e982b2dfaeade4bc36ecc5db45c294ae753bb', '[\"*\"]', '2025-03-27 19:05:22', NULL, '2025-03-27 19:02:40', '2025-03-27 19:05:22'),
(87, 'App\\Models\\User', 1, 'auth_token', '399a38fbbf5b2265cc9aa76b1151cf427bf9f9dbf204bdd1974a7b0044da0f95', '[\"*\"]', '2025-03-27 19:06:33', NULL, '2025-03-27 19:06:30', '2025-03-27 19:06:33'),
(88, 'App\\Models\\User', 1, 'auth_token', 'f648f450a073da1f8d60ea8eabc685c7e273da267264d2caf53c684a783d5a91', '[\"*\"]', '2025-03-27 19:14:05', NULL, '2025-03-27 19:14:02', '2025-03-27 19:14:05'),
(89, 'App\\Models\\User', 1, 'auth_token', '4727450a35a5ce9dc9509c5ed4187577ff065a965b7ee5f52c705863ad303fd5', '[\"*\"]', '2025-03-27 19:17:01', NULL, '2025-03-27 19:15:39', '2025-03-27 19:17:01'),
(90, 'App\\Models\\User', 1, 'auth_token', '32c78a257bbb4a427f2b0ccdf1faf4a18510b3be9cd6ff9bc226ea57d85ee626', '[\"*\"]', '2025-03-28 03:28:06', NULL, '2025-03-27 19:26:27', '2025-03-28 03:28:06'),
(91, 'App\\Models\\User', 1, 'auth_token', '5db007e0ad63f8915ca784b698048f62cf85ddf3146c4d8f7996cd81317c0c62', '[\"*\"]', '2025-03-28 00:39:12', NULL, '2025-03-27 19:51:27', '2025-03-28 00:39:12'),
(92, 'App\\Models\\User', 12, 'auth_token', 'c6e69239ca99932a224b2b75f6b5a6c3a4aaaebfe5374111fdd17e62aed1ee34', '[\"*\"]', NULL, NULL, '2025-03-28 00:48:29', '2025-03-28 00:48:29'),
(93, 'App\\Models\\User', 9, 'auth_token', '302e5b3bb25aee688b2d97fb354bb1bdcd7f0ba54cb9774532580912be0f36c5', '[\"*\"]', '2025-03-28 01:31:23', NULL, '2025-03-28 01:31:21', '2025-03-28 01:31:23'),
(94, 'App\\Models\\User', 1, 'auth_token', '35689dc6540b6115b7de3ede3d04b5b00ef1e4882f18fe3a90b145e9c79323ab', '[\"*\"]', '2025-03-28 01:59:11', NULL, '2025-03-28 01:33:46', '2025-03-28 01:59:11'),
(95, 'App\\Models\\User', 5, 'auth_token', '1f08a1dc30b745e73b94d4861e823c44db8b7c4f7849d4dc64d6b1d2008dff44', '[\"*\"]', '2025-03-28 02:00:36', NULL, '2025-03-28 02:00:33', '2025-03-28 02:00:36'),
(96, 'App\\Models\\User', 1, 'auth_token', '99630fda6132e991e8289ca11d4b037a1e417954d96f3335e869808c7773b14e', '[\"*\"]', '2025-03-28 03:28:08', NULL, '2025-03-28 02:01:58', '2025-03-28 03:28:08'),
(97, 'App\\Models\\User', 7, 'auth_token', '30f650e862ebde2ce49795aa694475b3441aef1fa51270c18a3cc98b741a6eab', '[\"*\"]', '2025-04-02 08:00:16', NULL, '2025-03-28 20:33:39', '2025-04-02 08:00:16'),
(98, 'App\\Models\\User', 1, 'auth_token', '06c64037d30df0e5b8c669444be8032b1ff24a601d4b40b43b0d6ccec6dbddff', '[\"*\"]', '2025-04-03 05:07:50', NULL, '2025-04-03 04:45:06', '2025-04-03 05:07:50'),
(99, 'App\\Models\\User', 1, 'auth_token', '46c08c989c09a927539e62cab616be69d11009f8415d801b28775ffd77aa5426', '[\"*\"]', '2025-04-03 05:12:37', NULL, '2025-04-03 05:09:12', '2025-04-03 05:12:37'),
(100, 'App\\Models\\User', 1, 'auth_token', '5e6de64752aed6607bd2603686605c9ed8a5d63fd117b2f5b7cd29a3bfdacdb3', '[\"*\"]', '2025-04-03 18:16:45', NULL, '2025-04-03 17:53:53', '2025-04-03 18:16:45'),
(101, 'App\\Models\\User', 1, 'auth_token', '13079e744ea06e35e2856a47b0950c8f44ae445a1302fffe18523c36d25f3c12', '[\"*\"]', '2025-04-04 02:22:53', NULL, '2025-04-03 18:19:59', '2025-04-04 02:22:53'),
(102, 'App\\Models\\User', 13, 'auth_token', '723e67da7f8b718fe5d91c0da202c3ae2aacd0184220c4dd0efb614da658247d', '[\"*\"]', NULL, NULL, '2025-04-03 20:06:27', '2025-04-03 20:06:27'),
(103, 'App\\Models\\User', 13, 'auth_token', '6e05d662f4d3487a24e67218eccac1be29579be693b5cb83b603de29ff40a572', '[\"*\"]', '2025-04-03 20:13:29', NULL, '2025-04-03 20:06:35', '2025-04-03 20:13:29'),
(104, 'App\\Models\\User', 13, 'auth_token', '972e9ae670acccaaa47e3fa3478126119de98b34fc124f83fec86fea06a9869c', '[\"*\"]', '2025-04-04 02:47:01', NULL, '2025-04-03 20:15:40', '2025-04-04 02:47:01'),
(105, 'App\\Models\\User', 1, 'auth_token', '22f8b5501c1f4c79b7a3137d946b4f2f8129f68d0836a60691da8d7c8b82e747', '[\"*\"]', '2025-04-04 03:11:21', NULL, '2025-04-04 00:57:35', '2025-04-04 03:11:21'),
(106, 'App\\Models\\User', 13, 'auth_token', '35b938ef0a1475d186ae90afe034bdb1f44d4fe241174a73c4c9b01914d2901f', '[\"*\"]', '2025-04-04 03:17:00', NULL, '2025-04-04 03:00:40', '2025-04-04 03:17:00'),
(107, 'App\\Models\\User', 1, 'auth_token', '6f3611010aee41d4478414f6730c07eb71c7b24b0e1993693dbaacd031811090', '[\"*\"]', '2025-04-08 18:32:32', NULL, '2025-04-08 17:53:05', '2025-04-08 18:32:32'),
(108, 'App\\Models\\User', 13, 'auth_token', '20965d8d8f83f9d47c5ee4abc08ee4d4f0f1c8079523c0984b5ac3cdea4bfe83', '[\"*\"]', '2025-04-13 19:11:07', NULL, '2025-04-08 18:18:02', '2025-04-13 19:11:07'),
(109, 'App\\Models\\User', 1, 'auth_token', '851d2c8db7f009b2256e73bd11954c1562dd73d49d6f04d63abb56cf0df505b1', '[\"*\"]', '2025-04-10 19:23:31', NULL, '2025-04-10 19:06:06', '2025-04-10 19:23:31'),
(110, 'App\\Models\\User', 13, 'auth_token', '23dcdf31b5cc77319a56246299784a617918d5d34404326a4fa5111796d3093f', '[\"*\"]', '2025-04-10 19:23:45', NULL, '2025-04-10 19:23:45', '2025-04-10 19:23:45'),
(111, 'App\\Models\\User', 1, 'auth_token', 'f97c72a2d6c157698447426f1f399c58a6c70540d82461f0b115e212bcd3485c', '[\"*\"]', '2025-04-11 00:03:09', NULL, '2025-04-10 19:25:26', '2025-04-11 00:03:09'),
(112, 'App\\Models\\User', 1, 'auth_token', 'c95f04269e3339f01072da50be7ba70c126c8fde867dcda0be66734ec7c07e0a', '[\"*\"]', '2025-05-03 01:36:10', NULL, '2025-04-10 21:33:32', '2025-05-03 01:36:10'),
(113, 'App\\Models\\User', 13, 'auth_token', '185e895142716f6c8d814e1208530f17847a88fd1b87f041227d9c4584f54378', '[\"*\"]', '2025-04-11 00:18:26', NULL, '2025-04-11 00:03:19', '2025-04-11 00:18:26'),
(114, 'App\\Models\\User', 1, 'auth_token', '26172f9a9afe2f5df8b1f4fb6a249a89674af655d48b8ebb04e4083b123b749c', '[\"*\"]', '2025-04-13 17:53:24', NULL, '2025-04-11 00:48:51', '2025-04-13 17:53:24'),
(115, 'App\\Models\\User', 1, 'auth_token', '837e2d6721846bf97c05b3923fddf9fbf6eb4f3def443bba4f1145901387d433', '[\"*\"]', '2025-04-11 01:35:14', NULL, '2025-04-11 00:56:26', '2025-04-11 01:35:14'),
(116, 'App\\Models\\User', 1, 'auth_token', '558b2e1bef3ab754d11f720bb66762c0f647fa0e6a225ff5ecee2b23244a9f73', '[\"*\"]', '2025-04-23 22:58:36', NULL, '2025-04-11 03:09:21', '2025-04-23 22:58:36'),
(117, 'App\\Models\\User', 13, 'auth_token', '1b2c0f4746d695e035ef1b75a4884fe9cc0b86af266c65d976916f7e824e92ac', '[\"*\"]', '2025-04-13 18:12:25', NULL, '2025-04-13 17:58:11', '2025-04-13 18:12:25'),
(118, 'App\\Models\\User', 13, 'auth_token', '5115463099b12e08af1a2fc99f27b521b365198cfb68f907be9aee08bce99f1c', '[\"*\"]', '2025-04-13 18:26:30', NULL, '2025-04-13 18:12:46', '2025-04-13 18:26:30'),
(119, 'App\\Models\\User', 13, 'auth_token', '283beae4ff147d55106f60bf11e03b12cf974bea9f32c01676a6b4253d230256', '[\"*\"]', '2025-04-13 18:49:35', NULL, '2025-04-13 18:27:00', '2025-04-13 18:49:35'),
(120, 'App\\Models\\User', 13, 'auth_token', 'f7337bb8a6e0e476b5973c605b5ec6da49aae4edc6ee5dc105553cf9e1c93ffe', '[\"*\"]', '2025-04-14 00:02:39', NULL, '2025-04-13 18:36:44', '2025-04-14 00:02:39'),
(121, 'App\\Models\\User', 13, 'auth_token', 'e14873962453a8840adaca1f1a0c47a1f0fa589c27c957eabd63d240f89c3306', '[\"*\"]', '2025-04-13 18:50:44', NULL, '2025-04-13 18:49:46', '2025-04-13 18:50:44'),
(122, 'App\\Models\\User', 13, 'auth_token', '8c6801dc4985f3298d4200bf41256139f116e3bf9e974fd08b4dd5adcf50e7d2', '[\"*\"]', '2025-04-13 19:52:21', NULL, '2025-04-13 18:50:54', '2025-04-13 19:52:21'),
(123, 'App\\Models\\User', 13, 'auth_token', '3db36d2f88c259ef18dd734700232c72d949c73081f837f10609d6ba83f5df35', '[\"*\"]', '2025-04-13 19:31:08', NULL, '2025-04-13 19:30:17', '2025-04-13 19:31:08'),
(124, 'App\\Models\\User', 1, 'auth_token', 'f96f451970fae3f38a1f2f8cca06eec248a284d5f9f3076505d283ffc0564647', '[\"*\"]', '2025-04-13 20:24:46', NULL, '2025-04-13 19:52:34', '2025-04-13 20:24:46'),
(125, 'App\\Models\\User', 13, 'auth_token', 'ffdcab2feaded07f16db5cecf9c9993efca2566a90846aa79e210748f5eba162', '[\"*\"]', '2025-04-13 21:25:55', NULL, '2025-04-13 21:25:52', '2025-04-13 21:25:55'),
(126, 'App\\Models\\User', 14, 'auth_token', '265d3087bff7ea4fcf0b76c4475ae7e0167396447ea95b5918158055c1a25585', '[\"*\"]', NULL, NULL, '2025-04-13 21:27:27', '2025-04-13 21:27:27'),
(127, 'App\\Models\\User', 14, 'auth_token', '57fdceab4111adb4854876cc483999d698cd7d1d62a869d5a7e10310672df2c9', '[\"*\"]', '2025-04-14 01:43:03', NULL, '2025-04-13 21:27:34', '2025-04-14 01:43:03'),
(128, 'App\\Models\\User', 1, 'auth_token', 'c1af26e567905d82993dc2b1170622138a74ad8999394a36300dc92cdc7ee182', '[\"*\"]', '2025-04-26 00:05:17', NULL, '2025-04-14 00:02:54', '2025-04-26 00:05:17'),
(129, 'App\\Models\\User', 1, 'auth_token', '4cece0549add52043eafaa229d8e288acd175c51d8af3efee5b522d4f5f4f51c', '[\"*\"]', '2025-04-14 02:18:35', NULL, '2025-04-14 02:09:47', '2025-04-14 02:18:35'),
(130, 'App\\Models\\User', 13, 'auth_token', 'd82e1e95c0b51e83819d0deaba3c69406df10998a8f354024b2898fb3be75c75', '[\"*\"]', '2025-04-14 03:02:25', NULL, '2025-04-14 02:52:44', '2025-04-14 03:02:25'),
(131, 'App\\Models\\User', 1, 'auth_token', '68081e6abdfdb7f2be93d5aac4281b7d90d028cf0972cf67fe68751b27966ed8', '[\"*\"]', '2025-04-14 03:12:45', NULL, '2025-04-14 03:12:33', '2025-04-14 03:12:45'),
(132, 'App\\Models\\User', 1, 'auth_token', 'b255c5745f586b279d26d0e6cbde402b623bb5afd8ca7c3796bdf6cf5f00b0c0', '[\"*\"]', '2025-04-16 07:33:05', NULL, '2025-04-16 07:32:44', '2025-04-16 07:33:05'),
(133, 'App\\Models\\User', 1, 'auth_token', 'caf2ebb6262e31c03c7276bf8d2614b4598d284bcdac137f02e99bf914d02668', '[\"*\"]', '2025-04-16 09:03:13', NULL, '2025-04-16 09:03:11', '2025-04-16 09:03:13'),
(134, 'App\\Models\\User', 1, 'auth_token', 'f16c69844e16b882398fd15fa1f63c0a7d28b567e004eea6acbc73f74e8a48c5', '[\"*\"]', '2025-04-17 03:12:56', NULL, '2025-04-16 23:51:48', '2025-04-17 03:12:56'),
(135, 'App\\Models\\User', 1, 'auth_token', '92a0f516ecdfff967a61ef14ac7aefc7d8b58dcf069ff04523263a64a1fc769c', '[\"*\"]', '2025-04-22 08:20:30', NULL, '2025-04-17 03:19:47', '2025-04-22 08:20:30'),
(136, 'App\\Models\\User', 13, 'auth_token', '8bc4df7a4a448580cfa3e34cdaafa82f7532d298a52fff2884ceacc5b7089458', '[\"*\"]', '2025-04-22 08:29:58', NULL, '2025-04-22 08:28:45', '2025-04-22 08:29:58'),
(137, 'App\\Models\\User', 13, 'auth_token', '4b8c38e0bb43589f329e5a2e0c74e9ab5540ac524ef34a14392d012496a111c6', '[\"*\"]', '2025-04-22 08:33:14', NULL, '2025-04-22 08:30:03', '2025-04-22 08:33:14'),
(138, 'App\\Models\\User', 13, 'auth_token', '1916eb91f01523e7449e518f87bfef111159f421453c2a8ddeec2c707c20a367', '[\"*\"]', '2025-04-22 08:33:19', NULL, '2025-04-22 08:33:18', '2025-04-22 08:33:19'),
(139, 'App\\Models\\User', 1, 'auth_token', '4e38431a8911e725c1321a43b3680a6c9a0e47c2e696dd050e4e2b3ad1006ae8', '[\"*\"]', '2025-04-22 08:45:25', NULL, '2025-04-22 08:36:08', '2025-04-22 08:45:25'),
(140, 'App\\Models\\User', 1, 'auth_token', '863a3591abfb85b4d1ac8d886dae3cd7964061f2f8117815bd6be0b12e19badf', '[\"*\"]', '2025-04-22 08:47:25', NULL, '2025-04-22 08:46:17', '2025-04-22 08:47:25'),
(141, 'App\\Models\\User', 13, 'auth_token', '666ea4d318c5cdee73e1bbea46ea1b9206860e72b9f1052ee0f4a543b2374d47', '[\"*\"]', '2025-04-22 08:55:10', NULL, '2025-04-22 08:47:26', '2025-04-22 08:55:10'),
(142, 'App\\Models\\User', 13, 'auth_token', '089c7cf1c6440134d9b914dcec000b1fd6351314babb8a7aa7c179c32043cf7c', '[\"*\"]', '2025-04-22 08:53:38', NULL, '2025-04-22 08:52:48', '2025-04-22 08:53:38'),
(143, 'App\\Models\\User', 13, 'auth_token', '880dd9783f0cb5277ad51c47aef19adf2bd63ceced1f8b78b300458a36b3abc0', '[\"*\"]', '2025-04-22 08:58:53', NULL, '2025-04-22 08:55:15', '2025-04-22 08:58:53'),
(144, 'App\\Models\\User', 13, 'auth_token', '7164047177329cef59bed926a00c6e85b1873ce8a8bbe3933834efa3bbc01876', '[\"*\"]', '2025-04-22 08:59:09', NULL, '2025-04-22 08:59:08', '2025-04-22 08:59:09'),
(145, 'App\\Models\\User', 13, 'auth_token', 'be9eff8ddc0a2a55d199b1b15d5bd2f3f855cd4fd82007da1de740be67eb737b', '[\"*\"]', '2025-04-22 09:40:46', NULL, '2025-04-22 09:06:04', '2025-04-22 09:40:46'),
(146, 'App\\Models\\User', 13, 'auth_token', '3f95f73e47dd691a2b943d565e420d833d79556627af86231146e46fe39bcac2', '[\"*\"]', '2025-04-22 09:39:16', NULL, '2025-04-22 09:06:45', '2025-04-22 09:39:16'),
(147, 'App\\Models\\User', 13, 'auth_token', '682be33ae36cf4ce8d4010044e5f6dfe191a906a7bec545838a9b5b1de33c181', '[\"*\"]', '2025-04-23 21:39:14', NULL, '2025-04-22 09:39:21', '2025-04-23 21:39:14'),
(148, 'App\\Models\\User', 13, 'auth_token', '488ef686793ded854d6a67a9c51fa1fb9ae68f21e95bd559092ac50c3bc8d68b', '[\"*\"]', NULL, NULL, '2025-04-22 09:40:59', '2025-04-22 09:40:59'),
(149, 'App\\Models\\User', 16, 'auth_token', '030b91f75d7d1e52a25f26048e442ed0e038fd3f13b9620555ed416bc49f4f02', '[\"*\"]', NULL, NULL, '2025-04-23 21:42:12', '2025-04-23 21:42:12'),
(150, 'App\\Models\\User', 16, 'auth_token', 'd23a1e6a9837976bd6c3d71cbeb9289ee5d10f278066851b8aa6f0b56e3ab7fd', '[\"*\"]', '2025-04-24 02:05:51', NULL, '2025-04-23 21:42:19', '2025-04-24 02:05:51'),
(151, 'App\\Models\\User', 1, 'auth_token', 'e56b4a5c152d3eb7731d625a00e1224e2f63a575afedcddd77ee79cc711dace5', '[\"*\"]', '2025-04-24 06:17:43', NULL, '2025-04-23 22:51:16', '2025-04-24 06:17:43'),
(152, 'App\\Models\\User', 1, 'auth_token', 'b9c6792a61e46c6d7690c97157d3cbc79d1a65bca90217049474d5316243d370', '[\"*\"]', '2025-05-03 02:24:21', NULL, '2025-04-23 22:56:24', '2025-05-03 02:24:21'),
(153, 'App\\Models\\User', 1, 'auth_token', '22d73bed462e87c3fd01fad05e1ddce0cd71f0ab372b3db8f6d5ccbf31677d49', '[\"*\"]', '2025-04-24 02:15:25', NULL, '2025-04-24 02:06:05', '2025-04-24 02:15:25'),
(154, 'App\\Models\\User', 16, 'auth_token', 'a39657c33c9c01b771ba893fb1f9bfbd6dff9aa465636aa876f0effa34c12f99', '[\"*\"]', '2025-04-26 08:32:23', NULL, '2025-04-24 02:16:38', '2025-04-26 08:32:23'),
(155, 'App\\Models\\User', 1, 'auth_token', '1a09fb859bf94719a75fe06e980980bdaa82801b8325dda6a1f66bb986d30ca5', '[\"*\"]', '2025-04-24 07:23:08', NULL, '2025-04-24 03:33:51', '2025-04-24 07:23:08'),
(156, 'App\\Models\\User', 16, 'auth_token', '2224df8f856ba974377121aa04765302ef102eadcc9b05706a72dc03cb297e32', '[\"*\"]', '2025-04-24 06:20:54', NULL, '2025-04-24 06:18:44', '2025-04-24 06:20:54'),
(157, 'App\\Models\\User', 16, 'auth_token', '7927404147af7338bf0dbf75b133a7aded79b402a7c7b596c31ba30cc3b0722b', '[\"*\"]', '2025-04-25 01:54:26', NULL, '2025-04-24 06:59:35', '2025-04-25 01:54:26'),
(158, 'App\\Models\\User', 1, 'auth_token', '7750be28a2365f2209cd7e992fa20b49251dffbb8a9de355e10c4e432d42a86c', '[\"*\"]', '2025-05-04 21:50:07', NULL, '2025-04-25 01:57:02', '2025-05-04 21:50:07'),
(159, 'App\\Models\\User', 16, 'auth_token', '5fd24b8e97105d351b287bf17e126a0b925a7a534e5e6b556c8001fcce678c26', '[\"*\"]', '2025-04-25 07:46:11', NULL, '2025-04-25 04:59:18', '2025-04-25 07:46:11'),
(160, 'App\\Models\\User', 13, 'auth_token', 'c065f549fc6744bf2680a95aff2d1e8e2539cde1838dd6f5c175e4382ec97fb2', '[\"*\"]', '2025-05-03 02:23:31', NULL, '2025-04-26 00:19:14', '2025-05-03 02:23:31'),
(161, 'App\\Models\\User', 1, 'auth_token', '13486d4723c7a11ba68f12cd9a805b040a649aa2cc59fef47a29e1926fdb185f', '[\"*\"]', '2025-04-28 05:48:29', NULL, '2025-04-26 08:32:35', '2025-04-28 05:48:29'),
(162, 'App\\Models\\User', 16, 'auth_token', 'f3a508a3d42722900e0669eaee41e09f7f147d99b4be9f91671c1df3cd25a7c0', '[\"*\"]', '2025-04-28 06:03:15', NULL, '2025-04-28 05:49:53', '2025-04-28 06:03:15'),
(163, 'App\\Models\\User', 1, 'auth_token', 'de043f4e0d192724ecee8b19faf002ef10fcfc23b55adcf918e55fe24a3f155f', '[\"*\"]', '2025-04-28 06:55:28', NULL, '2025-04-28 05:51:06', '2025-04-28 06:55:28'),
(164, 'App\\Models\\User', 16, 'auth_token', 'ea70f9e4c8b3f17f1f9980ecfb3f9dcc5f7781f64fb12bd91dbc6d5d274bdba4', '[\"*\"]', '2025-04-28 06:07:06', NULL, '2025-04-28 06:07:06', '2025-04-28 06:07:06'),
(165, 'App\\Models\\User', 16, 'auth_token', '2ded0cdf97e6022b034e33ab98bace1a72578972bcf7e896fc0db779ff98bb80', '[\"*\"]', '2025-04-28 06:18:28', NULL, '2025-04-28 06:10:14', '2025-04-28 06:18:28'),
(166, 'App\\Models\\User', 16, 'auth_token', 'f9dc3e6a91ed05bacc7845966f5e90ab147b74c77507f1eeb49083be58ab5418', '[\"*\"]', '2025-04-28 06:40:39', NULL, '2025-04-28 06:29:37', '2025-04-28 06:40:39'),
(167, 'App\\Models\\User', 16, 'auth_token', 'b16a7f1f99152118a3f1c8ef0615430c557c23dbd34ba249641bd9d3fd4c278e', '[\"*\"]', '2025-04-28 06:55:09', NULL, '2025-04-28 06:45:42', '2025-04-28 06:55:09'),
(168, 'App\\Models\\User', 16, 'auth_token', '5ed93f6eadd272881d8eb9d7b737fdedf47e0578c0d301d7be4dbcc7187d308e', '[\"*\"]', '2025-05-03 01:06:33', NULL, '2025-05-02 23:01:55', '2025-05-03 01:06:33'),
(169, 'App\\Models\\User', 1, 'auth_token', '311c4cd9253e649fe166997307825b995929cbc8947104de385b5c3df8a91818', '[\"*\"]', '2025-05-04 00:07:18', NULL, '2025-05-02 23:05:30', '2025-05-04 00:07:18'),
(170, 'App\\Models\\User', 16, 'auth_token', '48ffbac43f8277af201b77bf4ffbce47ae87b8041c33a91d31689f66f3d9b68f', '[\"*\"]', '2025-05-03 01:37:30', NULL, '2025-05-03 01:11:50', '2025-05-03 01:37:30'),
(171, 'App\\Models\\User', 13, 'auth_token', '25b81ddb2d4bc00f5d2a107e3d3d9fd4a85d5612503217f635faa1efa6f31ad2', '[\"*\"]', '2025-05-03 01:32:11', NULL, '2025-05-03 01:31:55', '2025-05-03 01:32:11'),
(172, 'App\\Models\\User', 1, 'auth_token', '1d1ef23eccbe7506bfb17ff09344dbeb815051c88245fd825a94e48fc581785c', '[\"*\"]', '2025-05-03 01:33:07', NULL, '2025-05-03 01:32:38', '2025-05-03 01:33:07'),
(173, 'App\\Models\\User', 16, 'auth_token', '32313ae6ff284c10047659a609ae513d973b5c4878af42f45e811bd7a6a5b69c', '[\"*\"]', '2025-05-03 06:23:03', NULL, '2025-05-03 02:28:54', '2025-05-03 06:23:03'),
(174, 'App\\Models\\User', 16, 'auth_token', '8b81956048cb594237698bc49cb949806a098def55c214aba66b00ebe476b5bc', '[\"*\"]', '2025-05-03 02:30:14', NULL, '2025-05-03 02:29:56', '2025-05-03 02:30:14'),
(175, 'App\\Models\\User', 16, 'auth_token', '750e083b38183b582026f833d018952018a31f3bc9a0888a15e28ac5a67b28cb', '[\"*\"]', '2025-05-03 06:23:55', NULL, '2025-05-03 06:23:35', '2025-05-03 06:23:55'),
(176, 'App\\Models\\User', 16, 'auth_token', '171978cb91ed19cabebc38330a76c5c74d0877a117a0fca29ebfa0746f50bf6a', '[\"*\"]', '2025-05-03 08:02:17', NULL, '2025-05-03 07:59:22', '2025-05-03 08:02:17'),
(177, 'App\\Models\\User', 16, 'auth_token', '808f712b01102a976a1263bf2d2d32b83cc876d20469d15ee66eeba0997daa58', '[\"*\"]', '2025-05-03 08:03:36', NULL, '2025-05-03 08:03:35', '2025-05-03 08:03:36'),
(178, 'App\\Models\\User', 16, 'auth_token', '5ed95d20122b57f33da7d7bb5a4aa00832786fa417e47a1de35b9dab5e698132', '[\"*\"]', '2025-05-03 08:05:29', NULL, '2025-05-03 08:05:29', '2025-05-03 08:05:29'),
(179, 'App\\Models\\User', 16, 'auth_token', '09ac9193f5cd80cdc271ce4b7e7cc6c0b5e89b59b6ec072af3a238510490c2c7', '[\"*\"]', '2025-05-03 08:06:51', NULL, '2025-05-03 08:06:50', '2025-05-03 08:06:51'),
(180, 'App\\Models\\User', 16, 'auth_token', 'dd3c00fea5b06a7d1b0ce581bdd218bd5dc2df0bb40984bb2aaec0cb22b3d7dc', '[\"*\"]', '2025-05-03 08:10:41', NULL, '2025-05-03 08:10:11', '2025-05-03 08:10:41'),
(181, 'App\\Models\\User', 16, 'auth_token', 'f21afb13f86f7bb6be2f54fb8d15fdd47a34a2d3ec8f21fd1ba7b0442a3dc95a', '[\"*\"]', '2025-05-03 08:11:32', NULL, '2025-05-03 08:11:31', '2025-05-03 08:11:32'),
(182, 'App\\Models\\User', 16, 'auth_token', '2f7a464471e72ee18389fe6b4981877ff7d1e5cd63cd8c6c007a68c548b90312', '[\"*\"]', '2025-05-03 08:27:49', NULL, '2025-05-03 08:24:12', '2025-05-03 08:27:49'),
(183, 'App\\Models\\User', 16, 'auth_token', 'd63bd19c3a7c4b46c99479c8dac5a4a9fe59f6d91dac2b4b79de2fc14c0bd96e', '[\"*\"]', '2025-05-04 07:56:58', NULL, '2025-05-03 08:59:55', '2025-05-04 07:56:58'),
(184, 'App\\Models\\User', 1, 'auth_token', '2ddf233f62d7bdd450d5e95d67ceebc3fcaf456a81e03627853457d4d25067d2', '[\"*\"]', '2025-05-04 00:19:31', NULL, '2025-05-03 23:49:37', '2025-05-04 00:19:31'),
(185, 'App\\Models\\User', 16, 'auth_token', 'd39d2833343e232814c135f1f025f8b946c99761a9c0c216fcb2d62a12be5625', '[\"*\"]', '2025-05-04 08:01:14', NULL, '2025-05-04 08:00:00', '2025-05-04 08:01:14'),
(186, 'App\\Models\\User', 1, 'auth_token', 'e9176b3b42b88d74ee38bdc24694e21f773e098ec25cd39bd55056b87e0dd585', '[\"*\"]', '2025-05-04 08:02:52', NULL, '2025-05-04 08:01:32', '2025-05-04 08:02:52'),
(187, 'App\\Models\\User', 16, 'auth_token', '8b0bc0148cae4bcd589332ef5e4caabd3c12cd188b61f297f7e3afa327691699', '[\"*\"]', '2025-05-04 09:09:12', NULL, '2025-05-04 08:44:37', '2025-05-04 09:09:12'),
(188, 'App\\Models\\User', 1, 'auth_token', 'fc3bbc45927b379fab8142222d27aafbe33b83241602a4936c82ce1c40c023fa', '[\"*\"]', '2025-05-04 09:56:02', NULL, '2025-05-04 08:48:59', '2025-05-04 09:56:02'),
(189, 'App\\Models\\User', 1, 'auth_token', '3d8effcffa6b977dd03f2bd69d9a2de9d4a12a9b59fd14735f12cfdac1aef536', '[\"*\"]', '2025-05-04 20:26:23', NULL, '2025-05-04 08:51:44', '2025-05-04 20:26:23'),
(190, 'App\\Models\\User', 16, 'auth_token', '2695c1f9a3914d9b85bd32465434c21f33aa6d22e3ed4537d3aa4ccd561cdc30', '[\"*\"]', '2025-05-04 09:23:47', NULL, '2025-05-04 09:15:31', '2025-05-04 09:23:47'),
(191, 'App\\Models\\User', 16, 'auth_token', 'fb0b8a7b5aa1572f1008d92b2814f7109b26f6b39d8c100a8fd6ff6cb754151c', '[\"*\"]', '2025-05-04 09:50:24', NULL, '2025-05-04 09:25:08', '2025-05-04 09:50:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `supplier_name` varchar(150) NOT NULL,
  `published_year` varchar(50) NOT NULL,
  `book_count` varchar(50) NOT NULL,
  `author_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('in_stock','out_stock') NOT NULL DEFAULT 'in_stock',
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 là hoạt động, 1 là khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `code`, `title`, `image`, `supplier_name`, `published_year`, `book_count`, `author_id`, `publisher_id`, `description`, `language_id`, `category_id`, `created_at`, `updated_at`, `status`, `del_flg`) VALUES
(135, 'TBM-129384', 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 'uploads/ZFKm9upS2mVC6Q8La5iv9z5xGSsHZPLnFqgKOGfU.jpg', 'Công Ty Cổ Phần Time Books', '2022', '123', 11, 5, 'Thỏ Bảy Màu là fanpage sở hữu hơn 2,6tr lượt thích trên mạng xã hội. Với hình tượng nhân vật thú vị cùng phong cách sáng tạo độc đáo, Thỏ bảy màu vẫn luôn là thu hút được số lượng lớn người quan tâm thể hiện qua nhiều bài viết với hàng chục nghìn lượt like và share.\r\n\r\nThỏ Bảy Màu là một nhân vật hư cấu chẳng còn xa lạ gì với anh em dùng mạng xã hội với slogan “Nghe lời Thỏ, kiếp này coi như bỏ!”.\r\n\r\nThỏ Bảy Màu đơn giản chỉ là một con thỏ trắng với sự dở hơi, ngang ngược nhưng đáng yêu vô cùng tận. Nó luôn nghĩ rằng mình không có cuộc sống và không có bạn bè. Tuy nhiên, Thỏ lại chẳng bao giờ thấy cô đơn vì đến cô đơn cũng bỏ nó mà đi.\r\n\r\nCuốn sách là những mẩu chuyện nhỏ được ghi lại bằng tranh xoay quanh Thỏ Bảy Màu và những người nghĩ nó là bạn. Những mẩu chuyện được truyền tải rất “teen” đậm chất hài hước, châm biếm qua sự sáng tạo không kém phần “mặn mà” của tác giả càng trở nên độc đáo và thu hút.\r\n\r\nNếu một ngày bạn lỡ cảm thấy buồn thì hãy đọc cuốn sách này để biết thế nào là cười sảng nha!', 1, 5, '2025-03-06 12:56:54', '2025-04-23 22:58:17', 'in_stock', 0),
(137, 'NNA-HD-982374', 'Hạ Đỏ', 'uploads/5JKm9yJ8JOrglhCxBWWPjfMNgwN1YMI5gJUX1FyH.jpg', 'Nhà xuất bản trẻ', '2022', '184', 1, 2, 'Hạ đỏ là một truyện dài của nhà văn Nguyễn Nhật Ánh, xuất bản năm 1991. Là một trong một loạt tác phẩm viết về tình yêu tuổi mới lớn của tác giả, truyện đưa người đọc đi từ những tháng ngày \"thơ ngây\" đến những ngày tháng sầu mộng của Chương, một cậu thiếu niên mới bước vào tuổi biết yêu.', 1, 5, '2025-03-08 02:34:02', '2025-05-04 20:30:54', 'in_stock', 0),
(138, 'NNA-TTHVTCX-092384', 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 'uploads/VHwhsqSLsuTOhGT1l9wz7NSpeM8a7rDjR8ubiR87.jpg', 'NXB trẻ', '2023', '378', 1, 2, 'Tôi thấy hoa vàng trên cỏ xanh là một tiểu thuyết dành cho thanh thiếu niên của nhà văn Nguyễn Nhật Ánh, xuất bản lần đầu tại Việt Nam vào ngày 9 tháng 12 năm 2010 bởi Nhà xuất bản Trẻ với phần tranh minh họa do Đỗ Hoàng Tường thực hiện.', 1, 5, '2025-03-20 17:53:40', '2025-05-04 20:30:54', 'in_stock', 0),
(139, 'NBTN-325', 'Nếu Biết Trăm Năm Là Hữu Hạn - Ấn Bản Kỉ Niệm 10 Năm Xuất Bản (Tái Bản 2024)', 'uploads/3tIn7x8Fn39un3vCqmluXmwQI2SKUnLFQasSuPsF.jpg', 'Cty Bán Lẻ Phương Nam', '2024', '	 263', 12, 6, 'Nếu Biết Trăm Năm Là Hữu Hạn là tập hợp 40 bài viết nhẹ nhàng nhưng sâu sắc, giàu cảm xúc từ chuyên mục Cảm thức của Bán nguyệt san Sinh Viên Việt Nam. Cuốn sách dẫn dắt người đọc đi sâu vào những cảm nhận về cuộc đời, tình yêu, tình bạn và sự thành bại, đặt ra những câu hỏi mà ai cũng từng nghĩ đến nhưng ít ai dám đối diện:\r\n\r\nChúng ta đang sống hay chỉ đang tồn tại?\r\n\r\nHạnh phúc thực sự nằm ở đâu?\r\n\r\nĐiều gì sẽ khiến chúng ta không hối tiếc khi nhìn lại?\r\n\r\nVới giọng văn dung dị, thân mật, tác giả dễ dàng chạm đến trái tim người đọc, khiến ta như đang lắng nghe một người bạn tâm sự. Những câu chuyện giản dị nhưng chứa nhiều tầng cảm xúc: hoài niệm, sâu sắc, chân thành - gợi mở những suy ngẫm mới mẻ về giá trị của từng khoảnh khắc trong cuộc đời.\r\n\r\nCuốn sách không chỉ là một tác phẩm văn học mà còn là một lời nhắc nhở nhẹ nhàng: Thời gian là hữu hạn, hãy sống sao cho xứng đáng!', 1, 7, '2025-04-03 04:50:51', '2025-04-09 01:30:21', 'in_stock', 0),
(140, 'TLMN-4234', 'Trốn Lên Mái Nhà Để Khóc - Tặng Kèm Bookmark', 'uploads/epKFl7ZSS0kdZ1ra5NDjhbh45MNBHeb8NcXjMhPD.jpg', 'Skybooks', '	 2023', '208', 13, 5, '\"Có những ngày chẳng ai hiểu mình, chẳng ai cần mình, chẳng ai thương mình. Và những ngày đó, mái nhà là nơi duy nhất tôi thấy an toàn.\"\r\n\r\n\"Trốn Lên Mái Nhà Để Khóc\" không chỉ là câu chuyện của riêng tác giả, mà còn là những mảnh ghép ký ức của mỗi người. Một cuốn sách dành cho những trái tim nhạy cảm, cho những ai từng giấu nước mắt sau nụ cười, từng thu mình vào một góc chỉ để đối diện với chính mình.', 1, 7, '2025-04-03 04:55:36', '2025-04-28 05:51:12', 'in_stock', 0),
(141, 'TTDD-1653', 'Tuổi Thơ Dữ Dội - Tập 1 (Tái Bản 2019)', 'uploads/1T8SffUu6bGwZoAyCPc4bTev0XapFA9lhuWRokQK.jpg', 'Nhà Xuất Bản Kim Đồng', '2019', '400', 14, 4, '“Tuổi Thơ Dữ Dội” là một câu chuyện hay, cảm động viết về tuổi thơ. Sách dày 404 trang mà người đọc không bao giờ muốn ngừng lại, bị lôi cuốn vì những nhân vật ngây thơ có, khôn ranh có, anh hùng có, vì những sự việc khi thì ly kỳ, khi thì hài hước, khi thì gây xúc động đến ứa nước mắt...', 1, 5, '2025-04-03 05:05:19', '2025-04-10 19:17:11', 'in_stock', 0),
(142, 'TTDD-2534', 'Tuổi Thơ Dữ Dội - Tập 2 (Tái Bản 2019)', 'uploads/0vsUc8jI2o7cS53fwOzYsp01FDWey8ZoCkWKsNPj.webp', 'Nhà Xuất Bản Kim Đồng', '2019', '400', 14, 4, '“Tuổi Thơ Dữ Dội” là một câu chuyện hay, cảm động viết về tuổi thơ. Sách dày 404 trang mà người đọc không bao giờ muốn ngừng lại, bị lôi cuốn vì những nhân vật ngây thơ có, khôn ranh có, anh hùng có, vì những sự việc khi thì ly kỳ, khi thì hài hước, khi thì gây xúc động đến ứa nước mắt...', 1, 5, '2025-04-03 05:10:44', '2025-05-04 21:39:33', 'in_stock', 0),
(143, '9784099431358', 'ポスターコレクション 葬送のフリーレン 1 - Frieren: Beyond Journey\'s End Poster Collection 1', 'uploads/kmvvouAg9EwB94SfFdcX9MTO2SpSzucSJGdvKrkJ.webp', 'Shogakukan', '2023', '180', 1, 2, 'ポスターコレクション 葬送のフリーレン 1 - Poster Collection: Frieren: Beyond Journey\'s End 1\r\n\r\n『葬送のフリーレン』美麗ポスター第1弾!\r\n\r\nマンガ大賞&TVアニメ化で話題沸騰の超人気作『葬送のフリーレン』のポスターがついに登場!\r\n\r\n第1弾はコミックス第1巻のカバーイラストから線画データを使い、\r\n\r\n豪華ホログラム仕様で、ファンタジックかつダイナミックなデザインとなりました。\r\n\r\nB2(515×728mm)のビッグサイズ、専用輸送箱に入れてお届けします!\r\n\r\n【編集担当からのおすすめ情報】\r\n\r\n『フリーレン』のポスターを熱望する読者の皆様からの声にお応えする形で、原作絵柄のポスターを制作することになりました!\r\n\r\n部屋やオフィスに飾っていただければ、日々の生活の中で、\r\n\r\n『フリーレン』の世界観を身近に感じていただけること間違いなしです!\r\n\r\nアートディレクションは数々の映画ポスターを手掛けるデザイナー・大島依提亜氏', 2, 2, '2025-04-11 01:33:25', '2025-05-04 21:38:59', 'in_stock', 0),
(145, '8935244884920', 'Thám Tử Lừng Danh Conan - Tập 2 (Tái Bản 2023)', 'uploads/3MAlHMfmhD0L4H1UQLg8k0wUwjJgTkTeY8jz2Kip.webp', 'Nhà Xuất Bản Kim Đồng', '2023', '176', 2, 4, 'Thám Tử Lừng Danh Conan - Tập 2\r\n\r\nConan đã quyết định ở nhờ tại văn phòng thám tử Kogoro, bố của Mori Ran - bạn gái cậu, để lần theo tung tích tổ chức bí ẩn kia. Nhằm tránh con mắt người đời, hàng ngày cậu đến trường như một học sinh cấp 1 bình thường. Và với tài suy luận lừng danh của mình, cậu vẫn đứng đằng sau ông bác thám tử \"gà mờ\" Mori Kogoro phá giải những vụ án hóc búa một cách tài tình!!', 1, 5, '2025-05-04 21:41:53', '2025-05-04 21:44:59', 'in_stock', 0),
(146, '8935244884913', 'Thám Tử Lừng Danh Conan - Tập 1 (Tái Bản 2023)', 'uploads/sWqr4SDDiiDTOT1GfqbAgiIvygT7NrcsFgSYsPvq.webp', 'Nhà Xuất Bản Kim Đồng', '2023', '184', 2, 4, 'Thám Tử Lừng Danh Conan - Tập 1\r\n\r\nKudo Shinichi là một cậu thám tử học sinh năng nổ với biệt tài suy luận có thể sánh ngang với Sherlock Holmes! Một ngày nọ, khi mải đuổi theo những kẻ khả nghi, cậu đã bị chúng cho uống một loại thuốc kì lạ khiến cho cơ thể bị teo nhỏ. Vậy là một thám tử tí hon xuất hiện với cái tên giả: Edogawa Conan!!', 1, 5, '2025-05-04 21:44:08', '2025-05-04 21:45:39', 'in_stock', 0),
(147, '8935244884937', 'Thám Tử Lừng Danh Conan - Tập 3 (Tái Bản 2023)', 'uploads/fpr4laz29xtzJM4mlMr1kM4Xg6LJ4bl1xIr4R3tX.webp', 'Nhà Xuất Bản Kim Đồng', '2023', '176', 2, 4, 'Thám Tử Lừng Danh Conan - Tập 3\r\n\r\nMột học sinh cấp 3 bỗng chốc biến thành cậu bé cấp 1!! Mọi việc trở nên khó khăn, nhưng dòng máu thám tử trong tôi vẫn sục sôi, giúp tôi tiếp tục chinh phục những vụ án mới!! Nhưng bạn biết không, để giữ kín thân phận của mình tôi đã phải khổ sở lắm đó!!\r\n\r\nTôi là: EDOGAWA CONAN - Thám tử nhí lừng danh!!', 1, 5, '2025-05-04 21:46:31', '2025-05-04 21:47:21', 'in_stock', 0),
(148, '8935244887037', 'Shin - Cậu Bé Bút Chì - Truyện Dài - Tập 1 - Cuộc Giao Tranh Thời Chiến Quốc (Tái Bản 2023)', 'uploads/EdQ1ZPguDrT7VWg7N8TeyMqroAKMhR4syTTXW2HK.webp', 'Nhà Xuất Bản Kim Đồng', '2023', '194', 2, 4, 'Shin - Cậu Bé Bút Chì Truyện Dài - Tập 1: Cuộc Giao Tranh Thời Chiến Quốc\r\n\r\nVới tài năng kể chuyện hấp dẫn, tác giả đã biến các trang sách của mình thành những sân chơi ngập tràn tiếng cười của những cô bé, cậu bé hồn nhiên và một thế giới tuổi thơ đa sắc màu. Những bài học giáo dục nhẹ nhàng, thấm thía cũng được lồng ghép một cách khéo léo trong từng tình huống truyện. Có thể Shin là một cậu bé cá tính, hiếu động. Có thể những trò tinh nghịch của Shin đôi khi quá trớn, chẳng chừa một ai. Nhưng sau những \"sự cố\" do Shin gây ra, người lớn thấy mình cần \"quan tâm\" đến trẻ con nhiều hơn nữa, các bạn đọc nhỏ tuổi chắc hẳn cũng được dịp nhìn nhận lại bản thân, để phân biệt điều tốt điều xấu trong cuộc sống.', 1, 5, '2025-05-04 21:48:54', '2025-05-04 21:50:05', 'in_stock', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_genres`
--

CREATE TABLE `product_genres` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_genres`
--

INSERT INTO `product_genres` (`id`, `product_id`, `genre_id`) VALUES
(68, 135, 1),
(71, 135, 2),
(72, 137, 1),
(73, 143, 1),
(74, 145, 12),
(75, 146, 12),
(76, 147, 12),
(77, 148, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `promotion` double(10,2) DEFAULT NULL,
  `cover_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 là hoạt động, 1 là khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `quantity`, `price`, `promotion`, `cover_id`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 137, 998, 95000.00, 80000.00, 1, '2025-03-27 20:50:17', '2025-05-04 20:30:54', 0),
(2, 135, 63, 100000.00, 90000.00, 2, '2025-04-01 09:48:31', '2025-05-04 20:06:15', 0),
(3, 138, 999, 130000.00, 90010.00, 2, '2025-04-02 07:58:33', '2025-05-04 20:30:54', 0),
(4, 139, 0, 159000.00, 135150.00, 2, '2025-04-03 04:52:33', '2025-04-03 19:30:07', 0),
(5, 140, 103, 95000.00, 76000.00, 2, '2025-04-03 04:57:29', '2025-04-28 05:51:12', 0),
(6, 141, 33330, 80000.00, 60000.00, 2, '2025-04-03 05:07:39', '2025-04-28 06:35:19', 0),
(7, 142, 2222, 80000.00, 600000.00, 2, '2025-04-03 05:11:10', '2025-04-28 05:51:36', 0),
(8, 137, 995, 40000.00, 20000.00, 2, '2025-04-03 18:31:07', '2025-05-04 20:30:54', 0),
(9, 143, 998, 608000.00, 486500.00, 1, '2025-04-11 01:35:14', '2025-04-28 13:53:13', 0),
(14, 145, 1000, 25000.00, 23750.00, 2, '2025-05-04 21:42:17', '2025-05-04 21:42:17', 0),
(15, 146, 1000, 25000.00, 23750.00, 2, '2025-05-04 21:44:35', '2025-05-04 21:44:35', 0),
(16, 147, 1000, 25000.00, 23750.00, 2, '2025-05-04 21:46:53', '2025-05-04 21:46:53', 0),
(17, 148, 1000, 25000.00, 23751.00, 2, '2025-05-04 21:49:26', '2025-05-04 21:49:26', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 là hoạt động, 1 là khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`, `del_flg`) VALUES
(2, 'Nhà xuất bản Trẻ', '2025-02-17 00:25:52', '2025-03-20 19:08:48', 0),
(3, 'Nhà xuất bản Hội Nhà văn', '2025-02-17 00:27:41', '2025-02-17 00:27:41', 0),
(4, 'Nhà xuất bản Kim Đồng', '2025-02-17 00:27:49', '2025-02-17 00:27:49', 0),
(5, 'Dân Trí', '2025-03-20 20:08:53', '2025-03-20 20:08:53', 0),
(6, 'Thế Giới', '2025-04-03 04:53:03', '2025-04-03 04:53:03', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 là hoạt động, 1 là khóa',
  `status` tinyint(11) NOT NULL DEFAULT 0 COMMENT '0: active, 1: inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `review`, `user_id`, `product_id`, `created_at`, `updated_at`, `del_flg`, `status`) VALUES
(1, 1, 'Hàng xấu vãi ra í', 1, 137, '2025-03-13 19:13:24', '2025-03-27 21:34:02', 0, 0),
(2, 1, 'Hàng xấu vãi ra í', 2, 137, '2025-03-13 19:15:48', '2025-03-27 21:41:07', 0, 0),
(3, 1, 'Hàng xấu vãi ra í', 6, 137, '2025-03-13 23:39:14', '2025-03-27 21:55:36', 0, 0),
(5, 1, 'Hàng xấu vãi ra í', 6, 137, '2025-03-13 23:39:16', '2025-04-24 10:47:26', 0, 0),
(7, 4, 'sách này đọc hay', 1, 137, '2025-04-10 19:10:36', '2025-04-10 19:10:36', 0, 0),
(8, 5, 'Hàng này oce đấy, chất lượng đấy', 1, 139, '2025-04-10 21:45:20', '2025-04-24 10:47:22', 0, 0),
(9, 3, 'Hàng này oce đấy, chất lượng đấy', 1, 139, '2025-04-10 21:45:27', '2025-04-24 03:48:20', 1, 0),
(10, 4, 'sách hay wa', 16, 137, '2025-05-03 08:27:27', '2025-05-03 08:27:27', 0, 0),
(11, 3, 'asad', 16, 143, '2025-05-03 09:00:14', '2025-05-03 09:00:14', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `role` enum('s.admin','admin','client') NOT NULL DEFAULT 'client',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 là hoạt động, 1 là khóa',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `failed_attempts` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `email`, `password`, `avatar`, `phone`, `address`, `birth_date`, `role`, `created_at`, `updated_at`, `del_flg`, `status`, `failed_attempts`) VALUES
(1, 's.admin', 'Supper Admin', 'sadmin@gmail.com', '$2y$12$MjdKb.P7jF30Jo08C45PIusaDnZm.P00CHIRFo096M4yWxSpXbevC', 'avatars/e2c4Hm2JlplCnq5QLdiknAAuD4RfHghNVpac0WjX.jpg', '0345651932', 'Hà Nội, Tây Hồ, Nhật Tân', '2004-12-07', 's.admin', '2025-03-13 18:39:56', '2025-05-04 09:13:36', 0, 'active', 0),
(2, 'ninh', 'Admin', 'ninh@gmail.com', '$2y$12$bk9ayVV9R0zisk/2ADGDt.aqOEq3NbnKHVL0Cy9zCDO5PxbmkEWBK', 'uploads/user/l5rdpScri1wDiaiC9SQs7o1AXIUv18NzURWQcW6x.jpg', '0345651932', 'Hà Nội', '2004-12-07', 'admin', '2025-03-13 18:45:02', '2025-03-28 08:34:09', 0, 'inactive', 0),
(3, 'ninh12', 'Nguyễn An Ninh', 'ninh12@gmail.com', '$2y$12$/L7ZPxqjFVNYJq4HS5u3m.i.9volzsXX/T6TGGmuQ9xOXphs6qeIa', 'uploads/user/ritVk4dXCLJluwCnpuUJVZEBdE7lqQcVTxw3xdtG.jpg', NULL, NULL, NULL, 'client', '2025-03-14 02:32:39', '2025-03-14 02:32:39', 0, 'active', 0),
(4, 'ninh1234', 'Nguyễn An Ninh', 'ninh1234@gmail.com', '$2y$12$yj0MyRzGU48gXDOfgt9o2uVTAtwsfjrxRbUzewybhAXlVPLG0WkN6', 'uploads/user/gVXzNEmGAMOxf3JT6bTJOD3UAQLvlHqHeS7moSz4.jpg', '67876867876', '678', '2025-03-01', 'client', '2025-03-16 21:55:13', '2025-04-22 08:39:28', 0, 'active', 0),
(5, 'client1', 'Khách hàng', 'client@gmail.com', '$2y$12$m9F6NDHl2vXDCuiw8CxCAuK2JIrHvavdD9NGI9iVvO/N9z4oN2rpe', NULL, NULL, NULL, NULL, 'client', '2025-03-18 21:41:50', '2025-03-18 21:41:50', 0, 'active', 0),
(6, 'client2', 'Khách hàng', 'client@gmail.com', '$2y$12$SJTwu61qjQJ3ATEI.lhIXu3QDJeI2eimlNA8ndeRchaZZ2dP.pBXO', NULL, NULL, NULL, NULL, 'client', '2025-03-18 21:53:21', '2025-03-18 21:53:21', 0, 'active', 0),
(7, 'hao', 'Admin', 'hao@gmail.com', '$2y$12$bk9ayVV9R0zisk/2ADGDt.aqOEq3NbnKHVL0Cy9zCDO5PxbmkEWBK', 'uploads/user/l5rdpScri1wDiaiC9SQs7o1AXIUv18NzURWQcW6x.jpg', '0345651932', 'Hà Nội', '2004-12-07', 'admin', '2025-03-13 18:45:02', '2025-03-28 08:33:58', 0, 'inactive', 0),
(8, 'dong', 'Admin', 'dong@gmail.com', '$2y$12$bk9ayVV9R0zisk/2ADGDt.aqOEq3NbnKHVL0Cy9zCDO5PxbmkEWBK', 'uploads/user/l5rdpScri1wDiaiC9SQs7o1AXIUv18NzURWQcW6x.jpg', '0345651932', 'Hà Nội', '2004-12-07', 'admin', '2025-03-13 18:45:02', '2025-03-28 08:34:01', 0, 'inactive', 0),
(9, 'thang', 'Admin', 'thang@gmail.com', '$2y$12$bk9ayVV9R0zisk/2ADGDt.aqOEq3NbnKHVL0Cy9zCDO5PxbmkEWBK', 'uploads/user/l5rdpScri1wDiaiC9SQs7o1AXIUv18NzURWQcW6x.jpg', '0345651932', 'Hà Nội', '2004-12-07', 'admin', '2025-03-13 18:45:02', '2025-03-28 08:34:06', 0, 'inactive', 0),
(10, 'hoang', 'Admin', 'hoang@gmail.com', '$2y$12$bk9ayVV9R0zisk/2ADGDt.aqOEq3NbnKHVL0Cy9zCDO5PxbmkEWBK', 'uploads/user/l5rdpScri1wDiaiC9SQs7o1AXIUv18NzURWQcW6x.jpg', '0345651932', 'Hà Nội', '2004-12-07', 'admin', '2025-03-13 18:45:02', '2025-03-21 04:39:42', 0, 'active', 0),
(11, 'phong', 'Admin', 'phong@gmail.com', '$2y$12$bk9ayVV9R0zisk/2ADGDt.aqOEq3NbnKHVL0Cy9zCDO5PxbmkEWBK', 'uploads/user/l5rdpScri1wDiaiC9SQs7o1AXIUv18NzURWQcW6x.jpg', '0345651932', 'Hà Nội', '2004-12-07', 'admin', '2025-03-13 18:45:02', '2025-03-21 04:39:42', 0, 'active', 0),
(12, 'client3', 'Khách hàng', 'client@gmail.com', '$2y$12$7OSlCVSQws0jdSuouxsZMukcOLHEvzxj22WgpQHcX0bE41mraGUie', NULL, NULL, NULL, NULL, 'client', '2025-03-28 00:48:29', '2025-03-28 00:48:29', 0, 'active', 0),
(13, 'anninh12', 'Nguyễn An Ninh', 'anninh12@gmail.com', '$2y$12$osBCJQ0IPwVm4D5Q/M.J9uPqTSgm42ywt5oZujtmAMhoYQUDHcsOm', 'avatars/BC1IBTn6OXiVBDzIDosXhalMg5IjEtDdZ6S9M8yh.jpg', '0345651932', 'Hà Nội, Tây Hồ, Nhật Tân', '2004-12-07', 'client', '2025-04-03 20:06:27', '2025-04-26 00:24:42', 0, 'active', 0),
(14, 'vana', 'Nguyễn Văn A', 'vana@gmail.com', '$2y$12$Jp1ZPEipdjJyGk.lovHi8.92u5J5pAqMTRKRd6AhHYuS4SlFzCaH.', NULL, NULL, NULL, NULL, 'client', '2025-04-13 21:27:27', '2025-04-13 21:27:27', 0, 'active', 0),
(16, 'bombim', 'Nguyễn An Ninh', 'bombimquabombim12@gmail.com', '$2y$12$M7t0P7v/S3BgYyeF8MAuIe0sfxy.gG/l8oUY6u1..8qJNrdoxjXJK', 'avatars/yWD1Tdyi5MHkDly9ZlJydkWHzFc0ojeB9HKc98pU.jpg', '0329890076', 'Số 205 tổ 14 thị trấn đông anh Hà Nội', '2004-12-07', 'client', '2025-04-23 21:42:12', '2025-05-04 09:24:59', 0, 'active', 0);

--
-- Bẫy `users`
--
DELIMITER $$
CREATE TRIGGER `after_failed_login` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
    -- Nếu số lần nhập sai >= 5 thì cập nhật status thành 'inactive'
    IF NEW.failed_attempts >= 5 THEN
        SET NEW.status = 'inactive';

        -- Ghi log vào bảng logs
        INSERT INTO logs (message, created_at)
        VALUES (
            CONCAT('Tài khoản bị khóa do nhập sai quá nhiều: ', NEW.username),
            NOW()
        );
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_user_register` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    INSERT INTO logs (message)
    VALUES (CONCAT('Người dùng đăng ký: ', NEW.username, ' - Email: ', NEW.email));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `discount_type` enum('percent','fixed') NOT NULL,
  `max_discount` float DEFAULT NULL,
  `min_order_value` float DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `max_usage_per_user` int(11) DEFAULT NULL,
  `discount` decimal(10,2) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 là hoạt động, 1 là khóa',
  `del_flg` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `discount_type`, `max_discount`, `min_order_value`, `quantity`, `used`, `max_usage_per_user`, `discount`, `valid_from`, `valid_to`, `created_at`, `updated_at`, `status`, `del_flg`) VALUES
(1, 'SALE100', 'percent', NULL, NULL, 0, 0, NULL, 100000.00, '2025-03-26', '2025-05-30', '2025-03-12 01:56:42', '2025-04-24 01:39:49', 0, 0),
(2, 'SALE50', 'percent', 40000, 100000, 99, 1, NULL, 50.00, '2025-03-12', '2025-05-16', '2025-03-14 00:22:03', '2025-04-24 06:20:48', 0, 0),
(3, 'SALE20', 'percent', 50000, 150000, 9997, 7, 100000, 20.00, '2025-04-01', '2025-05-31', '2025-03-26 00:09:52', '2025-05-03 00:26:54', 0, 1),
(4, 'CHAOMUNG', 'percent', 30000, 50000, 9995, 5, 1, 50.00, '2025-03-26', '2025-05-31', '2025-04-14 00:04:35', '2025-05-04 09:28:02', 0, 0),
(5, 'CHAOMUNG1', 'percent', NULL, 50000000, 9998, 2, 1, 100.00, '2025-03-26', '2025-04-30', '2025-04-14 00:06:04', '2025-04-24 01:41:15', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher_logs`
--

CREATE TABLE `voucher_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `discount_amount` int(11) NOT NULL,
  `status` enum('success','failed','expired','inactive','not_found','over_limit','over_user_limit','order_not_qualified','already_used_in_order') NOT NULL,
  `ip_address_user` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Bẫy `voucher_logs`
--
DELIMITER $$
CREATE TRIGGER `after_voucher_log_failed_insert` AFTER INSERT ON `voucher_logs` FOR EACH ROW BEGIN
    -- Kiểm tra nếu trạng thái voucher là 'failed'
    IF NEW.status = 'failed' THEN
        -- (Có thể thực hiện hành động khác, ví dụ: hoàn lại số lượt sử dụng voucher)
        UPDATE vouchers
        SET used = used - 1
        WHERE id = NEW.voucher_id;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_voucher_log_insert` AFTER INSERT ON `voucher_logs` FOR EACH ROW BEGIN
    -- Kiểm tra nếu trạng thái voucher là 'success'
    IF NEW.status = 'success' THEN
        -- Giảm số lượt sử dụng (used) trong bảng vouchers
        UPDATE vouchers
        SET used = used + 1
        WHERE id = NEW.voucher_id;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_voucher_log_update` AFTER UPDATE ON `voucher_logs` FOR EACH ROW BEGIN
    -- Kiểm tra nếu trạng thái voucher thay đổi
    IF OLD.status <> NEW.status THEN
        -- Ghi lại sự thay đổi trạng thái vào một bảng log hoặc thực hiện hành động cần thiết
        INSERT INTO voucher_log_updates (voucher_log_id, old_status, new_status, updated_at)
        VALUES (NEW.id, OLD.status, NEW.status, NOW());
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher_log_updates`
--

CREATE TABLE `voucher_log_updates` (
  `id` int(11) NOT NULL,
  `voucher_log_id` int(11) DEFAULT NULL,
  `old_status` varchar(255) DEFAULT NULL,
  `new_status` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher_user`
--

CREATE TABLE `voucher_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `status` enum('success','failed','expired','inactive','not_found','over_limit','over_user_limit','order_not_qualified','already_used_in_order') NOT NULL,
  `used_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `covers`
--
ALTER TABLE `covers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `multiple_images`
--
ALTER TABLE `multiple_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_multipleImages_products` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `lk_products_categories` (`category_id`),
  ADD KEY `lk_products_authors` (`author_id`),
  ADD KEY `lk_products_publishers` (`publisher_id`),
  ADD KEY `lk_products_lanuages` (`language_id`);

--
-- Chỉ mục cho bảng `product_genres`
--
ALTER TABLE `product_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_genres_ibfk_2` (`product_id`),
  ADD KEY `product_genres_ibfk_1` (`genre_id`);

--
-- Chỉ mục cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_products_product-variant` (`product_id`),
  ADD KEY `lk_covers_productVariant` (`cover_id`);

--
-- Chỉ mục cho bảng `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Chỉ mục cho bảng `voucher_logs`
--
ALTER TABLE `voucher_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `voucher_log_updates`
--
ALTER TABLE `voucher_log_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_log_id` (`voucher_log_id`);

--
-- Chỉ mục cho bảng `voucher_user`
--
ALTER TABLE `voucher_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_voucher_user` (`user_id`),
  ADD KEY `lk_voucher_user_2` (`voucher_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `covers`
--
ALTER TABLE `covers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `multiple_images`
--
ALTER TABLE `multiple_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT cho bảng `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `product_genres`
--
ALTER TABLE `product_genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `voucher_logs`
--
ALTER TABLE `voucher_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `voucher_log_updates`
--
ALTER TABLE `voucher_log_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `voucher_user`
--
ALTER TABLE `voucher_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `multiple_images`
--
ALTER TABLE `multiple_images`
  ADD CONSTRAINT `lk_multipleImages_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `lk_products_authors` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `lk_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `lk_products_lanuages` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `lk_products_publishers` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);

--
-- Các ràng buộc cho bảng `product_genres`
--
ALTER TABLE `product_genres`
  ADD CONSTRAINT `product_genres_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `product_genres_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `lk_covers_productVariant` FOREIGN KEY (`cover_id`) REFERENCES `covers` (`id`),
  ADD CONSTRAINT `lk_products_product-variant` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `voucher_log_updates`
--
ALTER TABLE `voucher_log_updates`
  ADD CONSTRAINT `voucher_log_updates_ibfk_1` FOREIGN KEY (`voucher_log_id`) REFERENCES `voucher_logs` (`id`);

--
-- Các ràng buộc cho bảng `voucher_user`
--
ALTER TABLE `voucher_user`
  ADD CONSTRAINT `lk_voucher_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `lk_voucher_user_2` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

