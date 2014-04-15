-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-04-2014 a las 21:20:13
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;


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

DROP TABLE IF EXISTS `canales`;
CREATE TABLE IF NOT EXISTS `canales` (
  `idcanales` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idcanales`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `canales`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_operadoras`
--

DROP TABLE IF EXISTS `detalle_operadoras`;
CREATE TABLE IF NOT EXISTS `detalle_operadoras` (
  `iddetalle_operadoras` int(11) NOT NULL AUTO_INCREMENT,
  `idcanales` int(11) NOT NULL,
  `idoperadoras` int(11) NOT NULL,
  PRIMARY KEY (`iddetalle_operadoras`),
  KEY `idcanales` (`idcanales`,`idoperadoras`),
  KEY `idoperadoras` (`idoperadoras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `detalle_operadoras`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

DROP TABLE IF EXISTS `dias`;
CREATE TABLE IF NOT EXISTS `dias` (
  `iddias` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`iddias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `dias`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

DROP TABLE IF EXISTS `horarios`;
CREATE TABLE IF NOT EXISTS `horarios` (
  `idhorarios` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `iddias` int(11) NOT NULL,
  PRIMARY KEY (`idhorarios`),
  KEY `iddias` (`iddias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `horarios`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operadoras`
--

DROP TABLE IF EXISTS `operadoras`;
CREATE TABLE IF NOT EXISTS `operadoras` (
  `idoperadoras` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idoperadoras`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `operadoras`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacion`
--

DROP TABLE IF EXISTS `programacion`;
CREATE TABLE IF NOT EXISTS `programacion` (
  `idprogramacion` int(11) NOT NULL AUTO_INCREMENT,
  `idhorarios` int(11) NOT NULL,
  `idprogramas` int(11) NOT NULL,
  PRIMARY KEY (`idprogramacion`),
  KEY `idhorarios` (`idhorarios`,`idprogramas`),
  KEY `idprogramas` (`idprogramas`),
  KEY `idprogramas_2` (`idprogramas`),
  KEY `idprogramas_3` (`idprogramas`),
  KEY `idprogramas_4` (`idprogramas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `programacion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

DROP TABLE IF EXISTS `programas`;
CREATE TABLE IF NOT EXISTS `programas` (
  `idprogramas` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `idcanales` int(11) NOT NULL,
  PRIMARY KEY (`idprogramas`),
  KEY `idcanales` (`idcanales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `programas`
--


--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `detalle_operadoras`
--
ALTER TABLE `detalle_operadoras`
  ADD CONSTRAINT `detalle_operadoras_ibfk_1` FOREIGN KEY (`idcanales`) REFERENCES `detalle_operadoras` (`idcanales`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_operadoras_ibfk_2` FOREIGN KEY (`idoperadoras`) REFERENCES `detalle_operadoras` (`idoperadoras`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`iddias`) REFERENCES `horarios` (`iddias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `programacion`
--
ALTER TABLE `programacion`
  ADD CONSTRAINT `programacion_ibfk_1` FOREIGN KEY (`idhorarios`) REFERENCES `programacion` (`idhorarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programacion_ibfk_2` FOREIGN KEY (`idprogramas`) REFERENCES `programacion` (`idprogramas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `programas_ibfk_1` FOREIGN KEY (`idcanales`) REFERENCES `programas` (`idcanales`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
