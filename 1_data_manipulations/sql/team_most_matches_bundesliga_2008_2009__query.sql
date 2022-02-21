SELECT MAX(count) as max FROM (
    SELECT team_api_id, count(match_api_id) as count FROM (
        SELECT match_api_id, home_team_api_id as team_api_id FROM Match WHERE season = '2008/2009' AND league_id = 7809 
        UNION
        SELECT match_api_id, away_team_api_id as team_api_id FROM Match WHERE season = '2008/2009' AND league_id = 7809
    ) GROUP BY team_api_id
)