-- 1. Nom des lieux qui finissent par 'um'.

-- SELECT *
-- FROM lieu
-- WHERE nom_lieu LIKE '%um'
-- 

-- 2. Nombre de personnages par lieu (trié par nombre de personnages décroissant).

-- *** Cette requête compte le nombre de caractères (à l'aide de la fonction COUNT) pour chaque emplacement (à l'aide de la clause GROUP BY id_lieu).  
-- Il renverra le nombre de caractères et l'id_lieu correspondant.  
-- Cette requête permet de savoir combien de caractères sont associés à chaque emplacement. *** 

-- SELECT COUNT(id_personnage) ,id_lieu
-- FROM personnage
-- GROUP BY id_lieu

-- 3. Nom des personnages + spécialité + adresse et lieu d'habitation, triés par lieu puis par nom 
-- de personnage

-- *** Cette requête consiste à sélectionner le nom des personnages, leurs spécialités, 
-- leur adresse et le lieu où ils habitent, à partir de la table "personnage".  
-- Le résultat sera regroupé par lieu (id_lieu) et nom du personnage (nom_personnage).  
-- Cette requête donnera tous les personnages, leurs spécialités, leur adresse et leur lieu de résidence regroupés par le lieu où ils habitent 
-- et classés par le nom du personnage. *** 

-- SELECT nom_personnage, id_specialite, adresse_personnage, id_lieu
-- FROM personnage
-- GROUP BY id_lieu, nom_personnage

-- 4. Nom des spécialités avec nombre de personnages par spécialité (trié par nombre de 
-- personnages décroissant)

-- SELECT nom_specialite, COUNT(id_personnage) *** Cette ligne sélectionne les colonnes "nom_specialite" et le nombre de "id_personnage" de la table "specialite" et "personnage". 
-- FROM specialite *** Cette ligne précise que les données doivent être sélectionnées dans la table "specialite". 
-- INNER JOIN personnage ON specialite.id_specialite=personnage.id_specialite *** Cette ligne joint les tables "specialite" et "personnage" 
-- sur la colonne "id_specialite", ce qui signifie que seules les lignes avec des valeurs "id_specialite" correspondantes dans les deux tables 
-- seront inclus dans le jeu de résultats. 
-- GROUP BY specialite.nom_specialite *** Cette ligne regroupe les résultats par la colonne "nom_specialite", 
-- ce qui signifie que le nombre de "id_personnage" sera calculé pour chaque valeur "nom_specialite" unique. 
-- ORDER BY COUNT(id_personnage) DESC  ***  Cette ligne ordonne les résultats par le nombre de "id_personnage" dans l'ordre décroissant, 
-- ce qui signifie que les spécialités avec le plus grand nombre de personnages seront listées en premier. 

-- 5. Nom, date et lieu des batailles, classées de la plus récente à la plus ancienne (dates affichées 
-- au format jj/mm/aaaa).

-- SELECT nom_bataille, DATE_FORMAT(date_bataille,"%d %m -%Y")AS date_bataille, nom_lieu       *** Cette ligne spécifie les colonnes à sélectionner 
-- dans la ou les tables spécifiées à la ligne suivante.  La fonction DATE_FORMAT est utilisée pour formater la colonne date_bataille dans
--  un format spécifique. ***
-- FROM bataille
-- INNER JOIN lieu ON bataille.id_lieu=lieu.id_lieu    ***  Cette ligne précise comment la ou les tables spécifiées à la ligne précédente 
-- doivent être jointes avec la table "lieu". La clause "ON" spécifie la condition de jointure  ***
-- ORDER BY YEAR(date_bataille) DESC    *** Cette ligne précise comment les résultats de la requête doivent être triés.  
-- La clause "ORDER BY" permet de trier les résultats par "YEAR" de la colonne "date_bataille" dans l'ordre décroissant (DESC)   ***

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



 




