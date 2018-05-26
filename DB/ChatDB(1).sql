-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 26 2018 г., 11:59
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
  `sender_id` int(11) DEFAULT NULL,
  `reciver_id` int(11) DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `reciver_id`, `token`, `message`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'JJwevOIgoFHT4xpQFiiYMKvaP0IgitfpdPJSNptZ', 'Hello, Kate!', '2018-05-25 19:52:03', '2018-05-25 19:52:03', '2018-05-25 19:52:03'),
(2, 1, 3, 'JJwevOIgoFHT4xpQFiiYMKvaP0IgitfpdPJSNptZ', 'How are you?', '2018-05-25 19:52:42', '2018-05-25 19:52:42', '2018-05-25 19:52:42'),
(3, 1, 2, 'JJwevOIgoFHT4xpQFiiYMKvaP0IgitfpdPJSNptZ', 'Hello, John!', '2018-05-25 20:00:40', '2018-05-25 20:00:40', '2018-05-25 20:00:40'),
(4, 2, 1, '77VzKXESN8NEaBNDOWdB2nzHdoB8vZETJSbf9qE5', '1', '2018-05-26 08:02:13', '2018-05-26 08:02:13', '2018-05-26 08:02:13'),
(5, 2, 1, '77VzKXESN8NEaBNDOWdB2nzHdoB8vZETJSbf9qE5', '1', '2018-05-26 08:07:17', '2018-05-26 08:07:17', '2018-05-26 08:07:17');

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
(1, 'Alex', 'sin@i.ua', '$2y$10$CaVvktTipHeISi/TppkW9O2ZPfO9UHveWy38PkgFzJ5nyRTi23RRq', 'NgJHEHsbiCcQR1FI26DACyeopl5TvWQGJHbzyBiSYbngzdZUGB3wlWlL8xgl', '2018-05-19 08:04:06', '2018-05-19 08:04:06'),
(2, 'John', 'john@i.ua', '$2y$10$lWrWsN.P0msfSr0D/mIj1.LYUa8WcNBw6B6NVQxuhv5uLPkrq4OGu', 'YcfmUkaW0HRpRHGN0mHojHkTJQzNLdadnVR84pFmTRQkHuDLyPYi2NaXOZnV', '2018-05-19 12:45:48', '2018-05-19 12:45:48'),
(3, 'Kate', 'kate@i.ua', '$2y$10$svPpOMxv1OGoxpXPLBr6vOAmp4IoV7twst03b1JJlR24lMCzK3cD.', 'bqnUIUaAsW0OZMOFOF32Ch02vTZsKUakxcQEARx52zTXAtOYClN92kuu7Bai', '2018-05-20 16:50:54', '2018-05-20 16:50:54'),
(4, 'San', 'San@gmail.com', '$2y$10$PLw0pEtiSRGoOiWVEFBYCe6LjD6SuM68qTUEraI.LFObVbjmVnipi', '7HDNsAZHAGatQZhug6NuZ98GlRDZA5fjL24RzpHVoD6WKt8DHQDZV6502tcY', '2018-05-25 11:34:47', '2018-05-25 11:34:47');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reciver_id` (`reciver_id`),
  ADD KEY `sender_id` (`sender_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
