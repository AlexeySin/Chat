-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 02 2018 г., 00:05
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
-- Структура таблицы `conversations`
--

CREATE TABLE `conversations` (
  `id` int(10) NOT NULL,
  `conversation_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `conversations`
--

INSERT INTO `conversations` (`id`, `conversation_name`, `created_at`, `updated_at`) VALUES
(1, 'Test', NULL, NULL),
(2, 'Second', NULL, NULL),
(3, 'NewOne', '2018-06-01 20:48:04', '2018-06-01 20:48:04');

-- --------------------------------------------------------

--
-- Структура таблицы `conversation_message`
--

CREATE TABLE `conversation_message` (
  `id` int(10) NOT NULL,
  `message_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `conversation_message`
--

INSERT INTO `conversation_message` (`id`, `message_id`, `conversation_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2018-06-01 20:10:21', '2018-06-01 20:10:21'),
(2, 2, 1, '2018-06-01 20:13:10', '2018-06-01 20:13:10'),
(3, 3, 1, '2018-06-01 20:14:01', '2018-06-01 20:14:01'),
(4, 4, 3, '2018-06-01 20:48:21', '2018-06-01 20:48:21');

-- --------------------------------------------------------

--
-- Структура таблицы `conversation_user`
--

CREATE TABLE `conversation_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `conversation_user`
--

INSERT INTO `conversation_user` (`id`, `user_id`, `conversation_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 1, 2, NULL, NULL),
(4, 3, 2, NULL, NULL),
(5, 1, 3, '2018-06-01 20:48:04', '2018-06-01 20:48:04'),
(6, 4, 3, '2018-06-01 20:48:04', '2018-06-01 20:48:04');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `conversation_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Hello, Kate!', '2018-06-01 20:10:20', '2018-06-01 20:10:20'),
(2, 1, 1, 'Hello, John!', '2018-06-01 20:13:10', '2018-06-01 20:13:10'),
(3, 2, 1, 'Hi, Alex! How are you?', '2018-06-01 20:14:01', '2018-06-01 20:14:01'),
(4, 1, 3, 'Hello,San!', '2018-06-01 20:48:21', '2018-06-01 20:48:21');

-- --------------------------------------------------------

--
-- Структура таблицы `message_user`
--

CREATE TABLE `message_user` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `message_user`
--

INSERT INTO `message_user` (`id`, `user_id`, `message_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-06-01 20:10:21', '2018-06-01 20:10:21'),
(2, 1, 2, '2018-06-01 20:13:10', '2018-06-01 20:13:10'),
(3, 2, 3, '2018-06-01 20:14:01', '2018-06-01 20:14:01'),
(4, 1, 4, '2018-06-01 20:48:21', '2018-06-01 20:48:21');

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
(3, '2018_05_19_123540_create_messages_table', 2),
(4, '2018_05_29_202544_create_conversations_table', 3),
(5, '2018_05_30_160951_create_conversation_users_table', 4),
(6, '2018_05_30_183231_create_conversation_messages_table', 5),
(7, '2018_06_01_115138_create_message_users_table', 6);

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
(1, 'Alex', 'sin@i.ua', '$2y$10$CaVvktTipHeISi/TppkW9O2ZPfO9UHveWy38PkgFzJ5nyRTi23RRq', 'hAdbnaURCcv9Ug1wqXl9w4QKDOmuQAP6zQ3oTs6ImmeCIxcOExVlqJBDIRNT', '2018-05-19 08:04:06', '2018-05-19 08:04:06'),
(2, 'John', 'john@i.ua', '$2y$10$lWrWsN.P0msfSr0D/mIj1.LYUa8WcNBw6B6NVQxuhv5uLPkrq4OGu', 'TiplSB8f4Z6inR5IcwjQqEnIOJKf2aJGHAfs0YEcWjE7g2IauG3bGvhNo5mF', '2018-05-19 12:45:48', '2018-05-19 12:45:48'),
(3, 'Kate', 'kate@i.ua', '$2y$10$svPpOMxv1OGoxpXPLBr6vOAmp4IoV7twst03b1JJlR24lMCzK3cD.', 'bqnUIUaAsW0OZMOFOF32Ch02vTZsKUakxcQEARx52zTXAtOYClN92kuu7Bai', '2018-05-20 16:50:54', '2018-05-20 16:50:54'),
(4, 'San', 'San@gmail.com', '$2y$10$PLw0pEtiSRGoOiWVEFBYCe6LjD6SuM68qTUEraI.LFObVbjmVnipi', '7HDNsAZHAGatQZhug6NuZ98GlRDZA5fjL24RzpHVoD6WKt8DHQDZV6502tcY', '2018-05-25 11:34:47', '2018-05-25 11:34:47');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `conversation_message`
--
ALTER TABLE `conversation_message`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `conversation_user`
--
ALTER TABLE `conversation_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversion_id` (`conversation_id`);

--
-- Индексы таблицы `message_user`
--
ALTER TABLE `message_user`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `conversation_message`
--
ALTER TABLE `conversation_message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `conversation_user`
--
ALTER TABLE `conversation_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `message_user`
--
ALTER TABLE `message_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
