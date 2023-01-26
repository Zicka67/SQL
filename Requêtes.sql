-- 1. Nom des lieux qui finissent par 'um'.

-- SELECT *
-- FROM lieu
-- WHERE nom_lieu LIKE '%um'
-- 

-- 2. Nombre de personnages par lieu (trié par nombre de personnages décroissant).

-- SELECT COUNT(id_personnage) ,id_lieu
-- FROM personnage
-- GROUP BY id_lieu

-- 3. Nom des personnages + spécialité + adresse et lieu d'habitation, triés par lieu puis par nom 
-- de personnage

-- SELECT nom_personnage, id_specialite, adresse_personnage, id_lieu
-- FROM personnage
-- GROUP BY id_lieu, nom_personnage