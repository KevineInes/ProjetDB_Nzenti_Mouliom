 -- 1)utilisation de la base de données 
  USE CINEMA;
  -- 2)affectation des contraintes
ALTER TABLE Oeuvre
	ADD CONSTRAINT ck_oeuvre_annee CHECK(annee_sortie>0),
    ADD CONSTRAINT ck_oeuvre_duree CHECK(duree>0);
ALTER TABLE Evenement
	ADD CONSTRAINT ck_e_date CHECK(date_e>0),
    ADD CONSTRAINT ck_e_duree CHECK(duree>0);
ALTER TABLE Evaluer
	ADD CONSTRAINT ck_eval_note CHECK(note BETWEEN 0 AND 10);
ALTER TABLE Professionnel
	ADD CONSTRAINT  ck_pro_date CHECK(date_de_naissance>0);
ALTER TABLE Recompense
	ADD CONSTRAINT ck_rec_montant CHECK(montant>=0);
ALTER TABLE Statistiques
	ADD CONSTRAINT ck_stat_vues CHECK(nbre_vues>=0),
    ADD CONSTRAINT ck_stat_note CHECK(note_moy BETWEEN 0 AND 10);
