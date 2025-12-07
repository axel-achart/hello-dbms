-- 1
SELECT name
FROM world
WHERE name LIKE 'B%';


-- 2
SELECT name
FROM world
WHERE name LIKE 'Al%';


-- 3
SELECT name
FROM world
WHERE name LIKE '%y';

-- 4
SELECT name
FROM world
WHERE name LIKE '%land';

-- 5
SELECT name
FROM world
WHERE LOWER(name) LIKE '%w%';

-- 6
SELECT name
FROM world
WHERE name LIKE '%oo%' OR name LIKE '%ee%';

-- 7
SELECT name
FROM world
WHERE (LENGTH(LOWER(name)) - LENGTH(REPLACE(LOWER(name), 'a', ''))) >= 3;

-- 8
SELECT name
FROM world
WHERE SUBSTR(name, 2, 1) = 'r';
