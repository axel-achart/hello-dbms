# 1.

SELECT name FROM world
WHERE name LIKE 'B%'

# 2.

SELECT name FROM world
WHERE name LIKE 'Al%'

# 3.

SELECT name FROM world
WHERE name LIKE '%Y'

# 4.

SELECT name FROM world
WHERE name LIKE '%land'

# 5.

SELECT name FROM world
WHERE name LIKE '%w%'

# 6.

SELECT name FROM world
WHERE name LIKE '%oo%' OR LIKE '%ee%'

# 7.

SELECT name FROM world
WHERE (LENGHT(UPPER(name)) - LENGHT(REPLACE(UPPER(name,'A,')))) >=3

# 8.

SELECT name FROM world
WHERE name LIKE '_r%'