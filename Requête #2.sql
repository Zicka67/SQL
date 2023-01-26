-- Exo 0 : Afficher tt les personnage qui sont dans le lieu avec l'ID 1

SELECT nom_personnage, id_personnage
FROM personnage
WHERE id_lieu = 1
ORDER BY nom_personnage