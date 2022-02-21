SELECT match_api_id, home_team_api_id as team_api_id, date FROM `Match`
UNION ALL
SELECT match_api_id, away_team_api_id as team_api_id, date FROM `Match`