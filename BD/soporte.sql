-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2017 a las 22:11:14
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `soporte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computador`
--

CREATE TABLE `computador` (
  `DSEI` varchar(40) COLLATE utf8_bin NOT NULL,
  `CORREO` varchar(40) COLLATE utf8_bin NOT NULL,
  `SERIE` varchar(40) COLLATE utf8_bin NOT NULL,
  `MARCA` varchar(40) COLLATE utf8_bin NOT NULL,
  `MODELO` varchar(40) COLLATE utf8_bin NOT NULL,
  `PROCESADOR` varchar(40) COLLATE utf8_bin NOT NULL,
  `HDD` int(11) NOT NULL,
  `RAM` int(11) NOT NULL,
  `SO` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impresora`
--

CREATE TABLE `impresora` (
  `DSIE` varchar(40) COLLATE utf8_bin NOT NULL,
  `CORREO` varchar(40) COLLATE utf8_bin NOT NULL,
  `SERIE` varchar(40) COLLATE utf8_bin NOT NULL,
  `MARCA` varchar(40) COLLATE utf8_bin NOT NULL,
  `MODELO` varchar(40) COLLATE utf8_bin NOT NULL,
  `TIPO` varchar(40) COLLATE utf8_bin NOT NULL COMMENT 'Laser, Inyeccion, Plotter',
  `MULTIFUNCIONAL` int(11) NOT NULL COMMENT '0=no, 1=si',
  `LAN` int(11) NOT NULL COMMENT '0=no, 1=si',
  `USB` int(11) NOT NULL COMMENT '0=no, 1=si',
  `WIRELESS` int(11) NOT NULL COMMENT '0=no, 1=si',
  `DUPLEX` int(11) NOT NULL COMMENT '0=no, 1=si',
  `COLOR` int(11) NOT NULL COMMENT '0=no, 1=si',
  `TINTA` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros`
--

CREATE TABLE `otros` (
  `DSIE` varchar(40) COLLATE utf8_bin NOT NULL,
  `CORREO` varchar(40) COLLATE utf8_bin NOT NULL,
  `SERIE` varchar(40) COLLATE utf8_bin NOT NULL,
  `MARCA` varchar(40) COLLATE utf8_bin NOT NULL,
  `MODELO` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pantalla`
--

CREATE TABLE `pantalla` (
  `DSIE` varchar(40) COLLATE utf8_bin NOT NULL,
  `CORREO` varchar(40) COLLATE utf8_bin NOT NULL,
  `SERIE` varchar(40) COLLATE utf8_bin NOT NULL,
  `MARCA` varchar(40) COLLATE utf8_bin NOT NULL,
  `MODELO` varchar(40) COLLATE utf8_bin NOT NULL,
  `PULGADAS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `DSIE` varchar(40) COLLATE utf8_bin NOT NULL,
  `CORREO` varchar(40) COLLATE utf8_bin NOT NULL,
  `SERIE` varchar(40) COLLATE utf8_bin NOT NULL,
  `IMEI` varchar(40) COLLATE utf8_bin NOT NULL,
  `MARCA` varchar(40) COLLATE utf8_bin NOT NULL,
  `MODELO` varchar(40) COLLATE utf8_bin NOT NULL,
  `HDD` int(11) NOT NULL,
  `NUMERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CORREO` varchar(40) COLLATE utf8_bin NOT NULL,
  `NOMBRE` varchar(40) COLLATE utf8_bin NOT NULL,
  `APELLIDOP` varchar(40) COLLATE utf8_bin NOT NULL,
  `APELLIDOM` varchar(40) COLLATE utf8_bin NOT NULL,
  `UNIDAD` varchar(40) COLLATE utf8_bin NOT NULL,
  `CARGO` varchar(40) COLLATE utf8_bin NOT NULL,
  `ANEXO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CORREO`, `NOMBRE`, `APELLIDOP`, `APELLIDOM`, `UNIDAD`, `CARGO`, `ANEXO`) VALUES
('dajimenez@ing.ucsc.cl', 'Diego', 'Jimenez', 'Palacios', 'Soporte-DSI', 'Ayudante', 1234),
('vmhernandez@ing.ucsc.cl', 'Victor', 'Hernandez', 'Vergara', 'Soporte-DSI', 'Ayudante', 1234);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`DSEI`),
  ADD KEY `computador_ibfk_1` (`CORREO`);

--
-- Indices de la tabla `impresora`
--
ALTER TABLE `impresora`
  ADD PRIMARY KEY (`DSIE`),
  ADD KEY `CORREO` (`CORREO`);

--
-- Indices de la tabla `otros`
--
ALTER TABLE `otros`
  ADD PRIMARY KEY (`DSIE`),
  ADD KEY `CORREO` (`CORREO`);

--
-- Indices de la tabla `pantalla`
--
ALTER TABLE `pantalla`
  ADD PRIMARY KEY (`DSIE`),
  ADD KEY `pantalla_ibfk_1` (`CORREO`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`DSIE`),
  ADD KEY `CORREO` (`CORREO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CORREO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `computador`
--
ALTER TABLE `computador`
  ADD CONSTRAINT `computador_ibfk_1` FOREIGN KEY (`CORREO`) REFERENCES `usuario` (`CORREO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `impresora`
--
ALTER TABLE `impresora`
  ADD CONSTRAINT `impresora_ibfk_1` FOREIGN KEY (`CORREO`) REFERENCES `usuario` (`CORREO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `otros`
--
ALTER TABLE `otros`
  ADD CONSTRAINT `otros_ibfk_1` FOREIGN KEY (`CORREO`) REFERENCES `usuario` (`CORREO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pantalla`
--
ALTER TABLE `pantalla`
  ADD CONSTRAINT `pantalla_ibfk_1` FOREIGN KEY (`CORREO`) REFERENCES `usuario` (`CORREO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`CORREO`) REFERENCES `usuario` (`CORREO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
