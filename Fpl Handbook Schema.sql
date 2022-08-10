create database FPLHandbook;

USE FPLHandbook;

CREATE TABLE Team 
(
   -- Cannot distinctly identify any field in this table for a secondary index
	TeamId VARCHAR(50) NOT NULL PRIMARY KEY,
    Stadium VARCHAR(50) NOT NULL,
    Played INT NOT NULL,
    Wins INT NOT NULL,
    Losses INT NOT NULL,
    Draws INT NOT NULL,
    Points INT NOT NULL 
);

CREATE TABLE Matches 
(
     
	MatchId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    GameWeek INT NOT NULL, 
    HomeTeam VARCHAR(50) NOT NULL ,     
    -- The HomeTeam can be used as a secondary index because we have unordered data and
    -- The HomeTeam is not a Candidate key, so we will have an intermediate layer of the 
    -- common occurences of the home team that will point to the HomeTeam in the index
    -- which in turn facilitates searching
    AwayTeam VARCHAR(50) NOT NULL,   
    -- The AwayTeam can be used as a secondary index because we have unordered data and
    -- The AwayTeam is not a Candidate key, so we will have an intermediate layer of the 
    -- common occurences of the away team that will point to the AwayTeam in the index
    -- which in turn facilitates searching
    HomeScore INT NOT NULL,
    AwayScore INT NOT NULL,
    
    CONSTRAINT team1_fk FOREIGN KEY (HomeTeam) REFERENCES Team(TeamId) 
    ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT team2_fk FOREIGN KEY (AwayTeam) REFERENCES Team(TeamId)
    ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE PlayersWithStats
(
	PlayerId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    PlayerName VARCHAR(100) NOT NULL, 
    -- The PlayerName can be used as a secondary index because we have unordered data and
    -- The PlayerName is not a Candidate key, so we will have an intermediate layer of the 
    -- common occurences of the PlayerName that will point to the PlayerTeam in the index
    -- This would help us implement faster searching analogies in SQL as the players table
    -- has a lot of data so this secondary indexing allows us to implement a binary search
    Nationality VARCHAR(25) NOT NULL,
    Players_Pos ENUM ('GK','DEF','MID','FWD'), 
    -- The Player_Pos can be used as a secondary index because we have unordered data and
    -- The Player_Pos is not a Candidate key, so we will have an intermediate layer of the 
    -- common occurences of the Player_Pos that will point to the Player_Pos in the index
    -- This would help us implement faster searching analogies in SQL as the players table
    -- has a lot of data so this secondary indexing allows us to implement a binary search
    Team VARCHAR(50) NOT NULL,
    -- The Team can be used as a secondary index because we have unordered data and
    -- The Team is not a Candidate key, so we will have an intermediate layer of the 
    -- common occurences of the Team that will point to the Team in the index
    -- This would help us implement faster searching analogies in SQL as the players table
    -- has a lot of data so this secondary indexing allows us to implement a binary search
    Price DECIMAL(10,2),
    GoalsScored INT NOT NULL,
    GoalsConceded INT NOT NULL,
    Assists INT NOT NULL,
    YC INT NOT NULL,
    RC INT NOT NULL,
    CleanSheets INT NOT NULL,
    TotalPoints INT NOT NULL,
    
    CONSTRAINT Playerteam_fk FOREIGN KEY (Team) 
    REFERENCES Team(TeamId) ON UPDATE CASCADE ON DELETE RESTRICT
    
);


CREATE TABLE Generic_User
(
	-- Cannot identify any fields for a secondary index
	UserId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    UserName VARCHAR (25) NOT NULL,  
    PassKey VARCHAR (25) NOT NULL,
    UserType ENUM ("User", "Admin")   
);


CREATE TABLE WatchList
(
	-- Cannot identify any fields for a secondary index
	WatchListId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	UserId INT NOT NULL,   
    PlayerId INT NOT NULL,
    
    CONSTRAINT Playername_fk1 FOREIGN KEY (PlayerId) REFERENCES 
    PlayersWithStats(PlayerId) ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT user_fk FOREIGN KEY (UserId) REFERENCES 
    Generic_User(UserId) ON UPDATE RESTRICT ON DELETE CASCADE
);
