-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Dim 11 Janvier 2015 à 22:30
-- Version du serveur: 5.5.40
-- Version de PHP: 5.4.35-0+deb7u2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `soutien`
--
CREATE DATABASE `soutien` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `soutien`;

-- --------------------------------------------------------

--
-- Structure de la table `friendship`
--

CREATE TABLE IF NOT EXISTS `friendship` (
  `id_first` int(11) NOT NULL,
  `id_second` int(11) NOT NULL,
  `date` date NOT NULL,
  `validated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `friendship`
--

INSERT INTO `friendship` (`id_first`, `id_second`, `date`, `validated`) VALUES
(1, 3, '2015-01-08', 1),
(2, 3, '2015-01-06', 0),
(3, 2, '2015-01-10', 1),
(1, 5, '2015-01-04', 1),
(1, 4, '2015-01-07', 0);

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `members`
--

INSERT INTO `members` (`id`, `login`, `password`, `firstname`, `lastname`, `mail`) VALUES
(1, 'dasson_g', 'd524f69e7ac4eb1d0c9720ad9dc570f8a4d4ecbc', 'Gustave', 'Dassonville', 'gustave.dassonville@epitech.eu'),
(2, 'barth_l', 'd524f69e7ac4eb1d0c9720ad9dc570f8a4d4ecbc', 'Louis', 'Barth', 'louis.barth@epitech.eu'),
(3, 'deslog_m', 'd524f69e7ac4eb1d0c9720ad9dc570f8a4d4ecbc', 'Mathias', 'Desloges', 'mathias.desloges@epitech.eu'),
(4, 'viger_s', 'd524f69e7ac4eb1d0c9720ad9dc570f8a4d4ecbc', 'Sophie', 'Viger', 'sophie.viger@epitech.eu'),
(5, 'prudho_m', 'd524f69e7ac4eb1d0c9720ad9dc570f8a4d4ecbc', 'Max', 'Prudhomme', 'max.prudhomme@epitech.eu');

-- --------------------------------------------------------

--
-- Structure de la table `privatemsg`
--

CREATE TABLE IF NOT EXISTS `privatemsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sender` int(11) NOT NULL,
  `id_receiver` int(11) NOT NULL,
  `posted` date NOT NULL,
  `viewed` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `privatemsg`
--

INSERT INTO `privatemsg` (`id`, `id_sender`, `id_receiver`, `posted`, `viewed`, `message`) VALUES
(1, 1, 2, '2015-01-08', 0, 'Je sais pas pourquoi, mais je me demande si ce message va arriver !'),
(2, 3, 4, '2015-01-05', 1, 'Réunion demain à 14h du coup ?'),
(3, 4, 3, '2015-01-05', 1, 'C''est bien ça :)');

-- --------------------------------------------------------

--
-- Structure de la table `wallmsg`
--

CREATE TABLE IF NOT EXISTS `wallmsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_member` int(11) NOT NULL,
  `content` text NOT NULL,
  `posted` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wallmsg`
--

INSERT INTO `wallmsg` (`id`, `id_member`, `content`, `posted`) VALUES
(1, 1, 'Premier message de mon mur !', '2015-01-07'),
(2, 2, 'Hahahaha je suis un troll :D', '2015-01-05'),
(3, 3, 'Ce TP est bien fait je trouve.\r\n\r\nFéliciations :D', '2015-01-10'),
(4, 5, 'Une honte ! Jamais je n''aurais participé à cette supercherie :/', '2015-01-08'),
(5, 1, 'Un second. Ca sert à rien mais c''est cool je trouve.', '2015-01-09');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
