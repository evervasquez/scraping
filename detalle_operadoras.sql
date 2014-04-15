-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-04-2014 a las 21:17:15
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


--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `detalle_operadoras`
--
ALTER TABLE `detalle_operadoras`
  ADD CONSTRAINT `detalle_operadoras_ibfk_1` FOREIGN KEY (`idcanales`) REFERENCES `detalle_operadoras` (`idcanales`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_operadoras_ibfk_2` FOREIGN KEY (`idoperadoras`) REFERENCES `detalle_operadoras` (`idoperadoras`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
