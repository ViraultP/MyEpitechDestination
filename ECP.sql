-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 02 juin 2021 à 11:33
-- Version du serveur :  8.0.25-0ubuntu0.20.10.1
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ECP`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `auteur` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `universiteId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `auteur`, `titre`, `description`, `image`, `createdAt`, `updatedAt`, `universiteId`) VALUES
(1, 'Alice', 'Sydney', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\sydney.jpg', '2021-05-31 14:43:42', '2021-05-31 14:43:42', 11),
(2, 'Grégoire', 'Singapour', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\singapour.jpg', '2021-05-31 14:44:39', '2021-05-31 14:44:39', 72),
(3, 'Karim', 'San Francisco', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\san-francisco.jpg', '2021-05-31 14:44:57', '2021-05-31 14:44:57', 90),
(4, 'Nicolas', 'New York', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\ny.jpg', '2021-05-31 15:18:56', '2021-05-31 15:18:56', 84),
(5, 'Alexandre', 'Stockolm', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\stockholm.jpg', '2021-05-31 14:45:32', '2021-05-31 14:45:32', 73),
(6, 'Pauline', 'Londres', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\london.jpg', '2021-05-31 14:45:47', '2021-05-31 14:45:47', 7),
(7, 'Thomas', 'Los Angeles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\losangeles.jpg', '2021-06-01 17:37:23', '2021-06-01 17:37:23', 89),
(8, 'Adrien', 'Berlin', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\berlin.jpg', '2021-06-01 18:29:52', '2021-06-01 18:29:52', 3),
(9, 'Tom', 'Bruxelles', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\bruxelles.jpg', '2021-06-01 18:30:05', '2021-06-01 18:30:05', 14),
(10, 'Vincent', 'Rio de Janeiro', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\rio.jpg', '2021-06-01 18:30:21', '2021-06-01 18:30:21', 17),
(11, 'Andrea', 'Montréal', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\montreal.jpg', '2021-06-01 18:30:50', '2021-06-01 18:30:50', 18),
(12, 'Jérôme', 'Afrique du Sud', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n It is a long established fact that a reader will be distracted.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\nMany desktop publishing packages  Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'public\\images\\southafrica.jpg', '2021-06-01 18:31:20', '2021-06-01 18:31:20', 1),
(13, 'Sarah', 'Shanghai', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'public\\images\\Shanghai.jpg', '2021-06-01 21:37:44', '2021-06-01 21:37:44', 25);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `createdAt`, `updatedAt`) VALUES
(1, 'restauration', '2021-05-28 16:10:10', '2021-05-28 16:10:10'),
(2, 'Site vernaculaire', '2021-05-28 16:10:10', '2021-05-28 16:10:10'),
(3, 'activité', '2021-05-28 16:10:39', '2021-05-28 16:10:39'),
(4, 'hébergement', '2021-05-28 16:10:39', '2021-05-28 16:10:39');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_articles`
--

CREATE TABLE `categorie_articles` (
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `articleId` int NOT NULL,
  `categorieId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorie_articles`
--

INSERT INTO `categorie_articles` (`createdAt`, `updatedAt`, `articleId`, `categorieId`) VALUES
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 1, 2),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 2, 4),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 3, 3),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 4, 2),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 5, 3),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 6, 2),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 7, 1),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 8, 1),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 9, 3),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 10, 3),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 11, 1),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 12, 4),
('2021-06-02 11:33:25', '2021-06-02 11:33:25', 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `commentaire` text,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `articleId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `nom`, `commentaire`, `createdAt`, `updatedAt`, `articleId`) VALUES
(1, 'Sarah', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum augue nisl, pharetra vel orci molestie, fringilla tincidunt dui. Nulla dui erat, pretium vitae ligula sit amet, volutpat vulputate lorem. ', '2021-06-01 06:40:35', '2021-06-01 06:40:35', 1),
(2, 'Andréa', 'Vestibulum tempus mauris non nulla ornare, vel suscipit mi interdum. Nam mi risus, facilisis vitae massa a, consectetur ultrices enim. Cras eu enim sit amet erat auctor consequat in quis diam. Phasellus nec turpis augue. Mauris maximus hendrerit lectus euismod vehicula. Praesent eu laoreet nulla. Donec tristique ligula vitae nulla faucibus, id mattis augue tempor. Curabitur nec elit scelerisque, eleifend sem ut, interdum lectus. Morbi ultrices neque ac sapien tempus, eu facilisis lorem volutpat. Nam eu sollicitudin orci.', '2021-06-01 06:40:44', '2021-06-01 06:40:44', 1),
(3, 'Benjamin', 'Ut faucibus eleifend tortor, id venenatis nisi.', '2021-06-01 06:41:08', '2021-06-01 06:41:08', 2),
(4, 'Carla', 'Ut faucibus eleifend tortor, id venenatis nisi.\r\n\r\nVestibulum tempus mauris non nulla ornare, vel suscipit mi interdum. Nam mi risus, facilisis vitae massa a, consectetur ultrices enim. Cras eu enim sit amet erat auctor consequat in quis diam. Phasellus nec turpis augue. Mauris maximus hendrerit lectus euismod vehicula. Praesent eu laoreet nulla. Donec tristique ligula vitae nulla faucibus, id mattis augue tempor. Curabitur nec elit scelerisque, eleifend sem ut, interdum lectus. Morbi ultrices neque ac sapien tempus, eu facilisis lorem volutpat. Nam eu sollicitudin orci.', '2021-06-01 06:42:46', '2021-06-01 06:42:46', 2),
(5, 'Margaux ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum augue nisl, pharetra vel orci molestie, fringilla tincidunt dui. Nulla dui erat, pretium vitae ligula sit amet, volutpat vulputate lorem. Fusce molestie et lectus vehicula sollicitudin. Quisque vulputate ac urna imperdiet malesuada. Proin viverra justo quis suscipit tempus. ', '2021-06-01 07:33:45', '2021-06-01 07:33:45', 3),
(6, 'Anna', 'Mauris iaculis lorem ac ornare viverra.', '2021-06-01 07:35:25', '2021-06-01 07:35:25', 3),
(7, 'Antoine', 'Ut faucibus eleifend tortor, id venenatis nisi. Sed in felis neque. Aliquam auctor tristique laoreet. Nulla a dui lacus. Nam malesuada aliquam tortor eget sodales. Fusce aliquam, ante posuere blandit imperdiet, nibh massa volutpat lacus, in eleifend eros justo vel lacus. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '2021-06-01 07:35:37', '2021-06-01 07:35:37', 4),
(8, 'Adrien', 'Morbi sed fermentum mi, vel semper velit. Duis vel nunc varius, vulputate turpis a, viverra urna. Praesent semper, lorem at tempor scelerisque, elit orci feugiat leo, eu condimentum dolor sapien eget libero. Nulla consectetur justo vitae augue aliquet, varius venenatis quam tincidunt. Donec imperdiet imperdiet lectus, semper viverra sapien semper a. Etiam pretium molestie purus consectetur consequat. Donec imperdiet efficitur purus. Pellentesque tincidunt rutrum viverra. Etiam eget magna id ex mollis ornare. Sed vel eros nunc. Maecenas quis nisl non diam consectetur vulputate vitae id enim.', '2021-06-01 07:35:48', '2021-06-01 07:35:48', 4),
(9, 'Simone', 'Vestibulum tempus mauris non nulla ornare, vel suscipit mi interdum. Nam mi risus, facilisis vitae massa a, consectetur ultrices enim. Cras eu enim sit amet erat auctor consequat in quis diam. Phasellus nec turpis augue. Mauris maximus hendrerit lectus euismod vehicula. Praesent eu laoreet nulla. Donec tristique ligula vitae nulla faucibus, id mattis augue tempor. ', '2021-06-01 10:44:52', '2021-06-01 10:44:52', 5),
(10, 'Océane', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2021-06-01 10:45:39', '2021-06-01 10:45:39', 5),
(11, 'Clément ', 'Mauris iaculis lorem ac ornare viverra. Mauris euismod egestas ultrices. Etiam vulputate auctor magna in varius. Donec cursus vitae urna ac scelerisque. Nullam imperdiet odio eu dui posuere varius. Aenean a tortor posuere, viverra lacus vitae, tristique urna. Vestibulum id hendrerit tellus, eget lacinia quam. Quisque at semper nulla. Sed dui eros, hendrerit semper ipsum eget, fringilla dapibus risus. Donec auctor scelerisque turpis sit amet dictum. Quisque non scelerisque urna, at pellentesque sem. Curabitur sed porttitor ex. Maecenas molestie vel diam in pretium.', '2021-06-01 10:46:14', '2021-06-01 10:46:14', 6),
(12, 'Estelle', 'Morbi sed fermentum mi, vel semper velit. Duis vel nunc varius, vulputate turpis a, viverra urna. Praesent semper, lorem at tempor scelerisque, elit orci feugiat leo, eu condimentum dolor sapien eget libero. ', '2021-06-01 10:46:14', '2021-06-01 10:46:14', 6);

-- --------------------------------------------------------

--
-- Structure de la table `continents`
--

CREATE TABLE `continents` (
  `id` int NOT NULL,
  `Continent` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `continents`
--

INSERT INTO `continents` (`id`, `Continent`, `createdAt`, `updatedAt`) VALUES
(1, 'Afrique', '2021-05-20 22:02:59', '2021-05-20 22:02:59'),
(2, 'Amérique du Nord', '2021-05-20 22:02:59', '2021-05-20 22:02:59'),
(3, 'Amérique du Sud', '2021-05-20 22:02:59', '2021-05-20 22:02:59'),
(4, 'Antarctique', '2021-05-20 22:02:59', '2021-05-20 22:02:59'),
(5, 'Asie', '2021-05-20 22:02:59', '2021-05-20 22:02:59'),
(6, 'Europe', '2021-05-20 22:05:34', '2021-05-20 22:05:34'),
(7, 'Océanie', '2021-05-20 22:05:34', '2021-05-20 22:05:34');

-- --------------------------------------------------------

--
-- Structure de la table `continent_etats`
--

CREATE TABLE `continent_etats` (
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `continentId` int NOT NULL,
  `etatId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `continent_etats`
--

INSERT INTO `continent_etats` (`createdAt`, `updatedAt`, `continentId`, `etatId`) VALUES
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 1, 1),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 2, 9),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 2, 26),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 2, 37),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 3, 4),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 3, 8),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 3, 10),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 3, 12),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 6),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 11),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 13),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 19),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 20),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 22),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 25),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 31),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 32),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 34),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 35),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 5, 36),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 2),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 3),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 7),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 14),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 15),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 16),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 17),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 18),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 21),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 23),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 24),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 27),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 28),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 29),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 30),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 31),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 33),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 36),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 38),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 6, 39),
('2021-05-28 15:50:17', '2021-05-28 15:50:17', 7, 5);

-- --------------------------------------------------------

--
-- Structure de la table `etats`
--

CREATE TABLE `etats` (
  `id` int NOT NULL,
  `Pays` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `etats`
--

INSERT INTO `etats` (`id`, `Pays`, `createdAt`, `updatedAt`) VALUES
(1, 'Afrique du Sud', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(2, 'Allemagne', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(3, 'Angleterre', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(4, 'Argentine', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(5, 'Australie', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(6, 'Bahreïn', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(7, 'Belgique', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(8, 'Brésil', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(9, 'Canada', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(10, 'Chili', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(11, 'Chine', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(12, 'Colombie', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(13, 'Corée du Sud', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(14, 'Croatie', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(15, 'Danemark', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(16, 'Espagne', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(17, 'Finlande', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(18, 'Hongrie', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(19, 'Inde', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(20, 'Indonésie', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(21, 'Irlande', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(22, 'Japon', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(23, 'Lettonie', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(24, 'Lituanie', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(25, 'Malaisie', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(26, 'Mexique', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(27, 'Pays Bas', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(28, 'Pologne', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(29, 'République Tchèque', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(30, 'Roumanie', '2021-05-20 22:16:59', '2021-05-20 22:16:59'),
(31, 'Russie', '2021-05-20 22:30:03', '2021-05-20 22:30:03'),
(32, 'Singapour', '2021-05-20 22:30:03', '2021-05-20 22:30:03'),
(33, 'Suède', '2021-05-20 22:30:03', '2021-05-20 22:30:03'),
(34, 'Taïwan', '2021-05-20 22:30:03', '2021-05-20 22:30:03'),
(35, 'Thaïlande', '2021-05-20 22:30:03', '2021-05-20 22:30:03'),
(36, 'Turquie', '2021-05-20 22:31:35', '2021-05-20 22:31:35'),
(37, 'USA', '2021-05-20 22:31:35', '2021-05-20 22:31:35'),
(38, 'Ecosse', '2021-05-20 22:53:38', '2021-05-20 22:53:38'),
(39, 'France', '2021-05-21 11:13:35', '2021-05-21 11:13:35');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `nom`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2021-05-20 22:00:49', '2021-05-20 22:00:49'),
(2, 'admin', '2021-05-20 22:00:49', '2021-05-20 22:00:49');

-- --------------------------------------------------------

--
-- Structure de la table `universites`
--

CREATE TABLE `universites` (
  `id` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `villeId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `universites`
--

INSERT INTO `universites` (`id`, `nom`, `createdAt`, `updatedAt`, `villeId`) VALUES
(1, 'Nelson Mandela University', '2021-05-01 23:53:04', '2021-05-01 23:53:04', 1),
(2, 'University of Applied Sciences Stuttgart', '2021-05-20 23:53:04', '2021-05-20 23:53:04', 2),
(3, 'Campus Epitech Berlin', '2021-05-20 23:54:46', '2021-05-20 23:54:46', 3),
(4, 'Duale Hochschule Baden-Württemberg', '2021-05-20 23:54:46', '2021-05-20 23:54:46', 4),
(5, 'Hof University', '2021-05-20 23:54:46', '2021-05-20 23:54:46', 5),
(6, 'Cologne University of Applied Sciences', '2021-05-20 23:54:46', '2021-05-20 23:54:46', 6),
(7, 'Kent university', '2021-05-20 23:54:46', '2021-05-20 23:54:46', 7),
(8, 'Cardiff Metropolitan University', '2021-05-20 23:54:46', '2021-05-20 23:54:46', 8),
(9, 'Heriot Watt University', '2021-05-20 23:54:46', '2021-05-20 23:54:46', 9),
(10, 'Universidad Nacional de La Plata', '2021-05-20 23:54:46', '2021-05-20 23:54:46', 10),
(11, 'Austalin Catholic University', '2021-05-20 23:58:46', '2021-05-20 23:58:46', 11),
(12, 'Royal Melbourne Institute of Technology', '2021-05-20 23:58:46', '2021-05-20 23:58:46', 12),
(13, 'Ahlia University', '2021-05-20 23:59:42', '2021-05-20 23:59:42', 13),
(14, 'Campus Epitech Brussels', '2021-05-21 23:59:42', '2021-05-21 23:59:42', 14),
(15, 'Hogent', '2021-05-21 23:59:42', '2021-05-21 23:59:42', 15),
(16, 'PUC Minas', '2021-05-21 23:59:42', '2021-05-21 23:59:42', 16),
(17, 'PUC Rio', '2021-05-21 23:59:42', '2021-05-21 23:59:42', 17),
(18, 'Concordia University', '2021-05-21 23:59:42', '2021-05-21 23:59:42', 18),
(19, 'Universite Laval', '2021-05-21 23:59:42', '2021-05-21 23:59:42', 19),
(20, 'Universite du Quebec Chicoutimi', '2021-05-21 23:59:42', '2021-05-21 23:59:42', 20),
(21, 'Universite du Quebec Rimouski', '2021-05-21 00:02:44', '2021-05-21 00:02:44', 21),
(22, 'Universidad Finis Terrae', '2021-05-21 10:06:53', '2021-05-21 10:06:53', 22),
(23, 'Northwestern Polytechnical University', '2021-05-21 10:06:53', '2021-05-21 10:06:53', 23),
(24, 'Wuhan university', '2021-05-21 10:06:53', '2021-05-21 10:06:53', 24),
(25, 'Tongji University', '2021-05-21 10:06:53', '2021-05-21 10:06:53', 26),
(26, 'Universidad Nacional de Colombia', '2021-05-21 10:06:53', '2021-05-21 10:06:53', 27),
(27, 'Keimyung University', '2021-05-21 10:06:53', '2021-05-21 10:06:53', 28),
(28, 'Korea University Sejong Campus', '2021-05-21 10:06:53', '2021-05-21 10:06:53', 29),
(29, 'Dankook University', '2021-05-21 10:06:53', '2021-05-21 10:06:53', 30),
(30, 'Inha university', '2021-05-21 10:06:53', '2021-05-21 10:06:53', 31),
(31, 'Chung Ang University', '2021-05-21 10:15:05', '2021-05-21 10:15:05', 32),
(32, 'Soongsil University', '2021-05-21 10:15:05', '2021-05-21 10:15:05', 32),
(33, 'Roskilde University', '2021-05-21 10:16:14', '2021-05-21 10:16:14', 35),
(34, 'Campus Epitech Barcelona', '2021-05-21 10:16:14', '2021-05-21 10:16:14', 36),
(35, 'Universidad de Vic Universidad Central de Cataluna', '2021-05-21 10:16:14', '2021-05-21 10:16:14', 36),
(36, 'Universidad de Malaga', '2021-05-21 10:16:14', '2021-05-21 10:16:14', 37),
(37, 'Universidad de Cadiz', '2021-05-21 10:16:14', '2021-05-21 10:16:14', 38),
(38, 'Universidad de Huelva', '2021-05-21 10:16:14', '2021-05-21 10:16:14', 39),
(39, 'Laurea university of Applied Sciences', '2021-05-21 10:16:14', '2021-05-21 10:16:14', 41),
(40, 'University of Pecs', '2021-05-21 10:16:14', '2021-05-21 10:16:14', 42),
(41, 'Escuela Superior de informatica', '2021-05-21 10:31:25', '2021-05-21 10:31:25', 40),
(42, 'Universidad Politecnica de Madrid', '2021-05-21 10:31:25', '2021-05-21 10:31:25', 40),
(43, 'Xi an Jiaotong Liverpool University', '2021-05-21 10:36:06', '2021-05-21 10:36:06', 25),
(44, 'Algebra University College', '2021-05-21 10:36:06', '2021-05-21 10:36:06', 33),
(45, 'University of Zagreb', '2021-05-21 10:38:15', '2021-05-21 10:38:15', 34),
(46, 'Roskilde University', '2021-05-21 10:38:15', '2021-05-21 10:38:15', 35),
(47, 'Pazmany Peter Catholic University', '2021-05-21 10:41:07', '2021-05-21 10:41:07', 43),
(48, 'Budapest University of Technology and Economics', '2021-05-21 10:41:07', '2021-05-21 10:41:07', 43),
(49, 'Manipal Academy of Higher Education', '2021-05-21 10:41:07', '2021-05-21 10:41:07', 44),
(50, 'Chitkara University', '2021-05-21 10:41:07', '2021-05-21 10:41:07', 45),
(51, 'Sepuluh Nopember Institute of Technology', '2021-05-21 10:43:07', '2021-05-21 10:43:07', 46),
(52, 'Binus University', '2021-05-21 10:43:07', '2021-05-21 10:43:07', 47),
(53, 'Dublin City University', '2021-05-21 10:43:07', '2021-05-21 10:43:07', 48),
(54, 'Griffith Dublin College', '2021-05-21 10:43:07', '2021-05-21 10:43:07', 48),
(55, 'Technological university Dublin', '2021-05-21 10:43:07', '2021-05-21 10:43:07', 48),
(56, 'Shibaura Institute of Technology', '2021-05-21 10:43:07', '2021-05-21 10:43:07', 49),
(57, 'Vidzeme University of Applied Sciences', '2021-05-21 10:43:07', '2021-05-21 10:43:07', 50),
(58, 'Vilnius Gediminas Technical University', '2021-05-21 10:43:07', '2021-05-21 10:43:07', 51),
(59, 'Vytautas Magnus University', '2021-05-21 10:43:07', '2021-05-21 10:43:07', 52),
(60, 'University Kuala Lumpur', '2021-05-21 10:43:07', '2021-05-21 10:43:07', 53),
(61, 'Universidad Tecmilenio', '2021-05-21 10:48:27', '2021-05-21 10:48:27', 54),
(62, 'Universidada de Monterrey', '2021-05-21 10:48:27', '2021-05-21 10:48:27', 54),
(63, 'Fontys University of Applied Sciences', '2021-05-21 10:48:27', '2021-05-21 10:48:27', 55),
(64, 'The Hague University of Applied Sciences', '2021-05-21 10:48:27', '2021-05-21 10:48:27', 56),
(65, 'Hanze University of Applied Sciences', '2021-05-21 10:48:27', '2021-05-21 10:48:27', 57),
(66, 'AGH University of science and technology', '2021-05-21 10:48:27', '2021-05-21 10:48:27', 58),
(67, 'VSB Technical University of Ostrava', '2021-05-21 10:48:27', '2021-05-21 10:48:27', 59),
(68, 'Politehnica University of Bucharest', '2021-05-21 10:48:27', '2021-05-21 10:48:27', 60),
(69, 'Higher School of Economics', '2021-05-21 10:48:27', '2021-05-21 10:48:27', 61),
(70, 'Saint Pertersburg State University of Telecommunications', '2021-05-21 10:48:27', '2021-05-21 10:48:27', 62),
(71, 'ITMO University', '2021-05-21 10:55:24', '2021-05-21 10:55:24', 62),
(72, 'James Cook University Singapore', '2021-05-21 10:55:24', '2021-05-21 10:55:24', 63),
(73, 'Stockholm university', '2021-05-21 10:55:24', '2021-05-21 10:55:24', 64),
(74, 'Jonkoping University', '2021-05-21 10:55:24', '2021-05-21 10:55:24', 65),
(75, 'Halmstad University', '2021-05-21 10:55:24', '2021-05-21 10:55:24', 66),
(76, 'National Chung Cheng University', '2021-05-21 10:55:24', '2021-05-21 10:55:24', 67),
(77, 'Feng Chia University', '2021-05-21 10:55:24', '2021-05-21 10:55:24', 68),
(78, 'National Tsinghua University', '2021-05-21 10:55:24', '2021-05-21 10:55:24', 69),
(79, 'National Taipei University', '2021-05-21 10:55:24', '2021-05-21 10:55:24', 70),
(80, 'National Tapei University of Technology - Taipei Tech', '2021-05-21 10:55:24', '2021-05-21 10:55:24', 71),
(81, 'Thammasat University', '2021-05-21 11:04:19', '2021-05-21 11:04:19', 72),
(82, 'Koc University', '2021-05-21 11:04:19', '2021-05-21 11:04:19', 73),
(83, 'Instabul Technical University', '2021-05-21 11:06:40', '2021-05-21 11:06:40', 73),
(84, 'Metropolitan College Boston University', '2021-05-21 11:06:40', '2021-05-21 11:06:40', 74),
(85, 'The College At Brockport', '2021-05-21 11:06:40', '2021-05-21 11:06:40', 75),
(86, 'Wayne State University', '2021-05-21 11:06:40', '2021-05-21 11:06:40', 76),
(87, 'University of California San Diego', '2021-05-21 11:06:40', '2021-05-21 11:06:40', 77),
(88, 'California Stat University San Marcos', '2021-05-21 11:06:40', '2021-05-21 11:06:40', 77),
(89, 'California Stat University Long Beach', '2021-05-21 11:06:40', '2021-05-21 11:06:40', 78),
(90, 'San Francisco Stat University', '2021-05-21 11:06:40', '2021-05-21 11:06:40', 79),
(91, 'UC Berkeley Summer Session', '2021-05-21 11:11:08', '2021-05-21 11:11:09', 80),
(92, 'UC Berkley Extension', '2021-05-21 11:11:09', '2021-05-21 11:11:09', 80),
(93, 'Florida International University', '2021-05-21 11:12:17', '2021-05-21 11:12:17', 81);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prénom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `favoris` varchar(255) DEFAULT '',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prénom`, `email`, `mot_de_passe`, `favoris`, `createdAt`, `updatedAt`) VALUES
(1, 'VIRAULT', 'Pauline', 'pauline.virault@epitech.eu', '$2a$08$cyHcKD.1gvYgu/oYNCswfuNDh9XFwB6NC.HKWz6Q519nfYo0hUgf.', '', '2021-05-28 12:34:27', '2021-05-28 12:34:27'),
(2, 'AMAR', 'Sarah', 'sarah.amar@epitech.eu', '$2a$08$iA5BzMC/OyVeUltT/hAEb.ZrJVAbJtlFAXKBChGV65PTxi9PdYrQG', '', '2021-06-02 09:24:50', '2021-06-02 09:29:00'),
(3, 'ARASPIN', 'Jérôme', 'jerome.araspin@epitech.eu', '$2a$08$rxYvc4NZ6elTiRovY3lYY.Z05qpYdxbo56uQwLx/mBOMDdL98hUgq', '', '2021-06-02 09:25:44', '2021-06-02 09:29:43'),
(4, 'CROSNIER', 'Vincent', 'vincent.crosnier@epitech.eu', '$2a$08$4TIotn7eyK8j.0k7O6KId.G9/tgV1sNQb0KTjK.3s7Ih5RA6Q1uu6', '', '2021-06-02 09:26:10', '2021-06-02 09:30:28'),
(5, 'RODRIGUEZ', 'Andrea', 'andrea.rodriguez@epitech.eu', '$2a$08$pvodUsjs/crBtQTRwnvlA.8QRiRcTgL3RwM9OgZ34Fc1V92zVSmji', '', '2021-06-02 09:27:29', '2021-06-02 09:27:29');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `roleId` int NOT NULL,
  `userId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2021-05-28 12:34:27', '2021-05-28 12:34:27', 1, 1),
('2021-06-02 09:24:50', '2021-06-02 09:24:50', 1, 2),
('2021-06-02 09:25:44', '2021-06-02 09:25:44', 1, 3),
('2021-06-02 09:26:10', '2021-06-02 09:26:10', 1, 4),
('2021-06-02 09:27:29', '2021-06-02 09:27:29', 1, 5),
('2021-05-28 12:34:27', '2021-05-28 12:34:27', 2, 1),
('2021-06-02 09:24:50', '2021-06-02 09:24:50', 2, 2),
('2021-06-02 09:25:44', '2021-06-02 09:25:44', 2, 3),
('2021-06-02 09:26:10', '2021-06-02 09:26:10', 2, 4),
('2021-06-02 09:27:29', '2021-06-02 09:27:29', 2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `etatId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `createdAt`, `updatedAt`, `etatId`) VALUES
(1, 'Port Elizabeth', '2021-05-20 22:40:07', '2021-05-20 22:40:07', 1),
(2, 'Stuttgart', '2021-05-20 22:40:07', '2021-05-20 22:40:07', 2),
(3, 'Berlin', '2021-05-20 22:42:45', '2021-05-20 22:42:45', 2),
(4, 'Lörrach', '2021-05-20 22:42:45', '2021-05-20 22:42:45', 2),
(5, 'Hof', '2021-05-20 22:42:45', '2021-05-20 22:42:45', 2),
(6, 'Cologne', '2021-05-20 22:42:45', '2021-05-20 22:42:45', 2),
(7, 'Canterburry', '2021-05-20 22:42:45', '2021-05-20 22:42:45', 3),
(8, 'Cardiff', '2021-05-20 22:42:45', '2021-05-20 22:42:45', 3),
(9, 'Edimbourg', '2021-05-20 22:54:30', '2021-05-20 22:54:30', 38),
(10, 'Plata', '2021-05-20 22:54:30', '2021-05-20 22:54:30', 4),
(11, 'Sydney', '2021-05-20 22:55:30', '2021-05-20 22:55:30', 5),
(12, 'Melbourne', '2021-05-20 22:55:30', '2021-05-20 22:55:31', 5),
(13, 'Manama', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 6),
(14, 'Bruxelles', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 7),
(15, 'Ghent', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 7),
(16, 'Betim', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 8),
(17, 'Rio de Janeiro', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 8),
(18, 'Montréal', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 9),
(19, 'Québec', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 9),
(20, 'Saguenay', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 9),
(21, 'Rimouski', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 9),
(22, 'Santiago', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 10),
(23, 'Xianyang', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 11),
(24, 'Wuhan', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 11),
(25, 'Suzhou', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 11),
(26, 'Shanghai', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 11),
(27, 'Bogota', '2021-05-20 22:55:31', '2021-05-20 22:55:31', 12),
(28, 'Daegu', '2021-05-20 23:03:19', '2021-05-20 23:03:19', 13),
(29, 'Sejong', '2021-05-20 23:03:19', '2021-05-20 23:03:19', 13),
(30, 'Seongnam', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 13),
(31, 'Incheon', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 13),
(32, 'Seoul', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 13),
(33, 'Zagreb', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 14),
(34, 'Varazdin', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 14),
(35, 'Copenhague', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 15),
(36, 'Barcelone', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 16),
(37, 'Malaga', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 16),
(38, 'Cadiz', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 16),
(39, 'Huelva', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 16),
(40, 'Madrid', '2021-05-20 23:04:09', '2021-05-20 23:04:09', 16),
(41, 'Vantaa', '2021-05-20 23:33:03', '2021-05-20 23:33:03', 17),
(42, 'Pecs', '2021-05-20 23:33:03', '2021-05-20 23:33:03', 18),
(43, 'Budapest', '2021-05-20 23:33:03', '2021-05-20 23:33:03', 18),
(44, 'Udupi', '2021-05-20 23:33:03', '2021-05-20 23:33:03', 19),
(45, 'Chandigarh', '2021-05-20 23:33:03', '2021-05-20 23:33:03', 19),
(46, 'Surabaya', '2021-05-20 23:33:03', '2021-05-20 23:33:03', 20),
(47, 'Jakarta', '2021-05-20 23:33:03', '2021-05-20 23:33:03', 20),
(48, 'Dublin', '2021-05-20 23:33:03', '2021-05-20 23:33:03', 21),
(49, 'Tokyo', '2021-05-20 23:33:03', '2021-05-20 23:33:03', 22),
(50, 'Valmiera', '2021-05-20 23:33:03', '2021-05-20 23:33:03', 23),
(51, 'Vilnius', '2021-05-20 23:37:56', '2021-05-20 23:37:56', 24),
(52, 'Kaunas', '2021-05-20 23:37:56', '2021-05-20 23:37:56', 25),
(53, 'Kuala Lumpur', '2021-05-20 23:40:04', '2021-05-20 23:40:04', 25),
(54, 'Monterrey', '2021-05-20 23:40:04', '2021-05-20 23:40:04', 26),
(55, 'Eindhoven', '2021-05-20 23:40:04', '2021-05-20 23:40:04', 27),
(56, 'La Haye', '2021-05-20 23:40:04', '2021-05-20 23:40:04', 27),
(57, 'Groningen', '2021-05-20 23:40:04', '2021-05-20 23:40:04', 27),
(58, 'Cracovie', '2021-05-20 23:40:04', '2021-05-20 23:40:04', 28),
(59, 'Ostrava', '2021-05-20 23:40:04', '2021-05-20 23:40:04', 29),
(60, 'Bucharest', '2021-05-20 23:40:04', '2021-05-20 23:40:04', 30),
(61, 'Moscou', '2021-05-20 23:43:40', '2021-05-20 23:43:40', 31),
(62, 'Saint Petersburg', '2021-05-20 23:43:40', '2021-05-20 23:43:40', 31),
(63, 'Singapour', '2021-05-20 23:43:40', '2021-05-20 23:43:40', 32),
(64, 'Stockholm', '2021-05-20 23:43:40', '2021-05-20 23:43:40', 33),
(65, 'Jonkoping', '2021-05-20 23:43:40', '2021-05-20 23:43:40', 33),
(66, 'Halmstad', '2021-05-20 23:43:40', '2021-05-20 23:43:40', 33),
(67, 'Chiayi', '2021-05-20 23:43:40', '2021-05-20 23:43:40', 34),
(68, 'Taichung', '2021-05-20 23:43:40', '2021-05-20 23:43:40', 34),
(69, 'Hsinchu', '2021-05-20 23:43:40', '2021-05-20 23:43:40', 34),
(70, 'Toyuan', '2021-05-20 23:43:40', '2021-05-20 23:43:40', 34),
(71, 'Taipei', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 34),
(72, 'Bangkok', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 35),
(73, 'Istanbul', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 36),
(74, 'Boston', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 37),
(75, 'Rochester', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 37),
(76, 'Détroit', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 37),
(77, 'San Diego', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 37),
(78, 'Los Angeles', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 37),
(79, 'San Francisco', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 37),
(80, 'Berkley', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 37),
(81, 'Miami', '2021-05-20 23:48:04', '2021-05-20 23:48:04', 37),
(82, 'Bordeaux', '2021-05-21 10:34:38', '2021-05-21 10:34:38', 39),
(83, 'Lille', '2021-05-21 10:34:38', '2021-05-21 10:34:38', 39),
(84, 'Lyon', '2021-05-21 11:17:18', '2021-05-21 11:17:18', 39),
(85, 'Marseille', '2021-05-21 11:17:18', '2021-05-21 11:17:18', 39),
(86, 'Montpellier', '2021-05-21 11:18:04', '2021-05-21 11:18:04', 39),
(87, 'Moulins', '2021-05-21 11:18:04', '2021-05-21 11:18:04', 39),
(88, 'Mulhouse', '2021-05-21 11:18:04', '2021-05-21 11:18:04', 39),
(89, 'Nancy', '2021-05-21 11:18:04', '2021-05-21 11:18:04', 39),
(90, 'Nantes', '2021-05-21 11:18:04', '2021-05-21 11:18:04', 39),
(91, 'Paris', '2021-05-21 11:21:39', '2021-05-21 11:21:39', 39),
(92, 'Rennes', '2021-05-21 11:21:39', '2021-05-21 11:21:39', 39),
(93, 'Saint André', '2021-05-21 11:21:39', '2021-05-21 11:21:39', 39),
(94, 'Strasbourg', '2021-05-21 11:21:39', '2021-05-21 11:21:39', 39),
(95, 'Toulouse', '2021-05-21 11:23:38', '2021-05-21 11:23:38', 39);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `universiteId` (`universiteId`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie_articles`
--
ALTER TABLE `categorie_articles`
  ADD PRIMARY KEY (`articleId`,`categorieId`),
  ADD KEY `categorieId` (`categorieId`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleId` (`articleId`);

--
-- Index pour la table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `continent_etats`
--
ALTER TABLE `continent_etats`
  ADD PRIMARY KEY (`continentId`,`etatId`),
  ADD KEY `etatId` (`etatId`);

--
-- Index pour la table `etats`
--
ALTER TABLE `etats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `universites`
--
ALTER TABLE `universites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `villeId` (`villeId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etatId` (`etatId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `continents`
--
ALTER TABLE `continents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `etats`
--
ALTER TABLE `etats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `universites`
--
ALTER TABLE `universites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`universiteId`) REFERENCES `universites` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `categorie_articles`
--
ALTER TABLE `categorie_articles`
  ADD CONSTRAINT `categorie_articles_ibfk_1` FOREIGN KEY (`articleId`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categorie_articles_ibfk_2` FOREIGN KEY (`categorieId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`articleId`) REFERENCES `articles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `continent_etats`
--
ALTER TABLE `continent_etats`
  ADD CONSTRAINT `continent_etats_ibfk_1` FOREIGN KEY (`continentId`) REFERENCES `continents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `continent_etats_ibfk_2` FOREIGN KEY (`etatId`) REFERENCES `etats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `universites`
--
ALTER TABLE `universites`
  ADD CONSTRAINT `universites_ibfk_1` FOREIGN KEY (`villeId`) REFERENCES `villes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `villes`
--
ALTER TABLE `villes`
  ADD CONSTRAINT `villes_ibfk_1` FOREIGN KEY (`etatId`) REFERENCES `etats` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
