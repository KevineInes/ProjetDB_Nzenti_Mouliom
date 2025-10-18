-- 1)creation de la base de données
CREATE DATABASE CINEMA;
-- 2)création des tables
USE CINEMA;
CREATE TABLE Oeuvre(
   id_o INT,
   Titre_o VARCHAR(50) NOT NULL,
   Type_o VARCHAR(50) NOT NULL,
   annee_sortie INT,
   duree INT,
   langue_originale VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_o)
);

CREATE TABLE Genre(
   nom_g VARCHAR(50),
   PRIMARY KEY(nom_g)
);

CREATE TABLE Version(
   id_o INT,
   id_version INT,
   nom_version VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_o, id_version),
   FOREIGN KEY(id_o) REFERENCES Oeuvre(id_o)
);

CREATE TABLE Professionnel(
   id_p INT,
   nom_p VARCHAR(50) NOT NULL,
   prenom_p VARCHAR(50) NOT NULL,
   nationalite VARCHAR(50) NOT NULL,
   date_de_naissance DATE,
   PRIMARY KEY(id_p)
);

CREATE TABLE Evenement(
   id_e INT,
   nom_e VARCHAR(50) NOT NULL,
   type_e VARCHAR(50) NOT NULL,
   date_e DATE,
   pays_e VARCHAR(50) NOT NULL,
   duree INT,
   PRIMARY KEY(id_e)
);

CREATE TABLE Recompense(
   id_o INT,
   id_e INT,
   id_rec INT,
   nom_rec VARCHAR(50) NOT NULL,
   categorie VARCHAR(50) NOT NULL,
   montant INT,
   PRIMARY KEY(id_o, id_e, id_rec),
   FOREIGN KEY(id_o) REFERENCES Oeuvre(id_o),
   FOREIGN KEY(id_e) REFERENCES Evenement(id_e)
);

CREATE TABLE Utilisateur(
   id_u INT,
   nom_u VARCHAR(50) NOT NULL,
   pseudo VARCHAR(50) NOT NULL UNIQUE,
   PRIMARY KEY(id_u)
);

CREATE TABLE Statistiques(
   id_stat INT,
   nbre_vues INT,
   note_moy INT,
   PRIMARY KEY(id_stat)
);

CREATE TABLE Plateforme_diff(
   id_plat INT,
   nom_plat VARCHAR(50) NOT NULL UNIQUE,
   PRIMARY KEY(id_plat)
);

CREATE TABLE role(
   id_role INT,
   nom_role VARCHAR(50),
   PRIMARY KEY(id_role)
);

CREATE TABLE faire_partie(
   id_o INT,
   nom_g VARCHAR(50),
   PRIMARY KEY(id_o, nom_g),
   FOREIGN KEY(id_o) REFERENCES Oeuvre(id_o),
   FOREIGN KEY(nom_g) REFERENCES Genre(nom_g)
);

CREATE TABLE etre_disponible(
   id_o INT,
   id_plat INT,
   PRIMARY KEY(id_o, id_plat),
   FOREIGN KEY(id_o) REFERENCES Oeuvre(id_o),
   FOREIGN KEY(id_plat) REFERENCES Plateforme_diff(id_plat)
);

CREATE TABLE participer(
   id_o INT,
   id_p INT,
   id_role INT,
   PRIMARY KEY(id_o, id_p, id_role),
   FOREIGN KEY(id_o) REFERENCES Oeuvre(id_o),
   FOREIGN KEY(id_p) REFERENCES Professionnel(id_p),
   FOREIGN KEY(id_role) REFERENCES role(id_role)
);

CREATE TABLE etre_projetee(
   id_o INT,
   id_e INT,
   date_ DATE,
   PRIMARY KEY(id_o, id_e),
   FOREIGN KEY(id_o) REFERENCES Oeuvre(id_o),
   FOREIGN KEY(id_e) REFERENCES Evenement(id_e)
);

CREATE TABLE collaborer(
   id_p INT,
   id_p_1 INT,
   PRIMARY KEY(id_p, id_p_1),
   FOREIGN KEY(id_p) REFERENCES Professionnel(id_p),
   FOREIGN KEY(id_p_1) REFERENCES Professionnel(id_p)
);

CREATE TABLE evaluer(
   id_o INT,
   id_u INT,
   note INT,
   commentaire VARCHAR(50),
   favoris BOOL DEFAULT FALSE,
   PRIMARY KEY(id_o, id_u),
   FOREIGN KEY(id_o) REFERENCES Oeuvre(id_o),
   FOREIGN KEY(id_u) REFERENCES Utilisateur(id_u)
);

CREATE TABLE recommandation(
   id_o INT,
   id_u INT,
   PRIMARY KEY(id_o, id_u),
   FOREIGN KEY(id_o) REFERENCES Oeuvre(id_o),
   FOREIGN KEY(id_u) REFERENCES Utilisateur(id_u)
);

CREATE TABLE mesure(
   id_o INT,
   id_stat INT,
   PRIMARY KEY(id_o, id_stat),
   FOREIGN KEY(id_o) REFERENCES Oeuvre(id_o),
   FOREIGN KEY(id_stat) REFERENCES Statistiques(id_stat)
);

