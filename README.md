## SQL part 2


Calculer la moyenne du total_volume de la table `statistics_general`

```sql
SELECT
    AVG(total_volume) AS average
FROM
    `statistics_general`;
```
Afficher le `contract` qui a le moins de caractères dans le nom

Afficher le `contract` avec le plus de `attribute_category` différents

Afficher l’`asset` avec le meilleur score pour chaque `contract`

Afficher l’`attribute` avec le meilleur score de chaque `contract`

Afficher les `asset` qui ont un rank supérieur à 10, ordonnés par rank ascendant

Afficher le score moyen des `asset` du `contract` Last Dragons

Afficher la date de la première vente d’un `asset` du `contract` IMX Apes

Afficher tous les `attribute` de l’`asset` qui porte le nom ‘IMXToadz #315’

Calculer le nombre de `attribute_category` par `contract`
 
