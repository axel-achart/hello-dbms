-- 1
SELECT name, literacy
FROM world
WHERE literacy IS NOT NULL
ORDER BY literacy DESC
LIMIT 10;

-- 2
SELECT name, net_migration
FROM world
WHERE net_migration IS NOT NULL
ORDER BY net_migration DESC
LIMIT 15;

-- 3
SELECT
  CASE
    WHEN birthrate < 10 THEN '<10'
    WHEN birthrate BETWEEN 10 AND 19.9 THEN '10-19.9'
    WHEN birthrate BETWEEN 20 AND 29.9 THEN '20-29.9'
    ELSE '>=30'
  END AS birthrate_bucket,
  AVG(infant_mortality) AS avg_infant_mortality,
  COUNT(*) as countries_in_bucket
FROM world
GROUP BY birthrate_bucket
ORDER BY birthrate_bucket;

-- 4
SELECT name, arable, crops
FROM world
WHERE arable IS NOT NULL
ORDER BY arable DESC
LIMIT 10;

-- 5
SELECT name, birthrate, deathrate
FROM world
WHERE birthrate IS NOT NULL AND deathrate IS NOT NULL AND deathrate > birthrate;

-- 6
SELECT name, infant_mortality, gdp_per_capita
FROM world
WHERE infant_mortality IS NOT NULL
ORDER BY infant_mortality DESC
LIMIT 20;
