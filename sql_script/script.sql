-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 172.17.57.237
-- Généré le :  lun. 01 avr. 2019 à 08:37
-- Version du serveur :  5.5.63-MariaDB-1~trusty
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `apiman_users`
--
CREATE DATABASE IF NOT EXISTS `apiman_users` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
CREATE DATABASE IF NOT EXISTS `apiman`;
CREATE DATABASE IF NOT EXISTS `keycloak`;
USE `apiman_users`;

-- --------------------------------------------------------

--
-- Structure de la table `t_roles`
--

CREATE TABLE `t_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_roles`
--

INSERT INTO `t_roles` (`id`, `name`, `description`) VALUES
(1, 'read', 'lecture'),
(2, 'write', 'écriture');

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `id` int(11) NOT NULL,
  `login` varchar(24) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`id`, `login`, `password`) VALUES
(6, 'test-mariadb-8', 'f9e214cb2855bf0ba39cacbe188928cc6a1b010ad30f22c5a2882fa95d6ec04b'),
(7, 'test-mariadb-9', '6ef595fc43178377a466a9bb88dfc18de043af85ffc644fb87c458f023c03e64'),
(8, 'test-basic-auth-conf', 'f17c93198784b1caa5a7ee03bf9ad03de42460ccf8f114a2f12b7b78472dcc1e'),
(9, 'test-conf-basicAuth', '7025391687b5a093897c121bed2332f7fc79348da3b090b5f1c458e72f17004b'),
(10, 'test-dev-database', 'f24039d51f3b6c07012b0f884f6e94cefa7d4197a323c7e2416ec54f46597905'),
(11, 'test-dev-final-mariadb', '64c7b2fa104d705f40771c948c266a547f06573ff929f2d9893c3ac3cfd2c214'),
(12, 'login', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(13, 'test-numero-46542', 'e524d6ce3827ba4e515af091a3d76516ed2dc1aabb2429a70c56b7cd9917f12e'),
(14, 'test-numero-1', '38fa435710f61526b57672bc805c36874fa081b7a54b9b149962f4cf7c39f9e6'),
(15, 'test-rollback-mariadb', 'ced60f3e965b05f2ed2caace201d7734bf76e5b2182fe034a35a741788f487c8'),
(16, 'test-rollback-mariadb-2', 'fc573064f9413fb67bf6f2b8386946185f5902f43b769db2e24dac2533bd8d4c'),
(17, 'test-rollback-3', 'c66095bf51b3e11cf63ddb967bc180059ac4737517ca5ede66f6bb7ad0b9779b'),
(18, 'test-rollback-4', 'e08d614ee5a6d8ee63ed2fdfda8ad709ceb00d080b1c40f924b674521d69d410'),
(20, 'test-rollback-6', '8769a9e024e252eb178ad1a15a5362426b97386fe574183d4656c22fdcea2680'),
(21, 'test-rolback-7', '162be31b6617039d298bdd9f27aa4fb02de70c7e4540b249aa02b0cc0d49d004'),
(23, 'test-rollback-9', 'a15799a1d16899a224a4569f684bd8b4309ee1a05e8bbd426149b10cce3a2223'),
(30, 'test-insert-12', 'de90533f76995f8bbc1bece9dbb057ac6ed26f9cfeb4c77e1e0aae01b5a4d347'),
(36, 'test-delete', '8d74f129518280c3a3d3f608194c20f75a639c095ee52abea97e88abf394df23');

-- --------------------------------------------------------

--
-- Structure de la table `t_user_roles`
--

CREATE TABLE `t_user_roles` (
  `id_user` int(11) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_user_roles`
--

INSERT INTO `t_user_roles` (`id_user`, `id_role`) VALUES
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(21, 1),
(23, 1),
(30, 1),
(36, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_user_roles`
--
ALTER TABLE `t_user_roles`
  ADD KEY `FK_id_user` (`id_user`),
  ADD KEY `FK_id_role` (`id_role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_user_roles`
--
ALTER TABLE `t_user_roles`
  ADD CONSTRAINT `FK_id_role` FOREIGN KEY (`id_role`) REFERENCES `t_roles` (`id`),
  ADD CONSTRAINT `FK_id_user` FOREIGN KEY (`id_user`) REFERENCES `t_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--
-- Ajout utilisateur keycloak
--

CREATE USER 'keycloak'@'%' IDENTIFIED by 'keycloak';
GRANT ALL PRIVILEGES ON keycloak.* TO 'keycloak'@'%';
--
-- Ajout utilisateur apiman
--
CREATE  USER 'apiman' IDENTIFIED BY 'apiman';
GRANT ALL PRIVILEGES ON apiman.* TO 'apiman'@'%';
GRANT ALL PRIVILEGES ON apiman_users.* TO 'apiman'@'%';
FLUSH PRIVILEGES;