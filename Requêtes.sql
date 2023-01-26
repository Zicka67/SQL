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

-- 4. Nom des spécialités avec nombre de personnages par spécialité (trié par nombre de 
-- personnages décroissant)

-- SELECT nom_specialite, COUNT(id_personnage)
-- FROM specialite
-- INNER JOIN personnage ON specialite.id_specialite=personnage.id_specialite
-- GROUP BY specialite.nom_specialite ORDER BY COUNT(id_personnage) DESC

-- 5. Nom, date et lieu des batailles, classées de la plus récente à la plus ancienne (dates affichées 
-- au format jj/mm/aaaa).

-- SELECT nom_bataille, DATE_FORMAT(date_bataille,"%d %m -%Y")AS date_bataille, nom_lieu
-- FROM bataille
-- INNER JOIN lieu ON bataille.id_lieu=lieu.id_lieu
-- ORDER BY YEAR(date_bataille) DESC 
-- 6. Nom des potions + coût de réalisation de la potion (trié par coût décroissant).

-- SELECT nom_potion, SUM(qte*cout_ingredient) AS cout
-- FROM potion
-- INNER JOIN composer ON potion.id_potion = composer.id_potion
-- INNER JOIN ingredient ON composer.id_ingredient = ingredient.id_ingredient
-- GROUP BY nom_potion
-- ORDER BY SUM(qte*cout_ingredient) DESC

-- 7. Nom des ingrédients + coût + quantité de chaque ingrédient qui composent la potion 'Santé'.

--  SELECT nom_ingredient, cout_ingredient,qte
--  FROM ingredient
--  INNER JOIN composer ON ingredient.id_ingredient= composer.id_ingredient
--  INNER JOIN potion ON composer.id_potion= potion.id_potion
--  WHERE lower(nom_potion) LIKE 'santé'
 
-- 8. Nom du ou des personnages qui ont pris le plus de casques dans la bataille 'Bataille du village 
-- gaulois'.

-- SELECT nom_personnage, qte
-- FROM personnage
-- INNER JOIN prendre_casque ON personnage.id_personnage= prendre_casque.id_personnage
-- INNER JOIN bataille ON prendre_casque.id_bataille= bataille.id_bataille
-- WHERE (nom_bataille) LIKE 'Bataille du village gaulois'
-- ORDER BY (qte) DESC
-- LIMIT 1

-- 9. Nom des personnages et leur quantité de potion bue (en les classant du plus grand buveur 
-- au plus petit).
-- 10. Nom de la bataille où le nombre de casques pris a été le plus important.
-- 11. Combien existe-t-il de casques de chaque type et quel est leur coût total ? (classés par 
-- nombre décroissant)
-- 12. Nom des potions dont un des ingrédients est le poisson frais.
-- 13. Nom du / des lieu(x) possédant le plus d'habitants, en dehors du village gaulois.
-- 14. Nom des personnages qui n'ont jamais bu aucune potion.
-- 15. Nom du / des personnages qui n'ont pas le droit de boire de la potion 'Magique'.



 




