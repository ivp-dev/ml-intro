SELECT Team.team_api_id, team_long_name, team_short_name, MAX(rate) as rate_max FROM Team 
LEFT JOIN (
    SELECT team_api_id, SUM(won) as won_sum, COUNT(match_api_id) as match_count, (CAST(SUM(won) as float) / CAST(COUNT(match_api_id) as float)) as rate FROM (
        Select match_api_id, home_team_api_id as team_api_id, (home_team_goal - away_team_goal > 0) as won FROM Match WHERE season = "2015/2016"
        UNION
        Select match_api_id, away_team_api_id as team_api_id, (away_team_goal - home_team_goal > 0) as won FROM Match WHERE season = "2015/2016"
    )
    GROUP BY team_api_id
) M2
ON Team.team_api_id = M2.team_api_id