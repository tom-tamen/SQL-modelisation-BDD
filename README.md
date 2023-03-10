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
```sql
SELECT
    MAX(`attribute`.score) AS best_score,
    `attribute_category`.name AS attribute_name,
    `contract`.name AS contract_name
FROM
    `contract`
    JOIN `attribute_category` ON `contract`.id = `attribute_category`.contract_id
    JOIN `attribute` ON `attribute_category`.id = `attribute`.attribute_category_id
GROUP BY
    `contract`.id
ORDER BY
    best_score;
```
Afficher les `asset` qui ont un rank supérieur à 10, ordonnés par rank ascendant
```sql
SELECT
    *
FROM
    `asset`
WHERE
    `asset`.rank > 10
ORDER BY
    `asset`.rank ASC;
```
Afficher le score moyen des `asset` du `contract` Last Dragons
```sql
SELECT
    AVG(`asset`.score) AS average
FROM
    `asset`
    JOIN `contract` ON `contract`.id = `asset`.contract_id
WHERE
    `contract`.name = 'Last Dragons';
```

Afficher la date de la première vente d’un `asset` du `contract` IMX Apes
```sql
SELECT
    MAX(`order`.`date`) AS older,
    `asset`.name
FROM
    `order`
    JOIN `asset` ON `asset`.id = `order`.asset_id
    JOIN `contract` ON `contract`.id = `asset`.contract_id
WHERE
    `contract`.name = 'IMX Apes'
GROUP BY
    `contract`.id;
```
Afficher tous les `attribute` de l’`asset` qui porte le nom ‘IMXToadz #315’
```sql
SELECT
    `attribute`.`value`
FROM
    `asset`
    JOIN `attribute_asset` ON `asset`.id = `attribute_asset`.asset_id
    JOIN `attribute` ON `attribute_asset`.attribute_id = `attribute`.id
WHERE
    `asset`.name = "IMXToadz #315";
```
Calculer le nombre de `attribute_category` par `contract`
 
```sql
SELECT
    COUNT(`attribute_category`.contract_id) AS number_of_attribute_category,
    `contract`.name
FROM
    `contract`
    JOIN `attribute_category` ON `attribute_category`.contract_id = `contract`.id
GROUP BY
    `contract`.id;
```