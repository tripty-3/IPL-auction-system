CREATE TABLE Admin (
    Username VARCHAR2(50) PRIMARY KEY,
    Password VARCHAR2(50)
);
CREATE TABLE Player (
    Player_id NUMBER PRIMARY KEY,
    Player_name VARCHAR2(50)
);
CREATE TABLE Player_Details (
    Player_name VARCHAR2(50),
    Matches NUMBER,
    Runs NUMBER,
    Bating_SR NUMBER,
    Batting_AVG NUMBER,
    Best VARCHAR2(10),
    Wickets NUMBER,
    Bowling_SR NUMBER,
    Bowling_AVG NUMBER,
    Current_value NUMBER,
    Team VARCHAR2(50),
    Status VARCHAR2(10),
    Player_type VARCHAR2(20)
);
CREATE TABLE Teams (
    Team_name VARCHAR2(50),
    Balance NUMBER,
    Player_count NUMBER,
    Captain VARCHAR2(50)
);
CREATE TABLE Owners (
    Team_name VARCHAR2(50),
    Owner VARCHAR2(50)
);
