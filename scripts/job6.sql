-- 1
SELECT SUM(population) AS world_population
FROM world;

-- 2
SELECT region AS continent, SUM(population) AS total_population
FROM world
GROUP BY region
ORDER BY total_population DESC;

-- 3
SELECT region AS continent, SUM(gdp) AS total_gdp
FROM world
GROUP BY region;

SELECT region AS continent, SUM(gdp_per_capita * population) AS total_gdp_estimate
FROM world
GROUP BY region;

-- 4
SELECT SUM(gdp) AS africa_total_gdp
FROM world
WHERE region = 'Africa';

-- 5
SELECT COUNT(*) AS big_countries_count
FROM world
WHERE area >= 1000000;

-- 6
SELECT SUM(population) AS baltic_population
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania');

-- 7
SELECT region AS continent, COUNT(*) AS country_count
FROM world
GROUP BY region
ORDER BY country_count DESC;

-- 8
SELECT region AS continent, SUM(population) AS total_population
FROM world
GROUP BY region
HAVING SUM(population) >= 100000000;
