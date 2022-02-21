-- SQLit
SELECT count(id) as count, player FROM (SELECT id, home_player_1 as player FROM Match WHERE home_player_1 NOT NULL
UNION ALL
SELECT id, home_player_2 as player FROM Match WHERE home_player_2 NOT NULL
UNION ALL
SELECT id, home_player_3 as player FROM Match WHERE home_player_3 NOT NULL
UNION ALL
SELECT id, home_player_4 as player FROM Match WHERE home_player_4 NOT NULL
UNION ALL
SELECT id, home_player_5 as player FROM Match WHERE home_player_5 NOT NULL
UNION ALL
SELECT id, home_player_6 as player FROM Match WHERE home_player_6 NOT NULL
UNION ALL
SELECT id, home_player_7 as player FROM Match WHERE home_player_7 NOT NULL
UNION ALL
SELECT id, home_player_8 as player FROM Match WHERE home_player_8 NOT NULL
UNION ALL
SELECT id, home_player_9 as player FROM Match WHERE home_player_9 NOT NULL
UNION ALL
SELECT id, home_player_10 as player FROM Match WHERE home_player_10 NOT NULL
UNION ALL
SELECT id, home_player_11 as player FROM Match WHERE home_player_11 NOT NULL
UNION ALL
SELECT id, away_player_1 as player FROM Match WHERE away_player_1 NOT NULL
UNION ALL
SELECT id, away_player_2 as player FROM Match WHERE away_player_2 NOT NULL
UNION ALL
SELECT id, away_player_3 as player FROM Match WHERE away_player_3 NOT NULL
UNION ALL
SELECT id, away_player_4 as player FROM Match WHERE away_player_4 NOT NULL
UNION ALL
SELECT id, away_player_5 as player FROM Match WHERE away_player_5 NOT NULL
UNION ALL
SELECT id, away_player_6 as player FROM Match WHERE away_player_6 NOT NULL
UNION ALL
SELECT id, away_player_7 as player FROM Match WHERE away_player_7 NOT NULL
UNION ALL
SELECT id, away_player_8 as player FROM Match WHERE away_player_8 NOT NULL
UNION ALL
SELECT id, away_player_9 as player FROM Match WHERE away_player_9 NOT NULL
UNION ALL
SELECT id, away_player_10 as player FROM Match WHERE away_player_10 NOT NULL
UNION ALL
SELECT id, away_player_11 as player FROM Match WHERE away_player_11 NOT NULL) as players GROUP BY player ORDER BY count DESC