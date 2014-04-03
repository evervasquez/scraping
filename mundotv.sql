-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-04-2014 a las 20:18:28
-- Versión del servidor: 5.5.36-MariaDB
-- Versión de PHP: 5.5.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mundotv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canales`
--

CREATE TABLE IF NOT EXISTS `canales` (
  `descripcion` varchar(100) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `estado` smallint(1) DEFAULT '1',
  `idcanales` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idcanales`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='estado\r\n----------------\r\n1 = activo\r\n0 = inactivo' AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `canales`
--

INSERT INTO `canales` (`descripcion`, `imagen`, `estado`, `idcanales`) VALUES
('Frecuencia Latina', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FRECUENCIALATINA.jpg', 1, 9),
('CMD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CMD.jpg', 1, 10),
('AmÃ©rica TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_AMERICATV.jpg', 1, 11),
('Panamericana TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_PANAMERICANATV.jpg', 1, 12),
('Plus TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_PLUSTV.jpg', 1, 13),
('TV PerÃº', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TVPERÃš.jpg', 1, 14),
('Canal N', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CANALN.jpg', 1, 15),
('ATV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ATV.jpg', 1, 16),
('RPP TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_RPPTV.jpg', 1, 17),
('RBC', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_RBC.jpg', 1, 18),
('TL Novelas', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TLNOVELAS.jpg', 1, 19),
('Global TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_GLOBALTV.jpg', 1, 20),
('Yups', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_YUPS.jpg', 1, 21),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CANALDELASESTRELLAS.jpg', 1, 22),
('La Tele PerÃº', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_LATELE.jpg', 1, 23),
('ATV ', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ATV-.jpg', 1, 24),
('Willax', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_WILLAX.jpg', 1, 25),
('Fox Extra 24', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXEXTRA.jpg', 1, 26),
('TNT', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TNT.jpg', 1, 27),
('Sony', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_SONY.jpg', 1, 28),
('Warner', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_WARNER.jpg', 1, 29),
('Fox Channel', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXCHANNEL.jpg', 1, 30),
('AXN', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_AXN.jpg', 1, 31);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
