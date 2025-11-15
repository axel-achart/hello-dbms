# 1.

SELECT population FROM world 
WHERE name = 'Germany'


# 2.

SELECT population and name FROM world
WHERE name IN ('Sweden','Norway','Denmark')

# 3.

SELECT name FROM world
WHERE area > 200000 and area < 300000