-- 1
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1986;


-- 2
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1967 AND subject = 'Literature';


-- 3
SELECT yr, subject
FROM nobel
WHERE winner LIKE '%Albert Einstein%';


-- 4
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989
ORDER BY yr;


-- 5
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Mathematics';

-- Count:
SELECT COUNT(*) AS math_winners_count
FROM nobel
WHERE subject = 'Mathematics';
