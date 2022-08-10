Use FPLHandbook;

-- Trigger to update points table

DELIMITER $$

create trigger played_update_after_match
	after update on Matches
    for each row
    begin
    update Team 
    
    set Played = Played + 1 
    where (Team.TeamId = new.HomeTeam or Team.TeamId = new.AwayTeam);
END $$ 

DELIMITER ;


DELIMITER $$

create trigger wins_update_after_match
	after update on Matches
    for each row
    begin
    update Team
    
    set Wins = Wins + 1 where (Team.TeamId = new.HomeTeam 
    and new.HomeScore > new.AwayScore)
    or  (Team.TeamId = new.AwayTeam 
    and new.AwayScore > new.HomeScore);
    
    update Team
    
    set Points = Points + 3 where (Team.TeamId = new.HomeTeam 
    and new.HomeScore > new.AwayScore)
    or  (Team.TeamId = new.AwayTeam 
    and new.AwayScore > new.HomeScore);
    
    END $$ 
    
    DELIMITER ;
    
DELIMITER $$ 

create trigger loss_update_after_match
after update on Matches
for each row
begin
update Team 
    
set Losses = Losses + 1  where (Team.TeamId = new.HomeTeam 
and new.HomeScore < new.AwayScore)
or  (Team.TeamId = new.AwayTeam 
and new.AwayScore < new.HomeScore);
    
END $$ 

DELIMITER ;

DELIMITER $$ 

create trigger draws_update_after_match
	after update on Matches
    for each row
    begin
    update Team 
    
     set Draws = Draws + 1 where 
     new.HomeScore = new.AwayScore 
     and (Team.TeamId = new.HomeTeam 
     or Team.TeamId = new.AwayTeam);
     
     update Team
     
     set Points = Points + 1 where 
     new.HomeScore = new.AwayScore 
     and (Team.TeamId = new.HomeTeam 
     or Team.TeamId = new.AwayTeam);
    
END $$ 

DELIMITER ;


