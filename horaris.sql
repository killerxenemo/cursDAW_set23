-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2023 a las 09:59:44
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `horaris`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grup`
--

CREATE TABLE `grup` (
  `id_grup` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `acronim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grup`
--

INSERT INTO `grup` (`id_grup`, `nom`, `acronim`) VALUES
(1, 'Desenvolupament d\'aplicacions Web 2n', 'IFC33B'),
(2, 'Desenvolupament d\'aplicacions Web 1r', 'IFC33A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horari`
--

CREATE TABLE `horari` (
  `id_grup` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `hora` int(11) NOT NULL,
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horari`
--

INSERT INTO `horari` (`id_grup`, `id_materia`, `hora`, `dia`) VALUES
(2, 2, 5, 1),
(2, 2, 6, 1),
(2, 2, 3, 2),
(2, 2, 4, 2),
(2, 2, 1, 3),
(2, 2, 2, 3),
(2, 2, 2, 5),
(2, 2, 3, 5),
(2, 1, 5, 2),
(2, 1, 6, 2),
(2, 1, 4, 4),
(2, 4, 5, 4),
(2, 4, 6, 4),
(2, 4, 1, 5),
(2, 6, 1, 1),
(2, 6, 2, 1),
(2, 6, 3, 3),
(2, 6, 4, 3),
(2, 3, 3, 1),
(2, 3, 4, 1),
(2, 3, 5, 3),
(2, 3, 6, 3),
(2, 3, 1, 4),
(2, 3, 2, 4),
(2, 3, 3, 4),
(2, 5, 1, 2),
(2, 5, 2, 2),
(2, 5, 4, 5),
(2, 5, 5, 5),
(2, 5, 6, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horaricentre`
--

CREATE TABLE `horaricentre` (
  `id_horaricentre` int(11) NOT NULL,
  `inici` time NOT NULL,
  `final` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horaricentre`
--

INSERT INTO `horaricentre` (`id_horaricentre`, `inici`, `final`) VALUES
(1, '08:00:00', '08:55:00'),
(2, '08:55:00', '09:50:00'),
(3, '10:15:00', '11:10:00'),
(4, '11:10:00', '12:05:00'),
(5, '12:20:00', '13:15:00'),
(6, '13:15:00', '14:10:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materies`
--

CREATE TABLE `materies` (
  `id_materia` int(11) NOT NULL,
  `nomcomplet` varchar(50) NOT NULL,
  `acronim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materies`
--

INSERT INTO `materies` (`id_materia`, `nomcomplet`, `acronim`) VALUES
(1, 'Entorns de Desenvolupament', 'ENT'),
(2, 'Bases de dades', 'BD'),
(3, 'Programació', 'PROG'),
(4, 'Formació i Orientació laboral', 'FOL'),
(5, 'Sistemes Informàtics', 'SIST'),
(6, 'Llenguatge de marques', 'HTML');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `grup`
--
ALTER TABLE `grup`
  ADD PRIMARY KEY (`id_grup`);

--
-- Indices de la tabla `horari`
--
ALTER TABLE `horari`
  ADD KEY `id_grup` (`id_grup`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `hora` (`hora`);

--
-- Indices de la tabla `horaricentre`
--
ALTER TABLE `horaricentre`
  ADD PRIMARY KEY (`id_horaricentre`);

--
-- Indices de la tabla `materies`
--
ALTER TABLE `materies`
  ADD PRIMARY KEY (`id_materia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `grup`
--
ALTER TABLE `grup`
  MODIFY `id_grup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `horaricentre`
--
ALTER TABLE `horaricentre`
  MODIFY `id_horaricentre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materies`
--
ALTER TABLE `materies`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `horari`
--
ALTER TABLE `horari`
  ADD CONSTRAINT `horari_ibfk_1` FOREIGN KEY (`id_grup`) REFERENCES `grup` (`id_grup`),
  ADD CONSTRAINT `horari_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materies` (`id_materia`),
  ADD CONSTRAINT `horari_ibfk_3` FOREIGN KEY (`hora`) REFERENCES `horaricentre` (`id_horaricentre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
