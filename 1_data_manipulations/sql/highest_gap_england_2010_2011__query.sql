SELECT match_api_id, home_team_api_id as team_api_id, date FROM `Match` WHERE league_id = 1729 AND season = '2010/2011'  
UNION ALL
SELECT match_api_id, away_team_api_id as team_api_id, date FROM `Match` WHERE league_id = 1729 AND season = '2010/2011'