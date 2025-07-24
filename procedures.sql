-- Procedure to Print all Team details
CREATE OR REPLACE PROCEDURE print_team_details AS
BEGIN
    FOR rec IN (SELECT * FROM Teams) LOOP
        DBMS_OUTPUT.PUT_LINE('Team: ' || rec.Team_name || ', Balance: ' || rec.Balance || ', Captain: ' || rec.Captain);
    END LOOP;
END;
/

-- Procedure to Print all Player details
CREATE OR REPLACE PROCEDURE print_player AS
BEGIN
    FOR rec IN (SELECT * FROM Player_Details) LOOP
        DBMS_OUTPUT.PUT_LINE('Player: ' || rec.Player_name || ', Price: ' || rec.Current_value || ', Team: ' || rec.Team);
    END LOOP;
END;
/

-- Procedure to Add new player to Player table
CREATE OR REPLACE PROCEDURE add_player(p_name VARCHAR2) AS
BEGIN
    INSERT INTO Player (Player_id, Player_name)
    VALUES (NULL, p_name);
END;
/

-- Procedure to Sell a player to a team
CREATE OR REPLACE PROCEDURE sell_player(p_name VARCHAR2, team_name VARCHAR2) AS
    p_price NUMBER;
BEGIN
    SELECT Current_value INTO p_price FROM Player_Details WHERE Player_name = p_name;

    UPDATE Player_Details
    SET Status = 'Sold', Team = team_name
    WHERE Player_name = p_name;

    UPDATE Teams
    SET Player_count = Player_count + 1,
        Balance = Balance - p_price
    WHERE Team_name = team_name;
END;
/
