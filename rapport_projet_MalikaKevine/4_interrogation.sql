-- 1-1) Charles souhaite suivre les ajouts récents au catalogue: œuvres disponibles entre 2023 et 2024
SELECT Titre_o, annee_sortie
FROM Oeuvre
WHERE annee_sortie BETWEEN 2023 AND 2024;

-- 1-2) Aline souhaite trouver un titre d'oeuvre pour l'accroche de son article : œuvres dont le titre contient le mot 'The'
SELECT Titre_o
FROM Oeuvre
WHERE Titre_o LIKE 'The%';

-- 1-3)Laurelle souhaite suivre les évènements dans des pays spécifiques: événements organisés en France ou en Allemagne
SELECT nom_e, pays_e
FROM Evenement
WHERE pays_e IN ('France', 'Allemagne');

--  1-4)Aline souhaite verifier la tendance des oeuvres longues: top 5 des œuvres les plus longues
SELECT Titre_o, duree
FROM Oeuvre
ORDER BY duree DESC
LIMIT 5;

-- 1-5)Charles vérifie les oeuvres accessibles au public : œuvres disponibles sur Netflix ou Amazon Prime
SELECT o.Titre_o, p.nom_plat
FROM Oeuvre o
JOIN etre_disponible ed ON o.id_o = ed.id_o
JOIN Plateforme_diff p ON ed.id_plat = p.id_plat
WHERE p.nom_plat IN ('Netflix', 'Amazon Prime');

-- 2-1)Aline souhaite connaitre les langues les plus utilisées par les productions : nombre d’œuvres par langue
SELECT langue_originale, COUNT(*) AS nb_oeuvres
FROM Oeuvre
GROUP BY langue_originale;

-- 2-2)Charles: nombre de plateformes par œuvre
SELECT o.Titre_o, COUNT(ed.id_plat) AS nb_plateformes
FROM Oeuvre o
JOIN etre_disponible ed ON o.id_o = ed.id_o
GROUP BY o.Titre_o;

-- 2-3)Laurelle souhaite analyser les differentes projections: nombre d’œuvres projetées par événement
SELECT e.nom_e, COUNT(ep.id_o) AS nb_projections
FROM Evenement e
JOIN etre_projetee ep ON e.id_e = ep.id_e
GROUP BY e.nom_e;

-- 2-4)Aline souhaite connaitre les oeuvres les plus notées: moyenne des notes par œuvre
SELECT o.Titre_o, AVG(e.note) AS moyenne_note
FROM evaluer e
JOIN Oeuvre o ON e.id_o = o.id_o
GROUP BY o.Titre_o;

-- 2-5)Charles souhaite suivre la présence des oeuvres dans des évènements: œuvres ayant été projetées dans aumoins un événement
SELECT o.Titre_o, COUNT(ep.id_e) AS nb_evenements
FROM Oeuvre o
JOIN etre_projetee ep ON o.id_o = ep.id_o
GROUP BY o.Titre_o
HAVING COUNT(ep.id_e) >= 1;
-- 3-1)Charles souhaite connaitre les differents realisateurs de chaque oeuvre : œuvres et leurs réalisateurs
SELECT o.Titre_o, p.nom_p, p.prenom_p
FROM Oeuvre o
JOIN participer pa ON o.id_o = pa.id_o
JOIN Professionnel p ON pa.id_p = p.id_p
JOIN role r ON pa.id_role = r.id_role
WHERE r.nom_role = 'réalisateur';

-- 3-2)Aline souhaite connaitre les oeuvres les mieux notées : œuvres avec leur note moyenne
SELECT o.Titre_o, s.note_moy
FROM Oeuvre o
JOIN mesure m ON o.id_o = m.id_o
JOIN Statistiques s ON m.id_stat = s.id_stat;

-- 3-3)Laurelle souhaite connaitre les oeuvres qui ont déja été projetées : œuvres projetées avec le nom et la date de l’événement
SELECT o.Titre_o, e.nom_e, ep.date_
FROM Oeuvre o
JOIN etre_projetee ep ON o.id_o = ep.id_o
JOIN Evenement e ON ep.id_e = e.id_e;

-- 3-4)Aline souhaite avoir l'avis des utilisateurs sur les oeuvres : commentaires des utilisateurs sur les œuvres
SELECT u.pseudo, o.Titre_o, e.commentaire
FROM evaluer e
JOIN Utilisateur u ON e.id_u = u.id_u
JOIN Oeuvre o ON e.id_o = o.id_o;

-- 3-5)Charles souhaite connaitre la disponbilité des oeuvres sur les plateformes : plateformes de diffusion par œuvre
SELECT o.Titre_o, p.nom_plat
FROM Oeuvre o
LEFT JOIN etre_disponible ed ON o.id_o = ed.id_o
LEFT JOIN Plateforme_diff p ON ed.id_plat = p.id_plat;

-- 4-1)Aline vérifie le succès des oeuvres: œuvres qui n’ont reçu aucune récompense
SELECT Titre_o
FROM Oeuvre o
WHERE NOT EXISTS (
  SELECT 1 FROM Recompense r WHERE r.id_o = o.id_o
);

-- 4-2)Charles souhaite connaitre l'implication artistique des professionnels : professionnels n’ayant collaboré avec personne
SELECT nom_p, prenom_p
FROM Professionnel p
WHERE NOT EXISTS (
  SELECT 1 FROM collaborer c WHERE c.id_p = p.id_p OR c.id_p_1 = p.id_p
);

-- 4-3)Laurelle analyse les projections par évènement: événements sans projection d’œuvres
SELECT nom_e
FROM Evenement e
WHERE NOT EXISTS (
  SELECT 1 FROM etre_projetee ep WHERE ep.id_e = e.id_e
);

-- 4-4)Aline souhaite faire un classement des oeuvres les mieux notées: œuvres dont la note moyenne est supérieure à toutes les autres
SELECT o.Titre_o
FROM Oeuvre o
JOIN mesure m ON o.id_o = m.id_o
JOIN Statistiques s ON m.id_stat = s.id_stat
WHERE s.note_moy >= ALL (
  SELECT s2.note_moy
  FROM Statistiques s2
);

-- 4-5)Charles vérifie la diversité linguistique des oeuvres: œuvres qui ne sont pas en français
SELECT Titre_o, langue_originale
FROM Oeuvre
WHERE langue_originale <> 'français';