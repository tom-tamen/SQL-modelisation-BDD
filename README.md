## SQL part 2


Calculer la moyenne du total_volume de la table `statistics_general`

```sql
SELECT
    AVG(total_volume) AS average
FROM
    `statistics_general`;
```
Afficher le `contract` qui a le moins de caractères dans le nom
```sql
SELECT
    MIN(LENGTH(`contract`.name)) AS lenght,
    `contract`.name
FROM
    `contract`
GROUP BY
    `contract`.id
ORDER BY
    lenght
LIMIT
    1;
```
Afficher le `contract` avec le plus de `attribute_category` différents
```sql
SELECT
    COUNT(`contract`.id) AS n_name,
    `contract`.name
FROM
    `contract`
    INNER JOIN `attribute_category` ON `attribute_category`.contract_id = `contract`.id
GROUP BY
    `contract`.id
ORDER BY
    n_name DESC
LIMIT
    1;
```
Afficher l’`asset` avec le meilleur score pour chaque `contract`
```sql
SELECT
    MAX(`asset`.score) AS best_score,
    `asset`.name AS asset_name,
    `contract`.name AS contract_name
FROM
    `asset`
    INNER JOIN `contract` ON `contract`.id = `asset`.contract_id
GROUP BY
    `contract`.id
ORDER BY
    best_score;
```

Afficher l’`attribute` avec le meilleur score de chaque `contract`

Afficher les `asset` qui ont un rank supérieur à 10, ordonnés par rank ascendant

Afficher le score moyen des `asset` du `contract` Last Dragons

Afficher la date de la première vente d’un `asset` du `contract` IMX Apes

Afficher tous les `attribute` de l’`asset` qui porte le nom ‘IMXToadz #315’

Calculer le nombre de `attribute_category` par `contract`
 
