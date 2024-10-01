-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2024. Okt 01. 18:34
-- Kiszolgáló verziója: 8.0.17
-- PHP verzió: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `mozi`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `seats` text,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `payment`
--

INSERT INTO `payment` (`id`, `seats`, `first_name`, `last_name`, `tel`, `email`, `created_at`) VALUES
(1, '', 'Nagy', 'János', '+36548123577', 'nagyj@mail.com', '2024-04-27 12:20:40'),
(2, '21. szék20. székKissLilla+36457321159klilla@mail.com', 'Kiss', 'Lilla', '+36457321159', 'klilla@mail.com', '2024-04-27 12:22:15'),
(3, '30. szék29. szék', 'Horváth', 'Sándor', '+36998754123', 'hsandor@mail.com', '2024-04-27 12:23:27'),
(4, '\"24. szu00e9k23. szu00e9k\"', 'László', 'Evelin', '+36548792211', 'levelin@mail.com', '2024-04-27 12:25:44'),
(5, '\"17. szu00e9k\"\"16. szu00e9k\"', 'Nagy', 'Vivien', '+364511225587', 'nagyv@mail.com', '2024-04-27 12:28:23'),
(6, '', 'Kiss', 'Mihály', '+361251148579', 'kmihaly@mail.com', '2024-04-27 12:31:40'),
(7, '6. szék,5. szék', 'Takács', 'Tímea', '+36547888554', 'ttimi@mail.com', '2024-04-27 12:34:47'),
(8, '3. szék,2. szék,1. szék', 'Mezei', 'Péter', '+36485587788', 'mpeter@mail.com', '2024-04-27 12:36:55'),
(9, '21. szék,20. szék', 'Takács', 'Nóra', '+36754448721', 'tnora@mail.com', '2024-04-28 09:55:34'),
(10, '36. szék,35. szék', 'Kovács', 'János', '+36301234567', 'kjanos@mail.com', '2024-04-28 10:20:33'),
(11, '36. szék,35. szék', 'Lakatos', 'Béla', '+36456548799', 'lbela@mail.com', '2024-04-28 10:23:03'),
(12, '11. szék,10. szék,9. szék', 'Miklós', 'Edina', '+36458791123', 'medina@mail.com', '2024-04-28 10:25:34'),
(13, '2. szék,1. szék', 'László', 'Norina', '+36457875555', 'lnorina@mail.com', '2024-04-28 10:27:22'),
(14, '32. szék,31. szék', 'Téglás', 'Rita', '+36457852215', 'trita@mail.com', '2024-04-28 10:27:59'),
(15, '22. szék,21. szék', 'Vígh', 'János', '+36995551423', 'vjani@mail.com', '2024-04-28 10:31:16'),
(16, '16. szék,15. szék', 'Varga', 'Margit', '+36475551298', 'vmargit@mail.com', '2024-04-28 10:32:44'),
(17, '37. szék,36. szék', 'Tóth', 'Géza', '+36455557819', 'vgeza@mail.com', '2024-04-28 10:34:00'),
(18, '19. szék,18. szék', 'Nagy', 'Nikolett', '+36412251144', 'nniki@mail.com', '2024-04-28 10:35:17'),
(19, '25. szék,24. szék', 'Tamás', 'Áron', '+36415558794', 'taron@mail.com', '2024-04-28 10:38:27'),
(20, '19. szék,18. szék', 'Hajós', 'József', '+36410251125', 'hjozsef@mail.com', '2024-04-28 10:40:49'),
(21, '20. szék,19. szék,18. szék', 'Tóth', 'Viktor', '+36558791125', 'tviki@mail.com', '2024-04-28 10:44:20'),
(22, '20. szék,19. szék,18. szék', 'Teszt', 'Elek', '+36012345678', 'telek@mail.com', '2024-04-28 10:46:10'),
(23, '6. szék,5. szék,4. szék', 'Márton', 'János', '+36121115487', 'mjanos@mail.com', '2024-04-28 10:56:38'),
(24, '2. szék,1. szék', 'Kiss', 'Gábor', '+36104587796', 'kgabi@mail.com', '2024-04-28 11:00:28'),
(25, '6. szék,5. szék', 'Nagy', 'Lilla', '+36457789912', 'nilla@mail.com', '2024-04-28 11:02:46'),
(26, '28. szék,27. szék', 'Kiss', 'Tibor', '+36102548976', 'ktibi@mail.com', '2024-04-28 11:03:20'),
(27, '37. szék,36. szék', 'Kovács', 'Tamás', '+36451217789', 'ktomi@mail.com', '2024-04-28 11:04:33'),
(28, '22. szék,21. szék,20. szék', 'Tokaji', 'Kitti', '+36557841129', 'tkitti@mail.com', '2024-04-28 14:19:25'),
(29, '18. szék,17. szék', 'Nagy', 'Ivett', '+36451127789', 'nivett@mail.com', '2024-04-28 14:36:00'),
(30, '25. szék,24. szék', 'Illés', 'Tamara', '+36105548978', 'itami@mail.com', '2024-04-28 14:38:36'),
(31, '16. szék,15. szék', 'Kapitány', 'Sára', '+36114557819', 'ksara@mail.com', '2024-04-28 14:40:53'),
(32, '22. szék,21. szék,20. szék', 'Tamási', 'Áron', '+36105548779', 'taron@mail.com', '2024-04-28 14:42:50'),
(33, '20. szék,19. szék,18. szék', 'József', 'János', '+36785554591', 'jjanos@mail.com', '2024-04-28 14:45:11'),
(34, '21. szék,20. szék', 'Viktor', 'János', '+36104547841', 'vjani@mail.com', '2024-04-28 14:47:46'),
(35, '32. szék,31. szék,30. szék', 'Vékony', 'Lajos', '+36405558624', 'vlajos@mail.com', '2024-04-28 15:56:05'),
(36, '20. szék,19. szék,18. szék', 'Teszt', 'Elek', '+36102548864', 'teszt@elek.hu', '2024-05-23 13:31:29'),
(37, '20. szék,19. szék,18. szék', 'Tamás', 'Áron', '+36105557788', 'taron@mail.hu', '2024-06-19 09:40:30'),
(38, '9. szék,8. szék', 'Tamási', 'Áron', '+36705554477', 'taron@mail.hu', '2024-06-20 10:40:33'),
(39, '5. szék,4. szék', 'Tóth', 'Imre', '+36457788778', 'timre@mail.hu', '2024-06-20 10:46:35'),
(40, '19. szék,18. szék,11. szék', 'Nagy', 'Lilla', '+36701211458', 'nlilla@mail.hu', '2024-06-20 10:49:48'),
(41, '8. szék,7. szék', 'Nagy', 'János', '+36102547587', 'njanos@mail.hu', '2024-06-20 10:50:23');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `seats`
--

