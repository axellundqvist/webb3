-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 23 okt 2018 kl 10:26
-- Serverversion: 10.1.30-MariaDB
-- PHP-version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `webb3`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `descr` varchar(400) NOT NULL,
  `price` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `services`
--

INSERT INTO `services` (`id`, `name`, `descr`, `price`) VALUES
(2, 'Stora paketet', 'Det stora paketet innefattar all hjälp du kan behöva för att skapa en webbplats samt publicera på webbhotell', ' Enligt överenskommelse'),
(5, 'Lilla paketet', 'Tillsammans tar vi fram designen du söker. Vi bygger din webbplats och levererar filerna. Publicering och hosting ingår ej.', 'Enligt överenskommelse'),
(6, 'Brand Identity', 'För att kommunicera ett konsekvent varumärke behöver din visuella identitet vara enkel och tydlig. Vi hjälper dig med design och kan skapa mallar för olika utseenden.', 'Enligt överenskommelse'),
(13, 'Hosting & Publicering', 'Har du en webbplats som du vill publicera? Vi erbjuder hosting på våra egna servrar samt hjälp med publicering om du vill ha din webbplats någon annanstans, exempelvis på ett webbhotell.', 'Enligt överenskommelse');

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('admin', 'password');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
