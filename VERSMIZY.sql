-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 21 fév. 2024 à 19:09
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `versement_boss`
--

-- --------------------------------------------------------

--
-- Structure de la table `audit`
--

CREATE TABLE `audit` (
  `id_audit` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `date_operation` datetime NOT NULL DEFAULT current_timestamp(),
  `id_vir` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `nom_client` varchar(50) DEFAULT NULL,
  `date_vir` date DEFAULT NULL,
  `montant_ancien` int(11) DEFAULT NULL,
  `montant_nouveau` int(11) DEFAULT NULL,
  `utilisateur` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `audit`
--

INSERT INTO `audit` (`id_audit`, `type`, `date_operation`, `id_vir`, `id_client`, `nom_client`, `date_vir`, `montant_ancien`, `montant_nouveau`, `utilisateur`) VALUES
(1, 'Ajout Virement', '2024-02-19 19:51:09', 1, 1, 'Bernhard', '2024-02-19', 0, 10000, 'zazamanga'),
(2, 'Ajout Virement', '2024-02-19 19:51:20', 2, 2, 'Gerald', '2024-02-19', 0, 5000, 'zazamanga'),
(3, 'Ajout Virement', '2024-02-19 19:51:33', 3, 3, 'Fredson', '2024-02-19', 0, 20000, 'zazamanga'),
(4, 'Ajout Virement', '2024-02-19 19:51:44', 4, 4, 'Mialy', '2024-02-19', 0, 10000, 'zazamanga'),
(5, 'Ajout Virement', '2024-02-19 19:51:56', 5, 6, 'Lars', '2024-02-19', 0, 7000, 'zazamanga'),
(6, 'Ajout Virement', '2024-02-19 19:52:07', 6, 5, 'Eric', '2024-02-19', 0, 30000, 'zazamanga'),
(7, 'Ajout Virement', '2024-02-19 19:52:54', 7, 1, 'Bernhard', '2024-02-19', 10000, 5000, 'zazamanga'),
(8, 'Update Virement', '2024-02-19 19:53:27', 7, 1, 'Bernhard', '2024-02-19', 5000, 8000, 'zazamanga'),
(9, 'Suppression Virement', '2024-02-19 19:53:49', 6, 5, 'Eric', '2024-02-19', 30000, 0, 'zazamanga'),
(10, 'Update Virement', '2024-02-19 20:05:24', 7, 1, 'Bernhard', '2024-02-19', 8000, 9000, 'user'),
(11, 'Update Virement', '2024-02-19 20:06:02', 5, 6, 'Lars', '2024-02-19', 7000, 9000, 'user'),
(12, 'Ajout Virement', '2024-02-19 20:06:30', 8, 5, 'Eric', '2024-02-19', 0, 5000, 'user'),
(13, 'Ajout Virement', '2024-02-20 09:09:04', 9, 10, 'elysah', '2024-02-20', 0, 7000, 'user'),
(14, 'Ajout Virement', '2024-02-20 09:09:17', 10, 9, 'robe', '2024-02-20', 0, 9000, 'user'),
(15, 'Ajout Virement', '2024-02-20 09:09:31', 11, 8, 'antsa', '2024-02-20', 0, 12000, 'user'),
(16, 'Ajout Virement', '2024-02-20 09:09:56', 12, 7, 'zoel', '2024-02-20', 0, 13000, 'user'),
(17, 'Update Virement', '2024-02-20 09:11:34', 12, 7, 'zoel', '2024-02-20', 13000, 13000, 'zazamanga'),
(18, 'Update Virement', '2024-02-20 09:11:57', 11, 8, 'antsa', '2024-02-20', 12000, 15000, 'zazamanga'),
(19, 'Update Virement', '2024-02-20 14:59:08', 12, 7, 'zoel', '2024-02-20', 13000, 13000, 'user'),
(20, 'Ajout Virement', '2024-02-20 15:00:10', 13, 11, 'ramanga', '2024-02-20', 0, 54, 'user'),
(21, 'Ajout Virement', '2024-02-21 08:26:56', 14, 12, 'Rakoto', '2024-02-21', 0, 5000, 'user'),
(22, 'Update Virement', '2024-02-21 08:27:16', 14, 12, 'Rakoto', '2024-02-21', 5000, 10000, 'user'),
(23, 'Suppression Virement', '2024-02-21 08:27:26', 14, 12, 'Rakoto', '2024-02-21', 10000, 0, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(50) DEFAULT NULL,
  `solde` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `solde`) VALUES
(1, 'Bernhard', 19000),
(2, 'Gerald', 5000),
(3, 'Fredson', 20000),
(4, 'Mialy', 10000),
(5, 'Eric', 5000),
(6, 'Lars', 9000),
(7, 'zoel', 13000),
(8, 'antsa', 15000),
(9, 'robe', 9000),
(10, 'elysah', 7000),
(11, 'ramanga', 54),
(12, 'Rakoto', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_utilisateur` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_utilisateur`, `email`, `password`, `role`) VALUES
(1, 'zazamanga', 'zazamanga', 'admin'),
(2, 'user', 'user', 'simple');

-- --------------------------------------------------------

--
-- Structure de la table `virement`
--

CREATE TABLE `virement` (
  `id_vir` int(11) NOT NULL,
  `id_client` int(11) DEFAULT NULL,
  `montant` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `utilisateur` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `virement`
--

INSERT INTO `virement` (`id_vir`, `id_client`, `montant`, `date`, `utilisateur`) VALUES
(1, 1, 10000, '2024-02-19 19:51:09', 'zazamanga'),
(2, 2, 5000, '2024-02-19 19:51:20', 'zazamanga'),
(3, 3, 20000, '2024-02-19 19:51:33', 'zazamanga'),
(4, 4, 10000, '2024-02-19 19:51:44', 'zazamanga'),
(5, 6, 9000, '2024-02-19 19:51:56', 'user'),
(8, 5, 5000, '2024-02-19 20:06:30', 'user'),
(7, 1, 9000, '2024-02-19 19:52:54', 'user'),
(9, 10, 7000, '2024-02-20 09:09:04', 'user'),
(10, 9, 9000, '2024-02-20 09:09:17', 'user'),
(11, 8, 15000, '2024-02-20 09:09:31', 'zazamanga'),
(12, 7, 13000, '2024-02-20 09:09:56', 'user'),
(13, 11, 54, '2024-02-20 15:00:10', 'user');

--
-- Déclencheurs `virement`
--
DELIMITER $$
CREATE TRIGGER `ajout_virement` AFTER INSERT ON `virement` FOR EACH ROW BEGIN
	-- Insert into audit --    
    -- ----recuperer montant Ancien ---
    DECLARE montant_ancien DECIMAL(10,2);
    
    SELECT montant INTO montant_ancien
    FROM virement
    WHERE id_client = NEW.id_client
    AND id_vir < (
    SELECT MAX(id_vir)
    FROM virement
    WHERE id_client = NEW.id_client)
    ORDER BY id_vir DESC
    LIMIT 1;
    
    IF montant_ancien IS NULL THEN
        SET montant_ancien = 0;
    END IF;
    -- FIN RECUPE Montant -------
    INSERT INTO audit (
    	type, id_vir, id_client, nom_client, date_vir, montant_ancien, montant_nouveau, utilisateur
    ) VALUES (
    	'Ajout Virement', NEW.id_vir, NEW.id_client,
        (SELECT nom_client FROM client WHERE id_client = NEW.id_client), NEW.date, montant_ancien, NEW.montant, NEW.utilisateur       
    );
    -- FIN INSERT AUDIT-------------------
    -- UPADTE SOLDE ----
    UPDATE client
    SET solde = solde + NEW.montant
    WHERE id_client = NEW.id_client;
    -- ----------------------------
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `delete_virement` BEFORE DELETE ON `virement` FOR EACH ROW BEGIN
    DECLARE diff_sold DECIMAL(10,2);
    DECLARE montant_ancien DECIMAL(10,2);
    
	-- Insert into audit --    
    -- ----recuperer montant Ancien ---
    SET montant_ancien = OLD.montant;
    -- FIN RECUPE Montant -------
    INSERT INTO audit (
    	type, id_vir, id_client, nom_client, date_vir, montant_ancien, montant_nouveau, utilisateur
    ) VALUES (
    	'Suppression Virement', OLD.id_vir, OLD.id_client,
        (SELECT nom_client FROM client WHERE id_client = OLD.id_client), OLD.date, montant_ancien, 0, OLD.utilisateur     );
    -- FIN INSERT AUDIT-------------
    
    -- UPADTE SOLDE ----------------
    UPDATE client
    SET solde = solde - OLD.montant
    WHERE id_client = OLD.id_client;
    -- ----------------------------

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_virement` BEFORE UPDATE ON `virement` FOR EACH ROW BEGIN
    DECLARE diff_sold DECIMAL(10,2);
    DECLARE montant_ancien DECIMAL(10,2);
    
	-- Insert into audit --    
    -- ----recuperer montant Ancien ---
    SET montant_ancien = OLD.montant;
    -- FIN RECUPE Montant -------
    INSERT INTO audit (
    	type, id_vir, id_client, nom_client, date_vir, montant_ancien, montant_nouveau, utilisateur
    ) VALUES (
    	'Update Virement', NEW.id_vir, NEW.id_client,
        (SELECT nom_client FROM client WHERE id_client = NEW.id_client), NEW.date, montant_ancien, NEW.montant, NEW.utilisateur       
    );
    -- FIN INSERT AUDIT-------------
    -- UPADTE SOLDE ----------------
    SET diff_sold = NEW.montant - OLD.montant;
    
    UPDATE client
    SET solde = solde + diff_sold
    WHERE id_client = NEW.id_client;
    -- ----------------------------

END
$$
DELIMITER ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`id_audit`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- Index pour la table `virement`
--
ALTER TABLE `virement`
  ADD PRIMARY KEY (`id_vir`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `audit`
--
ALTER TABLE `audit`
  MODIFY `id_audit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `virement`
--
ALTER TABLE `virement`
  MODIFY `id_vir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
