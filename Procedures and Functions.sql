Use FPLHandbook;


DELIMITER //

create procedure check_user(user_name varchar(50), passkey varchar(50))
begin

select UserId, UserType from Generic_User g
where g.UserName = user_name and g.PassKey = passkey;
end //

DELIMITER ;

DELIMITER //

create function new_user(username varchar(50), passkey varchar(50))
returns int
begin
declare counter,result int;
set counter = (select count(*) from Generic_user g where 
g.UserName = username);
case
when username = '' then set result = 0;
when passkey = '' then set result = 1;
when counter = 1 then set result = 2 ;
when counter = 0 then set result = 3;
end case;
return result;
end //

DELIMITER ;

DELIMITER // 

create function inwatchlist(userid int, playerid int)
returns int
begin
declare result,counter int;
set counter = (select count(*) from Watchlist w where w.UserId = userid and
w.PlayerId = playerid);
case
when counter = 1 then set result = 1;
when counter = 0 then set result = 0;
end case;
return result;
end //

DELIMITER ;


DELIMITER //

create procedure create_user(user_name varchar(50), passkey varchar(50))
begin

insert into Generic_User(UserName, PassKey, UserType)
values (user_name, passkey, "User");
end // 

DELIMITER ;



DELIMITER //

create procedure player_add(pName varchar(50), Nationality varchar(50),
Pos varchar(10), Team varchar(50), price decimal(10,2))
begin
insert into PlayersWithStats(Player_Name, Nationality, Players_Pos,
Team_players, Price)
values (pName, Nationality, Pos, Team, price,0,0,0,0,0,0,0);
end //
DELIMITER ;


DELIMITER //

create procedure editplayers_andstats(PlayerId int, Players_Pos varchar(10),
Team varchar(50), Price decimal(10,2), GoalsScored int, GoalsConceded int,
Assists int, YC int, RC int, CleanSheets int, TotalPoints int)
begin
update PlayersWithStats
set PlayersWithStats.Players_Pos = Players_Pos, PlayersWithStats.Team = Team,
PlayersWithStats.Price = Price, PlayersWithStats.GoalsScored = GoalsScored,
PlayersWithStats.GoalsConceded = GoalsConceded, PlayersWithStats.Assists = Assists,
PlayersWithStats.YC = YC, PlayersWithStats.RC = RC, 
PlayersWithStats.CleanSheets = CleanSheets, PlayersWithStats.TotalPoints = TotalPoints
where PlayersWithStats.PlayerId = PlayerId;
end //

DELIMITER ;


DELIMITER //

create procedure edit_matches(MatchId int, Homescore int, AwayScore int)
begin
update Matches 
set Matches.HomeScore = Homescore, Matches.AwayScore = AwayScore
where Matches.MatchId = MatchId;
end //

DELIMITER ;


DELIMITER // 

create procedure team_list()
begin
select TeamId from Team;
end // 

DELIMITER ;




DELIMITER $$ 
create procedure filter_statsbyprice(startprice decimal(10,2), 
endprice decimal(10,2))
begin
select * from PlayersWithStats where PlayersWithStats.Price 
between startprice and endprice;
END $$ 

DELIMITER ;


DELIMITER $$ 

create procedure filter_statsbyteam(team varchar(100))
begin
select * from PlayersWithStats p where p.Team = team ;
END $$ 

DELIMITER ;


DELIMITER $$ 

create procedure filter_statsbyposition(pos varchar(10))
begin
select * from PlayersWithStats p where p.Players_Pos = pos;
END $$ 

DELIMITER ;


DELIMITER //

create procedure PlayersWithStats()
begin
select * from PlayersWithStats;
END //

DELIMITER ;


DELIMITER //

create procedure addtowatchlist(userid int, playerid int)
begin
insert into watchList (UserId, PlayerId)
values(userid, playerid);
end //
DELIMITER ;


DELIMITER //

create procedure showwatchlist(UserId int)
begin
select * from WatchList natural join PlayersWithStats where
WatchList.UserId = UserId;
end //
DELIMITER ;


DELIMITER //

create procedure removefromwatchlist(WatchListId int)
begin
delete from WatchList where WatchList.WatchListId = WatchListId;
end //

DELIMITER ;


DELIMITER // 

create procedure matchesbyTeam (team varchar(50))
begin
select * from Matches where Matches.HomeTeam = team or 
Matches.AwayTeam = team;
end // 

DELIMITER ;


DELIMITER // 

create procedure showmatches()
begin
select * from Matches;
end // 

DELIMITER ;

