-- Insert into Teams table
INSERT INTO Teams (Team_name, Balance, Player_count, Captain)
VALUES ('RCB', 9500, 1, 'Virat Kohli');

INSERT INTO Teams (Team_name, Balance, Player_count, Captain)
VALUES ('KKR', 9500, 1, 'Nitish Rana');

-- Insert into Owners table
INSERT INTO Owners (Team_name, Owner)
VALUES ('RCB', 'Prathmesh Mishra');

INSERT INTO Owners (Team_name, Owner)
VALUES ('KKR', 'Juhi Chawla');

INSERT INTO Owners (Team_name, Owner)
VALUES ('KKR', 'Shah Rukh Khan');

INSERT INTO Owners (Team_name, Owner)
VALUES ('KKR', 'Jay Mehta');

-- Insert into Player table
INSERT INTO Player (Player_id, Player_name)
VALUES (1, 'Virat Kohli');

INSERT INTO Player (Player_id, Player_name)
VALUES (2, 'Nitish Rana');

-- Insert into Player_Details table
INSERT INTO Player_Details (
    Player_name, Matches, Runs, Bating_SR, Batting_AVG, Best,
    Wickets, Bowling_SR, Bowling_AVG, Current_value, Team, Status, Player_type
)
VALUES (
    'Virat Kohli', 200, 7000, 140.5, 52.3, '113*',
    4, NULL, NULL, 1500, 'RCB', 'Sold', 'Batsman'
);

INSERT INTO Player_Details (
    Player_name, Matches, Runs, Bating_SR, Batting_AVG, Best,
    Wickets, Bowling_SR, Bowling_AVG, Current_value, Team, Status, Player_type
)
VALUES (
    'Nitish Rana', 150, 4000, 135.2, 39.1, '87',
    5, NULL, NULL, 800, 'KKR', 'Sold', 'Batsman'
);

-- Insert into Admin table
INSERT INTO Admin (Username, Password)
VALUES ('admin1', 'password123');
