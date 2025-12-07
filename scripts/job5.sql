-- 1
SELECT w.name, w.population
FROM world w
WHERE w.population > (
  SELECT population FROM world WHERE name = 'Russia'
);


-- 2
SELECT name, gdp_per_capita
FROM world
WHERE region = 'Europe' AND gdp_per_capita > (
  SELECT gdp_per_capita FROM world WHERE name = 'Italy'
);


-- 3
SELECT name, population
FROM world
WHERE population > (SELECT population FROM world WHERE name = 'United Kingdom')
  AND population < (SELECT population FROM world WHERE name = 'Germany');


-- 4
SELECT w.name,
       CONCAT(ROUND(100.0 * w.population / g.population, 0), '%') AS percentage_of_germany
FROM world w
CROSS JOIN (SELECT population AS population FROM world WHERE name = 'Germany') g
WHERE w.region = 'Europe'
ORDER BY w.name;


-- 5
SELECT region AS continent, name, area
FROM (
  SELECT region, name, area,
         ROW_NUMBER() OVER (PARTITION BY region ORDER BY area DESC) AS rn
  FROM world
) t
WHERE rn = 1;


-- 6
SELECT region
FROM world
GROUP BY region
HAVING MAX(population) <= 25000000;
