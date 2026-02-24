CREATE DATABASE IF NOT EXISTS `bibliotheque` DEFAULT CHARACTER SET utf8mb4;
USE `bibliotheque`;

CREATE TABLE `Livre` (
    `ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `titre` VARCHAR(255) NOT NULL,
    `date_publication` DATE NOT NULL,
    `id_auteur` INT NOT NULL,
    `categorie` VARCHAR(50),
    `exemplaire` INT,
    `isbn` CHAR(13) NOT NULL UNIQUE

);

CREATE TABLE `Auteur` (
    `ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `prenom` VARCHAR(20),
    `nom` VARCHAR(20),
    `date_de_naissance` DATE,
    `epoque_litteraire` VARCHAR(30)
    
);

CREATE TABLE `Emprunt` (
    `ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `id_adherent` INT NOT NULL,
    `id_livre` INT NOT NULL,
    `date_emprunt` DATE NOT NULL,
    `retard` INT,
    `date_retour` DATE NOT NULL

);

CREATE TABLE `Adherent` (
    `ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nom` VARCHAR(20) NOT NULL,
    `prenom` VARCHAR(20) NOT NULL,
    `date_adhesion` DATE NOT NULL,
    `adresse` VARCHAR(100) NOT NULL,

);

CREATE TABLE `Facture` (
    `ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `montant` DECIMAL(5,2) NOT NULL,
    `id_adherent` INT NOT NULL,
    `date` DATE NOT NULL

);

CREATE TABLE `Personnel` (
    `ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nom` VARCHAR(20) NOT NULL,
    `prenom` VARCHAR(20) NOT NULL,
    `role` ENUM('caissier', 'manager') NOT NULL DEFAULT 'caissier'
);