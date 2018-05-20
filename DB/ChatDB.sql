-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 21 2018 г., 01:41
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ChatDB`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reciver_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `sender_name`, `reciver_name`, `token`, `message`, `time`, `created_at`, `updated_at`) VALUES
(2, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 07:44:50', '2018-05-20 04:44:56', '2018-05-20 04:44:56'),
(3, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 07:44:50', '2018-05-20 04:45:45', '2018-05-20 04:45:45'),
(4, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 07:44:50', '2018-05-20 04:46:24', '2018-05-20 04:46:24'),
(5, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 07:44:50', '2018-05-20 04:46:34', '2018-05-20 04:46:34'),
(6, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 07:46:45', '2018-05-20 04:46:48', '2018-05-20 04:46:48'),
(7, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 08:15:05', '2018-05-20 05:15:10', '2018-05-20 05:15:10'),
(8, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 08:16:37', '2018-05-20 05:16:42', '2018-05-20 05:16:42'),
(9, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '2', '2018-05-20 08:17:51', '2018-05-20 05:17:54', '2018-05-20 05:17:54'),
(10, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 08:18:46', '2018-05-20 05:18:50', '2018-05-20 05:18:50'),
(11, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '2', '2018-05-20 08:19:14', '2018-05-20 05:19:18', '2018-05-20 05:19:18'),
(12, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '2', '2018-05-20 08:19:14', '2018-05-20 05:19:54', '2018-05-20 05:19:54'),
(13, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 08:21:40', '2018-05-20 05:21:44', '2018-05-20 05:21:44'),
(14, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 08:21:40', '2018-05-20 05:22:02', '2018-05-20 05:22:02'),
(15, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '1', '2018-05-20 08:21:40', '2018-05-20 05:23:09', '2018-05-20 05:23:09'),
(16, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '3', '2018-05-20 08:21:40', '2018-05-20 05:23:18', '2018-05-20 05:23:18'),
(17, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '3', '2018-05-20 08:21:40', '2018-05-20 05:23:23', '2018-05-20 05:23:23'),
(18, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '3', '2018-05-20 08:21:40', '2018-05-20 05:23:52', '2018-05-20 05:23:52'),
(19, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '4', '2018-05-20 08:24:00', '2018-05-20 05:24:07', '2018-05-20 05:24:07'),
(20, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '4', '2018-05-20 08:24:00', '2018-05-20 05:24:12', '2018-05-20 05:24:12'),
(21, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '7', '2018-05-20 08:25:24', '2018-05-20 05:25:28', '2018-05-20 05:25:28'),
(22, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '7', '2018-05-20 08:25:24', '2018-05-20 05:26:53', '2018-05-20 05:26:53'),
(23, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '21', '2018-05-20 08:27:00', '2018-05-20 05:27:06', '2018-05-20 05:27:06'),
(24, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '222', '2018-05-20 08:27:56', '2018-05-20 05:28:01', '2018-05-20 05:28:01'),
(25, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '222', '2018-05-20 08:27:56', '2018-05-20 05:28:08', '2018-05-20 05:28:08'),
(26, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '222', '2018-05-20 08:27:56', '2018-05-20 05:28:14', '2018-05-20 05:28:14'),
(27, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '32', '2018-05-20 08:29:31', '2018-05-20 05:29:35', '2018-05-20 05:29:35'),
(28, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '222222', '2018-05-20 08:31:33', '2018-05-20 05:31:38', '2018-05-20 05:31:38'),
(29, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '222222', '2018-05-20 08:31:33', '2018-05-20 05:32:18', '2018-05-20 05:32:18'),
(30, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaaa', '2018-05-20 08:32:27', '2018-05-20 05:32:30', '2018-05-20 05:32:30'),
(31, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '11111', '2018-05-20 08:33:59', '2018-05-20 05:34:04', '2018-05-20 05:34:04'),
(32, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 's', '2018-05-20 08:34:03', '2018-05-20 05:35:11', '2018-05-20 05:35:11'),
(33, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'sss', '2018-05-20 08:35:22', '2018-05-20 05:35:26', '2018-05-20 05:35:26'),
(34, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'q', '2018-05-20 08:35:26', '2018-05-20 05:35:32', '2018-05-20 05:35:32'),
(35, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'sss', '2018-05-20 08:35:22', '2018-05-20 05:35:55', '2018-05-20 05:35:55'),
(36, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'sss', '2018-05-20 08:35:22', '2018-05-20 05:36:32', '2018-05-20 05:36:32'),
(37, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '2', '2018-05-20 08:37:53', '2018-05-20 05:37:56', '2018-05-20 05:37:56'),
(38, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '3', '2018-05-20 08:37:56', '2018-05-20 05:38:05', '2018-05-20 05:38:05'),
(39, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '2222', '2018-05-20 08:39:55', '2018-05-20 05:40:00', '2018-05-20 05:40:00'),
(40, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '4', '2018-05-20 08:39:59', '2018-05-20 05:40:33', '2018-05-20 05:40:33'),
(41, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '4', '2018-05-20 08:39:59', '2018-05-20 05:40:43', '2018-05-20 05:40:43'),
(42, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'asa', '2018-05-20 08:42:10', '2018-05-20 05:42:14', '2018-05-20 05:42:14'),
(43, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '6', '2018-05-20 08:42:14', '2018-05-20 05:42:50', '2018-05-20 05:42:50'),
(44, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'sas', '2018-05-20 08:43:26', '2018-05-20 05:43:30', '2018-05-20 05:43:30'),
(45, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'sas', '2018-05-20 08:43:30', '2018-05-20 05:43:38', '2018-05-20 05:43:38'),
(46, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'sss', '2018-05-20 08:43:37', '2018-05-20 05:43:44', '2018-05-20 05:43:44'),
(47, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'sss', '2018-05-20 08:43:44', '2018-05-20 05:43:51', '2018-05-20 05:43:51'),
(48, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'qqq', '2018-05-20 08:43:50', '2018-05-20 05:43:56', '2018-05-20 05:43:56'),
(49, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'qqq', '2018-05-20 08:43:50', '2018-05-20 05:44:55', '2018-05-20 05:44:55'),
(50, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'qqq', '2018-05-20 08:43:50', '2018-05-20 05:45:08', '2018-05-20 05:45:08'),
(51, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'sss', '2018-05-20 08:43:44', '2018-05-20 05:45:39', '2018-05-20 05:45:39'),
(52, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '111', '2018-05-20 08:45:47', '2018-05-20 05:45:51', '2018-05-20 05:45:51'),
(53, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaa', '2018-05-20 08:45:51', '2018-05-20 05:45:58', '2018-05-20 05:45:58'),
(54, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'cccx', '2018-05-20 08:46:24', '2018-05-20 05:46:29', '2018-05-20 05:46:29'),
(55, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'saaaa', '2018-05-20 08:46:29', '2018-05-20 05:46:37', '2018-05-20 05:46:37'),
(56, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '4', '2018-05-20 08:48:36', '2018-05-20 05:48:40', '2018-05-20 05:48:40'),
(57, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '4', '2018-05-20 08:48:40', '2018-05-20 05:48:46', '2018-05-20 05:48:46'),
(58, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '4', '2018-05-20 08:48:40', '2018-05-20 05:49:25', '2018-05-20 05:49:25'),
(59, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '6', '2018-05-20 08:49:25', '2018-05-20 05:49:30', '2018-05-20 05:49:30'),
(60, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'qqqq', '2018-05-20 08:50:11', '2018-05-20 05:50:16', '2018-05-20 05:50:16'),
(61, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'sss', '2018-05-20 08:50:16', '2018-05-20 05:50:22', '2018-05-20 05:50:22'),
(62, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '67', '2018-05-20 08:57:13', '2018-05-20 05:57:21', '2018-05-20 05:57:21'),
(63, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '76', '2018-05-20 08:57:20', '2018-05-20 05:57:28', '2018-05-20 05:57:28'),
(64, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '76', '2018-05-20 08:57:28', '2018-05-20 05:57:35', '2018-05-20 05:57:35'),
(65, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '8', '2018-05-20 08:57:35', '2018-05-20 05:57:46', '2018-05-20 05:57:46'),
(66, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '8', '2018-05-20 08:57:46', '2018-05-20 05:57:53', '2018-05-20 05:57:53'),
(67, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '8', '2018-05-20 08:57:46', '2018-05-20 05:58:03', '2018-05-20 05:58:03'),
(68, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '8', '2018-05-20 08:57:46', '2018-05-20 05:58:21', '2018-05-20 05:58:21'),
(69, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '8', '2018-05-20 08:57:46', '2018-05-20 05:58:27', '2018-05-20 05:58:27'),
(70, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '8', '2018-05-20 08:57:46', '2018-05-20 05:58:29', '2018-05-20 05:58:29'),
(71, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '8', '2018-05-20 08:57:46', '2018-05-20 06:01:05', '2018-05-20 06:01:05'),
(72, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '9', '2018-05-20 09:01:05', '2018-05-20 06:01:18', '2018-05-20 06:01:18'),
(73, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '9', '2018-05-20 09:01:18', '2018-05-20 06:01:24', '2018-05-20 06:01:24'),
(74, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '7', '2018-05-20 09:01:24', '2018-05-20 06:01:31', '2018-05-20 06:01:31'),
(75, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '7', '2018-05-20 09:01:24', '2018-05-20 06:02:25', '2018-05-20 06:02:25'),
(76, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '2', '2018-05-20 09:02:24', '2018-05-20 06:02:46', '2018-05-20 06:02:46'),
(77, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'ggh', '2018-05-20 09:05:49', '2018-05-20 06:05:54', '2018-05-20 06:05:54'),
(78, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'ggg', '2018-05-20 09:05:54', '2018-05-20 06:06:02', '2018-05-20 06:06:02'),
(79, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'ddd', '2018-05-20 09:07:43', '2018-05-20 06:07:47', '2018-05-20 06:07:47'),
(80, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'qqq', '2018-05-20 09:07:47', '2018-05-20 06:08:01', '2018-05-20 06:08:01'),
(81, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'ddd', '2018-05-20 09:07:43', '2018-05-20 06:09:24', '2018-05-20 06:09:24'),
(82, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaa', '2018-05-20 09:09:24', '2018-05-20 06:09:31', '2018-05-20 06:09:31'),
(83, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'ddd', '2018-05-20 09:07:43', '2018-05-20 06:13:01', '2018-05-20 06:13:01'),
(84, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'www', '2018-05-20 09:13:00', '2018-05-20 06:13:07', '2018-05-20 06:13:07'),
(85, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'www', '2018-05-20 09:13:00', '2018-05-20 06:14:49', '2018-05-20 06:14:49'),
(86, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaaassssaaaa', '2018-05-20 09:14:55', '2018-05-20 06:15:01', '2018-05-20 06:15:01'),
(87, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'qzq', '2018-05-20 09:15:01', '2018-05-20 06:15:14', '2018-05-20 06:15:14'),
(88, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'asasdsad', '2018-05-20 09:19:49', '2018-05-20 06:19:54', '2018-05-20 06:19:54'),
(89, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'zzz', '2018-05-20 09:19:54', '2018-05-20 06:20:03', '2018-05-20 06:20:03'),
(90, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'asasdsad', '2018-05-20 09:19:49', '2018-05-20 06:21:04', '2018-05-20 06:21:04'),
(91, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaa', '2018-05-20 09:21:04', '2018-05-20 06:21:11', '2018-05-20 06:21:11'),
(92, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaa', '2018-05-20 09:21:04', '2018-05-20 06:21:48', '2018-05-20 06:21:48'),
(93, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaa', '2018-05-20 09:21:04', '2018-05-20 06:22:06', '2018-05-20 06:22:06'),
(94, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaa', '2018-05-20 09:21:04', '2018-05-20 06:22:24', '2018-05-20 06:22:24'),
(95, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaa', '2018-05-20 09:21:04', '2018-05-20 06:22:45', '2018-05-20 06:22:45'),
(96, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'asasdsad', '2018-05-20 09:19:49', '2018-05-20 06:25:11', '2018-05-20 06:25:11'),
(97, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaaaaa', '2018-05-20 09:25:10', '2018-05-20 06:25:18', '2018-05-20 06:25:18'),
(98, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'aaaaaa', '2018-05-20 09:25:10', '2018-05-20 06:26:26', '2018-05-20 06:26:26'),
(99, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'asasdsad', '2018-05-20 09:26:30', '2018-05-20 06:26:32', '2018-05-20 06:26:32'),
(100, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'gg', '2018-05-20 09:26:32', '2018-05-20 06:26:40', '2018-05-20 06:26:40'),
(101, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'asasdsad', '2018-05-20 09:26:59', '2018-05-20 06:27:02', '2018-05-20 06:27:02'),
(102, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', 'dgndsbdb', '2018-05-20 09:27:01', '2018-05-20 06:27:08', '2018-05-20 06:27:08'),
(103, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '33311', '2018-05-20 09:58:00', '2018-05-20 06:58:10', '2018-05-20 06:58:10'),
(104, 'Alex', 'John', 'Jj8AHj0c5xxgzwrybZLErr2AENdCobMzhbOIpXeZ', '32233', '2018-05-20 09:58:09', '2018-05-20 06:58:17', '2018-05-20 06:58:17'),
(105, 'Alex', 'John', 'ePPPT1PHdkqOX5XVEXdv11rgxJi7yEv7Mrq0DmJR', 'qqqqqqqq', '2018-05-20 14:18:08', '2018-05-20 11:18:29', '2018-05-20 11:18:29'),
(106, 'Alex', 'John', NULL, '1232', '2018-05-20 15:07:49', '2018-05-20 12:10:12', '2018-05-20 12:10:12'),
(107, 'Alex', 'John', NULL, '1232', '2018-05-20 15:07:49', '2018-05-20 12:11:26', '2018-05-20 12:11:26'),
(108, 'Alex', 'John', NULL, 'test_one', '2018-05-20 15:11:27', '2018-05-20 12:12:15', '2018-05-20 12:12:15'),
(109, 'Alex', 'John', NULL, 'second_test', '2018-05-20 15:12:15', '2018-05-20 12:12:25', '2018-05-20 12:12:25'),
(110, 'Alex', 'John', NULL, 'third_test', '2018-05-20 15:12:26', '2018-05-20 12:12:37', '2018-05-20 12:12:37'),
(111, 'Alex', 'John', NULL, '4_test', '2018-05-20 15:14:12', '2018-05-20 12:14:34', '2018-05-20 12:14:34'),
(112, 'John', 'Alex', NULL, 'Hello, Alex! This is message from John.', '2018-05-20 15:42:07', '2018-05-20 12:42:44', '2018-05-20 12:42:44'),
(113, 'John', 'Alex', NULL, 'how are you?', '2018-05-20 17:37:53', '2018-05-20 14:39:01', '2018-05-20 14:39:01'),
(114, 'Alex', 'John', NULL, 'i am okay, John!', '2018-05-20 18:02:28', '2018-05-20 15:02:28', '2018-05-20 15:02:28'),
(115, 'Alex', 'John', NULL, 'And how are you?', '2018-05-20 18:06:01', '2018-05-20 15:06:01', '2018-05-20 15:06:01'),
(116, 'Alex', 'John', NULL, 'You are ok?', '2018-05-20 18:38:21', '2018-05-20 15:38:21', '2018-05-20 15:38:21'),
(117, 'Alex', 'John', NULL, '?', '2018-05-20 18:45:59', '2018-05-20 15:46:00', '2018-05-20 15:46:00'),
(118, 'Alex', 'John', NULL, 'hope so...', '2018-05-20 18:47:15', '2018-05-20 15:47:15', '2018-05-20 15:47:15'),
(119, 'Alex', 'John', NULL, 'yep?', '2018-05-20 18:53:20', '2018-05-20 15:53:20', '2018-05-20 15:53:20'),
(120, 'Alex', 'John', NULL, 'ok...', '2018-05-20 22:49:14', '2018-05-20 19:49:14', '2018-05-20 19:49:14'),
(121, 'Kate', 'John', NULL, 'Hello, John! I am Kate )', '2018-05-20 23:44:50', '2018-05-20 20:44:50', '2018-05-20 20:44:50');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_19_123540_create_messages_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alex', 'sin@i.ua', '$2y$10$CaVvktTipHeISi/TppkW9O2ZPfO9UHveWy38PkgFzJ5nyRTi23RRq', 'V1zhRvmz7ZhTHhWYMXgXG8g3AzdfSHexCE7RkJC1eUKkqZDEDyCVsJtKOTuy', '2018-05-19 08:04:06', '2018-05-19 08:04:06'),
(2, 'John', 'john@i.ua', '$2y$10$lWrWsN.P0msfSr0D/mIj1.LYUa8WcNBw6B6NVQxuhv5uLPkrq4OGu', 'MLDpiRVFieCs4gUtkxapPFAM6saImbWoXR0Oll6mStHNSmhFGHbFFL8CQkeF', '2018-05-19 12:45:48', '2018-05-19 12:45:48'),
(3, 'Kate', 'kate@i.ua', '$2y$10$svPpOMxv1OGoxpXPLBr6vOAmp4IoV7twst03b1JJlR24lMCzK3cD.', 'bqnUIUaAsW0OZMOFOF32Ch02vTZsKUakxcQEARx52zTXAtOYClN92kuu7Bai', '2018-05-20 16:50:54', '2018-05-20 16:50:54');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reciver_id` (`reciver_name`),
  ADD KEY `sender_id` (`sender_name`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
