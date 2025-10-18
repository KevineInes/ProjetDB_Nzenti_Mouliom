-- 1)utilisation de la base de données
USE CINEMA;
-- 2)tables sans clés étrangères
INSERT INTO oeuvre VALUES
(1, 'Oppenheimer', 'drame', 2023, 180, 'anglais'),
(2, 'Barbie', 'comédie', 2023, 114, 'anglais'),
(3, 'Anatomie d’une chute', 'drame', 2023, 152, 'français'),
(4, 'Killers of the Flower Moon', 'thriller', 2023, 206, 'anglais'),
(5, 'The Zone of Interest', 'drame', 2023, 105, 'allemand'),
(6, 'Past Lives', 'romance', 2023, 106, 'coréen'),
(7, 'The Marvels', 'action', 2023, 105, 'anglais'),
(8, 'The Boy and the Heron', 'animation', 2023, 124, 'japonais'),
(9, 'Poor Things', 'fantastique', 2023, 141, 'anglais'),
(10, 'Napoleon', 'historique', 2023, 158, 'anglais'),
(11, 'Furiosa', 'action', 2024, 148, 'anglais'),
(12, 'Inside Out 2', 'animation', 2024, 96, 'anglais'),
(13, 'À toute allure', 'comédie', 2024, 98, 'français'),
(14, 'Boléro', 'biographie', 2024, 120, 'français'),
(15, 'The Seed of the Sacred Fig', 'drame', 2024, 167, 'persan');

INSERT INTO genre VALUES
('drame'), ('comédie'), ('thriller'), ('romance'), ('action'),
('animation'), ('fantastique'), ('historique'), ('biographie'),
('science-fiction'), ('documentaire'), ('aventure'), ('musical'),
('horreur'), ('mystère');

INSERT INTO professionnel VALUES
(1, 'Nolan', 'Christopher', 'britannique', '1970-07-30'),
(2, 'Gerwig', 'Greta', 'américaine', '1983-08-04'),
(3, 'Triet', 'Justine', 'française', '1978-07-17'),
(4, 'Scorsese', 'Martin', 'américain', '1942-11-17'),
(5, 'Glazer', 'Jonathan', 'britannique', '1965-03-26'),
(6, 'Song', 'Celine', 'coréenne', '1988-03-12'),
(7, 'DaCosta', 'Nia', 'américaine', '1989-11-08'),
(8, 'Miyazaki', 'Hayao', 'japonais', '1941-01-05'),
(9, 'Lanthimos', 'Yorgos', 'grec', '1973-05-27'),
(10, 'Scott', 'Ridley', 'britannique', '1937-11-30'),
(11, 'Williams', 'John', 'américain', '1932-02-08'),
(12, 'Fontaine', 'Anne', 'française', '1959-07-15'),
(13, 'Provost', 'Martin', 'français', '1957-05-13'),
(14, 'Rasoulof', 'Mohammad', 'iranien', '1972-01-01'),
(15, 'Garcia', 'José', 'français', '1966-03-17');

INSERT INTO utilisateur VALUES
(1, 'Alice Martin', 'aliceM'), (2, 'Karim Ben', 'karimB'), (3, 'Sophie Dubois', 'sophieD'),
(4, 'Liam Chen', 'liamC'), (5, 'Fatou Ndiaye', 'fatouN'), (6, 'Julien Morel', 'julienM'),
(7, 'Nina Rossi', 'ninaR'), (8, 'Tariq El', 'tariqE'), (9, 'Emma Lopez', 'emmaL'),
(10, 'Noah Kim', 'noahK'), (11, 'Chloé Durand', 'chloeD'), (12, 'Youssef Haddad', 'youssefH'),
(13, 'Laura Becker', 'lauraB'), (14, 'Mehdi Kacem', 'mehdiK'), (15, 'Inès Boulanger', 'inesB');

INSERT INTO plateforme_diff VALUES
(1, 'Netflix'), (2, 'Amazon Prime'), (3, 'Disney+'), (4, 'Canal+'), (5, 'Apple TV'),
(6, 'MUBI'), (7, 'Arte'), (8, 'HBO Max'), (9, 'Paramount+'), (10, 'OCS'),
(11, 'MyTF1'), (12, 'France.tv'), (13, 'YouTube Premium'), (14, 'Rakuten TV'), (15, 'Plex');

INSERT INTO role VALUES
(1, 'réalisateur'), (2, 'acteur principal'), (3, 'acteur secondaire'), (4, 'scénariste'),
(5, 'monteur'), (6, 'producteur'), (7, 'compositeur'), (8, 'costumier'), (9, 'chef opérateur'),
(10, 'assistant réalisateur'), (11, 'cascadeur'), (12, 'voix off'), (13, 'doubleur'),
(14, 'directeur artistique'), (15, 'chargé de casting');

INSERT INTO statistiques VALUES
(1, 12000, 9), (2, 8500, 8), (3, 5000, 7), (4, 3000, 6), (5, 15000, 9),
(6, 2000, 5), (7, 10000, 8), (8, 4000, 6), (9, 7000, 7), (10, 9500, 8),
(11, 11000, 9), (12, 6000, 7), (13, 2500, 5), (14, 8000, 8), (15, 3500, 6);

