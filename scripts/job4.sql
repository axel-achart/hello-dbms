# 1.

SELECT winner FROM nobel
WHERE yr = 1968

# 2.

SELECT winner FROM nobel
WHERE yr = 1967 AND subject = 'Literature'

# 3.

SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein'

# 4.

SELECT * FROM nobel
WHERE subject = 'Literacy' AND yr < 1990 AND yr > 1980

# 5.

SELECT * FROM nobel
WHERE subject = 'Mathematics'