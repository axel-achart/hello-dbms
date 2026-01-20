-- 1
-- game.id is PK.
-- goal.matchid references game.id (one game → many goals).
-- goal.teamid references eteam.id (teams scored).
-- eteam.id PK.
-- Cardinalities: game (1) — (N) goal, eteam (1) — (N) goal (approx). No SQL for this; it's schema analysis.

-- 2
SELECT g.matchid, g.player
FROM goal g
WHERE g.teamid = 'GER';


-- 3
SELECT id, stadium, team1, team2
FROM game
WHERE id = 1012;


-- 4
SELECT go.player, go.teamid, ga.stadium, ga.mdate
FROM goal go
JOIN game ga ON ga.id = go.matchid
WHERE go.teamid = 'GER';


-- 5
SELECT ga.team1, ga.team2, go.player
FROM goal go
JOIN game ga ON ga.id = go.matchid
WHERE go.player LIKE '%Mario%';


-- 6
SELECT go.*, et.teamname, et.coach
FROM goal go
JOIN eteam et ON go.teamid = et.id;


-- 7
SELECT go.player, go.teamid, et.coach, go.gtime
FROM goal go
JOIN eteam et ON go.teamid = et.id
WHERE go.gtime <= 10;


-- 8
SELECT ga.mdate, et.teamname
FROM game ga
JOIN eteam et ON ga.team1 = et.id
WHERE et.coach = 'Fernando Santos';


-- 9
SELECT go.player, go.matchid
FROM goal go
JOIN game ga ON go.matchid = ga.id
WHERE ga.stadium = 'National Stadium, Warsaw';


-- 10
SELECT teamid, COUNT(*) AS total_goals
FROM goal
GROUP BY teamid
ORDER BY total_goals DESC;


-- 11
SELECT ga.stadium, COUNT(*) AS goals_in_stadium
FROM goal go
JOIN game ga ON go.matchid = ga.id
GROUP BY ga.stadium
ORDER BY goals_in_stadium DESC;


-- 12
SELECT ga.id AS match_id, ga.mdate AS match_date, COUNT(go.*) AS france_goals
FROM game ga
JOIN goal go ON go.matchid = ga.id
WHERE go.teamid = 'FRA'
GROUP BY ga.id, ga.mdate;
