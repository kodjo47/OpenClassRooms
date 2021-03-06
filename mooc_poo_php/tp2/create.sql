/* EFFACEMENT DE LA BASE DE DONNÉES */
DROP DATABASE IF EXISTS combats;

/* CREATION DE LA BASE DE DONNÉES */
CREATE DATABASE combats DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

/* SÉLÉCTION DE LA BASE DE DONNÉES */
USE combats;

/* CRÉATION DE LA TABLE PERSONNAGES */
CREATE TABLE personnages_v2
(
    id SMALLINT(4) UNSIGNED AUTO_INCREMENT,
    nom VARCHAR(25) NOT NULL,
    degats TINYINT(3) NOT NULL DEFAULT 0,
    timeEndormi int(10) UNSIGNED NOT NULL DEFAULT 0,
    type enum('magicien','guerrier') NOT NULL,
    atout tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
    CONSTRAINT pk_perso PRIMARY KEY(id),
    CONSTRAINT perso_unique UNIQUE(nom)
);

