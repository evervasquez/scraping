-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-04-2014 a las 00:22:28
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='estado\r\n----------------\r\n1 = activo\r\n0 = inactivo' AUTO_INCREMENT=177 ;

--
-- Volcado de datos para la tabla `canales`
--

INSERT INTO `canales` (`descripcion`, `imagen`, `estado`, `idcanales`) VALUES
('Frecuencia Latina', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FRECUENCIALATINA.jpg', 1, 32),
('CMD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CMD.jpg', 1, 33),
('AmÃ©rica TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_AMERICATV.jpg', 1, 34),
('Panamericana TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_PANAMERICANATV.jpg', 1, 35),
('Plus TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_PLUSTV.jpg', 1, 36),
('TV PerÃº', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TVPERÃš.jpg', 1, 37),
('Canal N', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CANALN.jpg', 1, 38),
('ATV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ATV.jpg', 1, 39),
('RPP TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_RPPTV.jpg', 1, 40),
('RBC', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_RBC.jpg', 1, 41),
('TL Novelas', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TLNOVELAS.jpg', 1, 42),
('Global TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_GLOBALTV.jpg', 1, 43),
('Yups', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_YUPS.jpg', 1, 44),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CANALDELASESTRELLAS.jpg', 1, 45),
('La Tele PerÃº', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_LATELE.jpg', 1, 46),
('ATV ', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ATV-.jpg', 1, 47),
('Willax', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_WILLAX.jpg', 1, 48),
('Fox Extra 24', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXEXTRA.jpg', 1, 49),
('TNT', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TNT.jpg', 1, 50),
('Sony', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_SONY.jpg', 1, 51),
('Warner', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_WARNER.jpg', 1, 52),
('Fox Channel', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXCHANNEL.jpg', 1, 53),
('AXN', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_AXN.jpg', 1, 54),
('Universal', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_UNIVERSAL.jpg', 1, 55),
('TBS Veryfunny', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TBSVERYFUNNY.jpg', 1, 56),
('A', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_AE.jpg', 1, 57),
('FX', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FX.jpg', 1, 58),
('SyFy', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_SYFY.jpg', 1, 59),
('Sony Spin', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_SONYSPIN.jpg', 1, 60),
('BBC Entertainment', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_BBCENTERTAINMENT.jpg', 1, 61),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ID-INVESTIGATIONDISCOVERY.jpg', 1, 62),
('Tru TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TRUTV.jpg', 1, 63),
('TCM', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TCM.jpg', 1, 64),
('Space', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_SPACE.jpg', 1, 65),
('MGM', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MGM.jpg', 1, 66),
('I.Sat', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_I.SAT.jpg', 1, 67),
('Film Zone', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_THEFILMZONE.jpg', 1, 68),
('Golden', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_GOLDEN.jpg', 1, 69),
('Studio Universal', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_STUDIOUNIVERSAL.jpg', 1, 70),
('De PelÃ­cula', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_DEPELÃCULA.jpg', 1, 71),
('Europa Europa', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_EUROPAEUROPA.jpg', 1, 72),
('Eurochannel', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_EUROCHANNEL.jpg', 1, 73),
('Cinecanal', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CINECANAL.jpg', 1, 74),
('Cinemax', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CINEMAX.jpg', 1, 75),
('HBO', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_HBO.jpg', 1, 76),
('HBO Signature', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_HBOSIGNATURE.jpg', 1, 77),
('HBO Family', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_HBOFAMILY.jpg', 1, 78),
('HBO 2', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_HBO2.jpg', 1, 79),
('Max', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MAX.jpg', 1, 80),
('HBO Plus Oeste', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_HBOPLUSOESTE.jpg', 1, 81),
('HBO Plus Este', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_HBOPLUSESTE.jpg', 1, 82),
('Max Prime Oeste', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MAXPRIMEOESTE.jpg', 1, 83),
('Max Prime Este', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MAXPRIMEESTE.jpg', 1, 84),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MOVIECITYPREMIERESESTE.jpg', 1, 85),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MOVIECITYPREMIERESOESTE.jpg', 1, 86),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MOVIECITYFAMILYESTE.jpg', 1, 87),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MOVIECITYFAMILYOESTE.jpg', 1, 88),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MOVIECITYACTIONESTE.jpg', 1, 89),
('Moviecity Mundo', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MOVIECITYMUNDO.jpg', 1, 90),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MOVIECITYHOLLYWOOD.jpg', 1, 91),
('Moviecity Classics', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MOVIECITYCLASSICS.jpg', 1, 92),
('Discovery Channel', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_DISCOVERYCHANNEL.jpg', 1, 93),
('History Channel', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_THEHISTORYCHANNEL.jpg', 1, 94),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_NATIONALGEOGRAPHIC.jpg', 1, 95),
('Bio', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_THEBIOGRAPHYCHANNEL.jpg', 1, 96),
('Infinito', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_INFINITO.jpg', 1, 97),
('Film ', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FILMARTS.jpg', 1, 98),
('Discovery Science', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_DISCOVERYSCIENCE.jpg', 1, 99),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_DISCOVERYCIVILIZATION.jpg', 1, 100),
('Discovery Turbo', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_DISCOVERYTURBO.jpg', 1, 101),
('E! Entertainment', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_E!ENTERTAINMENT.jpg', 1, 102),
('TLC', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TLC.jpg', 1, 103),
('Home ', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_HOMEHEALTH.jpg', 1, 104),
('Fusion', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FUSION.jpg', 1, 105),
('El Gourmet', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ELGOURMET.jpg', 1, 106),
('Mundo Fox', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MUNDOFOX.jpg', 1, 107),
('Cosmopolitan TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_COSMOPOLITANTV.jpg', 1, 108),
('Casa Club', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CASACLUB.jpg', 1, 109),
('Fox Life', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXLIFE.jpg', 1, 110),
('Glitz', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_GLITZ.jpg', 1, 111),
('Telemundo', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TELEMUNDO.jpg', 1, 112),
('Cartoon Network', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CARTOONNETWORK.jpg', 1, 113),
('Discovery Kids', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_DISCOVERYKIDS.jpg', 1, 114),
('Disney XD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_DISNEYXD.jpg', 1, 115),
('Boomerang', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_BOOMERANG.jpg', 1, 116),
('Nickelodeon', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_NICKELODEON.jpg', 1, 117),
('Disney Channel', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_DISNEYCHANNEL.jpg', 1, 118),
('Animal Planet', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ANIMALPLANET.jpg', 1, 119),
('Disney Junior', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_DISNEYJUNIOR.jpg', 1, 120),
('BBC Cbeebies', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_BBCCBEEBIES.jpg', 1, 121),
('Fox Sports Premium', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXSPORTSPREMIUM.jpg', 1, 122),
('Fox Sports 2', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXSPORTS2.jpg', 1, 123),
('Fox Sports 3', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXSPORTS3.jpg', 1, 124),
('ESPN', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ESPN.jpg', 1, 125),
('ESPN  ', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ESPN-.jpg', 1, 126),
('ESPN 3', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ESPN3.jpg', 1, 127),
('Gol TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_GOLTV.jpg', 1, 128),
('Golf Channel', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_GOLFCHANNEL.jpg', 1, 129),
('Toros TV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TOROSTV.jpg', 1, 130),
('Wobi', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_WOBI.jpg', 1, 131),
('CNN EspaÃ±ol', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CNNESPAÃ‘OL.jpg', 1, 132),
('CNN Internacional', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CNNINTERNACIONAL.jpg', 1, 133),
('BBC World News', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_BBCWORLDNEWS.jpg', 1, 134),
('Fox News', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXNEWS.jpg', 1, 135),
('Bloomberg', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_BLOOMBERG.jpg', 1, 136),
('EWTN-Pax', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_EWTN-PAX.jpg', 1, 137),
('Enlace TBN', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ENLACETBN.jpg', 1, 138),
('MTV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MTV.jpg', 1, 139),
('MTV Hits', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MTVHITS.jpg', 1, 140),
('VH1', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_VH1.jpg', 1, 141),
('HTV', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_HTV.jpg', 1, 142),
('Ritmoson', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_RITMOSON.jpg', 1, 143),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FRECUENCIALATINAHD.jpg', 1, 144),
('CMD HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CMDHD.jpg', 1, 145),
('AmÃ©rica TV HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_AMERICATVHD.jpg', 1, 146),
('Panamericana HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_PANAMERICANAHD.jpg', 1, 147),
('Plus TV HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_PLUSTVHD.jpg', 1, 148),
('TV PerÃº HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TVPERÃšHD.jpg', 1, 149),
('ATV HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ATVHD.jpg', 1, 150),
('Fox Nat Geo HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXNATGEOHD.jpg', 1, 151),
('Sony HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_SONYHD.jpg', 1, 152),
('Warner Channel HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_WARNERCHANNELHD.jpg', 1, 153),
('AXN HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_AXNHD.jpg', 1, 154),
('Universal HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_UNIVERSALHD.jpg', 1, 155),
('Fx_HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FX_HD.jpg', 1, 156),
('A', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_AEHD.jpg', 1, 157),
('BBC HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_BBCHD.jpg', 1, 158),
('Tru TV HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TRUTVHD.jpg', 1, 159),
('TNT HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TNTHD.jpg', 1, 160),
('Film Zone HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FILMZONEHD.jpg', 1, 161),
('Space HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_SPACEHD.jpg', 1, 162),
('MGM HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_MGMHD.jpg', 1, 163),
('Golden HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_GOLDENHD.jpg', 1, 164),
('Cinecanal HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CINECANALHD.jpg', 1, 165),
('', '#', 1, 166),
('ESPN HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ESPNHD.jpg', 1, 167),
('ESPN 3 HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_ESPN3HD.jpg', 1, 168),
('Fox Sports HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_FOXSPORTSHD.jpg', 1, 169),
('Fox Sports 2 HD', '#', 1, 170),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_DISCOVERYTHEATERHD.jpg', 1, 171),
('Nat Geo Wild HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_NATGEOWILDHD.jpg', 1, 172),
('History Channel HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_THEHISTORYCHANNELHD.jpg', 1, 173),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_CANALDELASESTRELLASHD.jpg', 1, 174),
('TLC HD', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_TLCHD.jpg', 1, 175),
('', 'http://cdn.movistar.com.pe/Content/CMS/EquipoTerra/MovistarTV/Canales/Imagenes/PEQ_HOMEHEALTHHD.jpg', 1, 176);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
