-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2020 a las 16:42:42
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sociallove`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contador`
--

CREATE TABLE `contador` (
  `id` int(11) NOT NULL,
  `contador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contador`
--

INSERT INTO `contador` (`id`, `contador`) VALUES
(1, 273712),
(1, 273712),
(1, 273712),
(1, 273712),
(1, 273712),
(1, 273712),
(1, 273712),
(1, 273712);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `login` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `relacion` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `estilo` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `hobbies` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `signo` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `comida` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `profesion` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `deportes` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `alcohol` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `tabaco` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `medidas` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `transporte` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `musica` varchar(250) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`login`, `relacion`, `estilo`, `hobbies`, `signo`, `comida`, `profesion`, `deportes`, `alcohol`, `tabaco`, `medidas`, `transporte`, `musica`) VALUES
('admin', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Aithor', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Alba', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Albert', '', '', '', '', '', '', '', '', '', '0', '', ''),
('AlexTZ', '', '', '', 'sagitario', '', '', 'Skate', '', '', '0', '', ''),
('Alfreda', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Alfredo', '', '', '', '', '', '', '', '', '', 'Altura 1.97m y peso 64 kilos', '', ''),
('AnaHi', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Angeles', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Angie', 'Rollo de una noche', 'Viajero por el mundo', 'Me gusta pasear y robar ancianitas en el parque', 'Geminis', 'Platos regionales', 'Pelador de patatas', 'Futbol', 'A menudo', 'De vez en cuando', 'Altura 1.81m y peso 73 kilos', 'En bici', 'Pop'),
('Antonio', '', '', '', '', '', '', '', 'A menudo', 'A menudo', '0', '', ''),
('Bren', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Canelita', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Carla', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Carles', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Cat', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Celia', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Cristina', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Chechu', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Emilia', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Eusebia', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Eva', '', '', '', '', '', '', '', '', '', '0', '', ''),
('FelipeLuis', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Fernandito', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Hector69', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Iker', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Isa', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Jessi', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Jose', '', '', '', '', '', '', '', '', '', '0', '', ''),
('JoseAntonio', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Juanito', '', '', '', '', '', '', '', '', '', '0', '', ''),
('LaPatri', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Lorena', '', '', '', '', '', '', '', '', '', '0', '', ''),
('LucasLera', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Maddie', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Manu', '', '', '', '', '', '', '', '', '', '0', '', ''),
('MarinaSantos', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Martona', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Mel', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Melisa', '', '', '', '', '', '', '', '', '', '0', '', ''),
('MiguelAngel', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Pako', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Pedritoh', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Rafita', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Rodri', '', '', '', '', '', '', '', '', '', '0', '', ''),
('SamuBPAC', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Sandritah', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Valeria', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Vanesa', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Veronica', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Vity', '', '', '', '', '', '', '', '', '', '0', '', ''),
('Xavi', '', '', '', '', '', '', '', '', '', '0', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emailhechizos`
--

CREATE TABLE `emailhechizos` (
  `login` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `emails` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `invitaciones` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `emailhechizos`
--

INSERT INTO `emailhechizos` (`login`, `emails`, `invitaciones`) VALUES
('angelMorante', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `like`
--

CREATE TABLE `like` (
  `usuario_da_like` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_recibe_like` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `notificado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(11) NOT NULL,
  `usuarioNotificado` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_envia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_recibe` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `texto` mediumtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `usuario_login` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `pago` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_operacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `importe` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_rango` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_has_pedido`
--

CREATE TABLE `producto_has_pedido` (
  `producto_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango`
--

CREATE TABLE `rango` (
  `id` int(11) NOT NULL,
  `descripcion` mediumtext COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio` double NOT NULL,
  `Hechizos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rango`
--

INSERT INTO `rango` (`id`, `descripcion`, `nombre`, `precio`, `Hechizos`) VALUES
(0, '3 Me gustas de empiece', 'Registrado', 0, 3),
(1, '25 Me gustas de mas\r\n20.78€', 'Vip 6 meses', 52.8, 25),
(2, '15 Me gustas de mas\r\n18.78€', 'Vip 3 meses', 32.4, 15),
(3, '5 Me gustas de mas\r\n12.78€', 'Vip 1 mes', 16.8, 5),
(4, '2 Me gustas de mas\r\n0.98€', 'Pass discovery', 6.9, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `descripcion`) VALUES
(0, 'admin'),
(1, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `login` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cambiopass` int(40) NOT NULL,
  `email` varchar(80) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(80) COLLATE utf8_spanish2_ci NOT NULL,
  `edad` int(2) NOT NULL,
  `hechizos` int(11) NOT NULL,
  `genero` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `busco` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `ubicacion` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `rol_id` int(11) NOT NULL,
  `rango_id` int(11) NOT NULL,
  `foto_perfil` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `validacion` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `activada` int(40) NOT NULL,
  `sobreti` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `loquebuscas` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`login`, `password`, `cambiopass`, `email`, `nombre`, `apellidos`, `edad`, `hechizos`, `genero`, `busco`, `ubicacion`, `rol_id`, `rango_id`, `foto_perfil`, `validacion`, `activada`, `sobreti`, `loquebuscas`) VALUES
('Admin', '$2y$10$GN5L9/OG0P5z7k51nwFqLeYJGmkTnAkvCV2BOkcuy8eEugF/2BLLW', 0, 'admin@admin.com', 'Admin', '', 0, 0, 'chico', 'chica', NULL, 0, 0, 'admin.png', '', 0, '', ''),
('Aithor', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'Thor9977@yahoo.com', 'Aitor', '', 27, 3, 'chico', 'chica', 'Alcobendas', 1, 0, 'chico15.jpg', '', 0, '', ''),
('Alba', '$2y$10$GN5L9/OG0P5z7k51nwFqLeYJGmkTnAkvCV2BOkcuy8eEugF/2BLLW', 0, 'alba@gmail.com', 'Alba', '', 24, 2, 'chica', 'chico', 'Aldaia', 1, 0, 'chica1.jpg', '', 0, '', ''),
('Albert', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'albert@hotmail.com', 'Albert', '', 26, 2, 'chico', 'chica', 'Barcelona', 1, 0, 'chico23.jpg', '', 0, '', ''),
('AlexTZ', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'Alextzr@gmail.com', 'Alejandro', '', 32, 3, 'chico', 'chica', 'Peñiscola', 1, 0, 'chico20.jpg', '', 0, '', ''),
('Alfredo', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'alfred111@gmail.com', 'Alfredo', '', 24, 3, 'chico', 'chica', 'Valdemoro', 1, 0, 'chico21.jpg', '', 0, '', ''),
('AnaHi', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'anahi_Madrid@gmail.com', 'Ana', '', 26, 3, 'chica', 'chica', 'Madrid', 1, 0, 'chica16.jpg', '', 0, '', ''),
('Angeles', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'angelesMurciana@gmail.com', 'Angeles', '', 27, 3, 'chica', 'chica', 'Barrio peral', 1, 0, 'chica15.jpg', '', 0, '', ''),
('Angie', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'angelicadel_monte@gmail.com', 'Angelica', '', 23, 22, 'chica', 'chico', 'Vigo', 1, 0, 'chica4.jpg', '', 0, 'SOY PUTAAA', 'NA POLLAAA'),
('Antonio', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'toni@gmail.com', 'Antonio', '', 29, 31, 'chico', 'chica', 'Madrid', 1, 0, 'chico1.jpg', '', 0, '', ''),
('Bren', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'brenda@yahoo.com', 'Brenda', '', 26, 3, 'chica', 'chico', 'Los peñascos', 1, 0, 'chica12.jpg', '', 0, '', ''),
('Canelita', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'canelita@gmail.com', 'Carmen', '', 33, 3, 'chica', 'chico', 'Madrid', 1, 0, 'chica18.jpg', '', 0, '', ''),
('Carla', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'carlita@gmail.com', 'Carla', '', 22, 3, 'chica', 'chico', 'mollet del valles', 1, 0, 'chica7.jpg', '', 0, '', ''),
('Carles', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'carlesBartolo@gmail.com', 'Carles', '', 20, 3, 'chico', 'chica', 'Sabadell', 1, 0, 'chico7.jpg', '', 0, '', ''),
('Cat', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'catalina@gmail.com', 'Catalina', '', 19, 3, 'chica', 'chica', 'Burgos', 1, 0, 'chica14.jpg', '', 0, '', ''),
('Celia', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'celia@terra.es', 'Celia', '', 19, 3, 'chica', 'chico', 'Salamanca', 1, 0, 'chica13.jpg', '', 0, '', ''),
('Cristina', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'CristinitaGetafe@gmail.com', 'Cristina', '', 31, 3, 'chica', 'chico', 'Madrid', 1, 0, 'chica10.jpg', '', 0, '', ''),
('Chechu', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'jesus@hotmail.com', 'Jesús', '', 25, 3, 'chico', 'chico', 'Montserrat', 1, 0, 'chico8.jpg', '', 0, '', ''),
('Eva', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'evamaria@gmail.com', 'Eva', '', 21, 3, 'chica', 'chico', 'Sevilla', 1, 0, 'chica23.jpg', '', 0, '', ''),
('FelipeLuis', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'FelipeLuis@yahoo.com', 'Felipe', '', 34, 3, 'chico', 'chica', 'Sevilla', 1, 0, 'chico19.jpg', '', 0, '', ''),
('Fernandito', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'ferElMorenohDeFuenla@gmail.com', 'Fernando', '', 24, 3, 'chico', 'chica', 'Fuenlabrada', 1, 0, 'chico12.jpg', '', 0, '', ''),
('Hector69', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'HectorGarri@hotmail.com', 'Hector', '', 21, 3, 'chico', 'chica', 'Segovia', 1, 0, 'chico16.jpg', '', 0, '', ''),
('Iker', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'IkerCasillas@gmail.com', 'Iker', '', 23, 3, 'chico', 'chica', 'Móstoles', 1, 0, 'chico13.jpg', '', 0, '', ''),
('Isa', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'isabella@gmail.com', 'isabel', '', 23, 3, 'chica', 'chico', 'Huesca', 1, 0, 'chica5.jpg', '', 0, '', ''),
('Jessi', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'jesikaMartinez@gmail.com', 'Jesica', '', 29, 3, 'chica', 'chico', 'Toledo', 1, 0, 'chica3.jpg', '', 0, '', ''),
('Jose', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'josito@hotmail.com', 'Jose Manuel', '', 25, 3, 'chico', 'chica', 'Barcelona', 1, 0, 'chico2.jpg', '', 0, '', ''),
('JoseAntonio', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'JoseAntonioGarcia@hotmail.com', 'Jose.A', '', 19, 3, 'chico', 'chica', 'Madrid', 1, 0, 'chico6.jpg', '', 0, '', ''),
('Juanito', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'JuanTorres@gmail.com', 'Juan', '', 32, 3, 'chico', 'chica', 'Getafe', 1, 0, 'chico5.jpg', '', 0, '', ''),
('LaPatri', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'LaPatriLoRompe@gmail.com', 'Patri', '', 28, 3, 'chica', 'chico', 'Valencia', 1, 0, 'chica19.jpg', '', 0, '', ''),
('Lorena', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'lore@gmail.com', 'Lorena', '', 28, 3, 'chica', 'chico', 'Teruel', 1, 0, 'chica6.jpg', '', 0, '', ''),
('Lucas Lera', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'lucasLera@musica.com', 'Lucas', '', 18, 3, 'chico', 'chico', 'Pinto', 1, 0, 'chico17.jpg', '', 0, '', ''),
('Maddie', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'maddi98@gmail.com', 'Maddie', '', 21, 3, 'chica', 'chica', 'Valladolid', 1, 0, 'chica21.jpg', '', 0, '', ''),
('Manu', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'manolin@yahoo.com', 'Manuel', '', 28, 3, 'chico', 'chica', 'Valencia', 1, 0, 'chico3.jpg', '', 0, '', ''),
('MarinaSantos', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'marinaSantoValle@gmail.com', 'Marina Santos', '', 30, 3, 'chica', 'chico', 'Sangarren', 1, 0, 'chica9.jpg', '', 0, '', ''),
('Martona', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'martitaGuapa@gmail.com', 'Marta', '', 18, 3, 'chica', 'chico', 'Pineda de mar', 1, 0, 'chica8.jpg', '', 0, '', ''),
('Mel', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'melani@gmail.com', 'Melani', '', 26, 3, 'chica', 'chico', 'Barcelona', 1, 0, 'chica2.jpg', '', 0, '', ''),
('Melisa', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'melisaMelisa@hotmail.com', 'Melisa', '', 25, 3, 'chica', 'chico', 'Cantabria', 1, 0, 'chica22.jpg', '', 0, '', ''),
('MiguelAngel', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'miguelito@hotmail.com', 'Miguel Angel', '', 28, 3, 'chico', 'chica', 'Valencia', 1, 0, 'chico10.jpg', '', 0, '', ''),
('Pako', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'franciscofdez@gmail.com', 'Francisco', '', 26, 3, 'chico', 'chica', 'Alcalá de Henares', 1, 0, 'chico4.jpg', '', 0, '', ''),
('Pedritoh', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'PedritohReshulon@gmail.com', 'Pedro', '', 22, 3, 'chico', 'chico', 'Castellón', 1, 0, 'chico11.jpg', '', 0, '', ''),
('Rafita', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'rafi@gmail.com', 'Rafa', '', 30, 3, 'chico', 'chica', 'Leganés', 1, 0, 'chico9.jpg', '', 0, '', ''),
('Rodri', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'rodenas@gmail.com', 'Rodrigo', '', 22, 3, 'chico', 'chica', 'Madrid', 1, 0, 'chico24.jpg', '', 0, '', ''),
('SamuBPAC', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'SamuBripac@hotmail.com', 'Samuel', '', 29, 3, 'chico', 'chica', 'S.S de los Reyes', 1, 0, 'chico14.jpg', '', 0, '', ''),
('Sandritah', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'sandritaReshulona@hotmail.com', 'Sandra', '', 31, 3, 'chica', 'chica', 'Salamanca', 1, 0, 'chica17.jpg', '', 0, '', ''),
('Valeria', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'valeria@hotmail.com', 'Valeria', '', 19, 3, 'chica', 'chica', 'Madrid', 1, 0, 'chica11.jpg', '', 0, '', ''),
('Vanesa', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'vanesa@yahoo.es', 'Vanesa', '', 35, 3, 'chica', 'chico', 'La rioja', 1, 0, 'chica20.jpg.webp', '', 0, '', ''),
('Veronica', '$2y$10$9enIPzbe2qFP1XvV.yfq5enbz/w.LZDA9FPXya4jmPzshkZh1voaW', 0, 'VeronicaGarcia@hotmail.com', 'Veronica', '', 29, 3, 'chica', 'chico', 'Malaga', 1, 0, 'chica24.jpg', '', 0, '', ''),
('Vity', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'Vi99_Love@hotmail.com', 'Victor', '', 31, 3, 'chico', 'chica', 'Toledo', 1, 0, 'chico18.jpg', '', 0, '', ''),
('Xavi', '$2y$10$qi2vgQCkaFLFQhGpIg6aMOr3c3Fmnal49sdAa1bbFDT5Gzp7u2zU6', 0, 'xavi77@hotmail.com', 'Xavier', '', 30, 3, 'chico', 'chico', 'Igualada', 1, 0, 'chico22.jpg', '', 0, '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`login`),
  ADD KEY `login` (`login`);

--
-- Indices de la tabla `emailhechizos`
--
ALTER TABLE `emailhechizos`
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `login_2` (`login`);

--
-- Indices de la tabla `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`usuario_da_like`,`usuario_recibe_like`),
  ADD KEY `fk_usuario_has_usuario_usuario2_idx` (`usuario_recibe_like`),
  ADD KEY `fk_usuario_has_usuario_usuario1_idx` (`usuario_da_like`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`,`usuario_envia`,`usuario_recibe`),
  ADD KEY `fk_usuario_has_usuario_usuario4_idx` (`usuario_recibe`),
  ADD KEY `fk_usuario_has_usuario_usuario3_idx` (`usuario_envia`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_login_idx` (`usuario_login`),
  ADD KEY `id_rango_idx` (`id_rango`);

--
-- Indices de la tabla `producto_has_pedido`
--
ALTER TABLE `producto_has_pedido`
  ADD PRIMARY KEY (`producto_id`,`pedido_id`),
  ADD KEY `fk_Producto_has_Pedido_Pedido1_idx` (`pedido_id`),
  ADD KEY `fk_Producto_has_Pedido_Producto_idx` (`producto_id`);

--
-- Indices de la tabla `rango`
--
ALTER TABLE `rango`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`login`,`rol_id`,`rango_id`),
  ADD KEY `fk_usuario_rol_idx` (`rol_id`),
  ADD KEY `fk_usuario_rango1_idx` (`rango_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `fk_usuario_has_usuario_usuario1` FOREIGN KEY (`usuario_da_like`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_has_usuario_usuario2` FOREIGN KEY (`usuario_recibe_like`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `fk_usuario_has_usuario_usuario3` FOREIGN KEY (`usuario_envia`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_has_usuario_usuario4` FOREIGN KEY (`usuario_recibe`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `id_rango` FOREIGN KEY (`id_rango`) REFERENCES `rango` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_login` FOREIGN KEY (`usuario_login`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_has_pedido`
--
ALTER TABLE `producto_has_pedido`
  ADD CONSTRAINT `fk_Producto_has_Pedido_Pedido1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Producto_has_Pedido_Producto` FOREIGN KEY (`producto_id`) REFERENCES `rango` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_rango1` FOREIGN KEY (`rango_id`) REFERENCES `rango` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