INSERT INTO evenement VALUES
(1, 'Festival de Cannes', 'Festival', '2023-05-20', 'France', 10),
(2, 'Oscars', 'Récompense', '2024-03-10', 'USA', 1),
(3, 'Berlinale', 'Festival', '2023-02-15', 'Allemagne', 7),
(4, 'César', 'Récompense', '2024-02-24', 'France', 1),
(5, 'BAFTA', 'Récompense', '2024-02-18', 'UK', 1),
(6, 'Venise', 'Festival', '2023-09-01', 'Italie', 10),
(7, 'Sundance', 'Festival', '2024-01-20', 'USA', 5),
(8, 'Toronto', 'Festival', '2023-09-07', 'Canada', 7),
(9, 'Locarno', 'Festival', '2023-08-02', 'Suisse', 6),
(10, 'San Sebastián', 'Festival', '2023-09-22', 'Espagne', 7),
(11, 'Golden Globes', 'Récompense', '2024-01-07', 'USA', 1),
(12, 'Tokyo Film Fest', 'Festival', '2023-10-23', 'Japon', 5),
(13, 'Prix Lumière', 'Récompense', '2024-04-12', 'France', 1),
(14, 'Festival du film iranien', 'Festival', '2024-05-01', 'Iran', 4),
(15, 'Festival du film coréen', 'Festival', '2024-06-15', 'Corée du Sud', 5);
-- 3)tables avec clé étrangères
INSERT INTO version VALUES
(1, 1, 'VO'), (2, 2, 'VF'), (3, 3, 'VO'), (4, 4, 'VF'), (5, 5, 'VO'),
(6, 6, 'VO'), (7, 7, 'VF'), (8, 8, 'VO'), (9, 9, 'VF'), (10, 10, 'VO'),
(11, 11, 'VO'), (12, 12, 'VF'), (13, 13, 'VO'), (14, 14, 'VF'), (15, 15, 'VO');

INSERT INTO faire_partie VALUES
(1, 'drame'), (2, 'comédie'), (3, 'drame'), (4, 'thriller'), (5, 'drame'),
(6, 'romance'), (7, 'action'), (8, 'animation'), (9, 'fantastique'), (10, 'historique'),
(11, 'action'), (12, 'animation'), (13, 'comédie'), (14, 'biographie'), (15, 'drame');

INSERT INTO etre_disponible VALUES
(1, 1), (1, 2), (2, 1), (2, 3), (3, 4), (4, 2), (5, 6), (6, 5), (7, 3), (8, 6),
(9, 1), (10, 2), (11, 3), (12, 4), (13, 5);

INSERT INTO mesure VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15);

INSERT INTO participer VALUES
(1, 1, 1), (2, 2, 1), (3, 3, 1), (4, 4, 1), (5, 5, 1),
(6, 6, 1), (7, 7, 1), (8, 8, 1), (9, 9, 1), (10, 10, 1),
(11, 1, 2), (12, 2, 2), (13, 3, 2), (14, 4, 2), (15, 5, 2);

INSERT INTO collaborer VALUES
(1, 11), (2, 12), (3, 13), (4, 14), (5, 15),
(1, 2), (3, 4), (5, 6), (7, 8), (9, 10),
(2, 1), (4, 3), (6, 5), (8, 7), (10, 9);

INSERT INTO evaluer VALUES
(1, 1, 9, 'Excellent film', TRUE), (2, 2, 8, 'Très bon', TRUE), (3, 3, 7, 'Intéressant', FALSE),
(4, 4, 6, 'Moyen', FALSE), (5, 5, 9, 'Chef-d’œuvre', TRUE), (6, 6, 5, 'Décevant', FALSE),
(7, 7, 8, 'Bon divertissement', TRUE), (8, 8, 6, 'Correct', FALSE), (9, 9, 7, 'Pas mal', TRUE),
(10, 10, 8, 'Bien réalisé', TRUE), (11, 11, 9, 'Très bon jeu d’acteur', TRUE),
(12, 12, 7, 'Original', FALSE), (13, 13, 5, 'Bof', FALSE), (14, 14, 8, 'Belle histoire', TRUE),
(15, 15, 6, 'Lent mais profond', FALSE);

INSERT INTO recommandation VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15);

INSERT INTO etre_projetee VALUES
(1, 1, '2023-05-20'), (2, 2, '2024-03-10'), (3, 3, '2023-02-15'), (4, 4, '2024-02-24'),
(5, 5, '2024-02-18'), (6, 6, '2023-09-01'), (7, 7, '2024-01-20'), (8, 8, '2023-09-07'),
(9, 9, '2023-08-02'), (10, 10, '2023-09-22'), (11, 11, '2024-01-07'), (12, 12, '2023-10-23'),
(13, 13, '2024-04-12'), (14, 14, '2024-05-01'), (15, 15, '2024-06-15');

INSERT INTO recompense VALUES
(1, 1, 1, 'Palme d\'Or', 'Meilleur film', 10000), (2, 2, 2, 'Oscar', 'Meilleur scénario', 15000),
(3, 3, 3, 'Ours d\'Or', 'Meilleur film', 12000), (4, 4, 4, 'César', 'Meilleure actrice', 8000),
(5, 5, 5, 'BAFTA', 'Meilleur réalisateur', 9000), (6, 6, 6, 'Lion d\'Or', 'Meilleur film', 11000),
(7, 7, 7, 'Prix Sundance', 'Prix du jury', 7000), (8, 8, 8, 'TIFF Award', 'Meilleur film', 9500),
(9, 9, 9, 'Léopard d\'Or', 'Meilleur scénario', 6000), (10, 10, 10, 'Concha d\'Or', 'Meilleur film', 8500),
(11, 11, 11, 'Golden Globe', 'Meilleur acteur', 13000), (12, 12, 12, 'Tokyo Grand Prix', 'Meilleur film', 7500),
(13, 13, 13, 'Prix Lumière', 'Révélation', 5000), (14, 14, 14, 'Prix Iranien', 'Meilleur film', 4000),
(15, 15, 15, 'Prix Coréen', 'Meilleure réalisation', 6500);