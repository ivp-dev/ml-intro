SELECT Count() as count FROM Team INNER JOIN (
    Select match_api_id, date, home_team_api_id as team_api_id, (home_team_goal - away_team_goal > 0) as won FROM Match 
    UNION
    Select match_api_id, date, away_team_api_id as team_api_id, (away_team_goal - home_team_goal > 0) as won FROM Match 
) as M on Team.team_api_id = M.team_api_id WHERE team_short_name = "ARS" and won = 1 and date BETWEEN '2015-01-01' and '2016-12-31';