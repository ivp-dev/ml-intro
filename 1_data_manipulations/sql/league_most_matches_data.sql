-- SQLit
SELECT name, count FROM League INNER JOIN (
    SELECT league_id, Count(*) as count from Match GROUP BY Match.league_id
) as M ON League.id = M.league_id