CREATE TABLE `seats` (
  `id` int(11) NOT NULL,
  `seat_number` varchar(3) DEFAULT NULL,
  `occupied` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `seats`
--

INSERT INTO `seats` (`id`, `seat_number`, `occupied`, `created_at`) VALUES
(1, '1', 0, '2024-04-26 13:35:55'),
(2, '2', 0, '2024-04-26 13:48:00'),
(3, '3', 0, '2024-04-26 13:42:12'),
(4, '4', 0, '2024-04-26 13:43:45'),
(5, '5', 0, '2024-04-26 13:43:45'),
(6, '6', 0, '2024-04-26 13:43:45'),
(7, '7', 1, '2024-04-26 13:43:45'),
(8, '8', 1, '2024-04-26 13:43:45'),
(9, '9', 0, '2024-04-26 13:43:45'),
(10, '10', 0, '2024-04-26 13:43:45'),
(11, '11', 1, '2024-04-26 13:44:30'),
(12, '12', 0, '2024-04-26 13:44:30'),
(13, '13', 0, '2024-04-26 13:44:30'),
(14, '14', 0, '2024-04-26 13:44:30'),
(15, '15', 0, '2024-04-26 13:44:30'),
(16, '16', 0, '2024-04-26 13:44:30'),
(17, '17', 0, '2024-04-26 13:44:30'),
(18, '18', 1, '2024-04-26 13:44:30'),
(19, '19', 1, '2024-04-26 13:44:30'),
(20, '20', 0, '2024-04-26 13:44:30'),
(21, '21', 0, '2024-04-26 13:44:55'),
(22, '22', 0, '2024-04-26 13:44:55'),
(23, '23', 0, '2024-04-26 13:44:55'),
(24, '24', 0, '2024-04-26 13:44:55'),
(25, '25', 0, '2024-04-26 13:44:55'),
(26, '26', 0, '2024-04-26 13:44:55'),
(27, '27', 0, '2024-04-26 13:44:55'),
(28, '28', 0, '2024-04-26 13:44:55'),
(29, '29', 0, '2024-04-26 13:44:55'),
(30, '30', 0, '2024-04-26 13:44:55'),
(31, '31', 0, '2024-04-26 13:45:23'),
(32, '32', 0, '2024-04-26 13:45:23'),
(33, '33', 0, '2024-04-26 13:45:23'),
(34, '34', 0, '2024-04-26 13:45:23'),
(35, '35', 0, '2024-04-26 13:45:23'),
(36, '36', 0, '2024-04-26 13:45:23'),
(37, '37', 0, '2024-04-26 13:45:23'),
(38, '38', 0, '2024-04-26 13:45:23'),
(39, '39', 0, '2024-04-26 13:45:23'),
(40, '40', 0, '2024-04-26 13:45:23');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT a táblához `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
