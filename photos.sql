-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2021 a las 22:32:32
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `narciso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `image` varchar(60) NOT NULL,
  `author` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `photos`
--

INSERT INTO `photos` (`id`, `image`, `author`) VALUES
(1, 'https://picsum.photos/id/1025/4951/3301', 'Matthew Henry'),
(2, 'https://picsum.photos/id/1071/3000/1996', 'Tim Stief'),
(3, 'https://picsum.photos/id/1020/4288/2848', 'Adam Willoughby-Knox'),
(5, 'https://picsum.photos/id/1076/4835/3223', 'Samuel Zeller'),
(6, 'https://picsum.photos/id/111/4400/2656', 'Gabe Rodriguez'),
(7, 'https://picsum.photos/id/133/2742/1828', 'Dietmar Becker'),
(8, 'https://picsum.photos/id/197/4272/2848', 'Kholodnitskiy Maksim'),
(9, 'https://picsum.photos/id/375/5184/3456', 'Wellington Sanipe'),
(10, 'https://picsum.photos/id/513/4373/3280', 'Jeff Sheldon'),
(11, 'https://picsum.photos/id/602/2509/1673', 'Margot Pandone'),
(12, 'https://picsum.photos/id/655/2000/1125', 'Kyle Szegedi');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
