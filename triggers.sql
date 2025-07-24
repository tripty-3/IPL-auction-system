-- Trigger: Auto-assign Player_id before inserting a new player
CREATE OR REPLACE TRIGGER trg_auto_player_id
BEFORE INSERT ON Player
FOR EACH ROW
BEGIN
    SELECT NVL(MAX(Player_id), 0) + 1 INTO :NEW.Player_id FROM Player;
END;
/

-- Trigger: Update Player_count and deduct balance when a player is sold
CREATE OR REPLACE TRIGGER trg_update_team_on_sale
AFTER UPDATE ON Player_Details
FOR EACH ROW
WHEN (NEW.Status = 'Sold')
BEGIN
    UPDATE Teams
    SET Player_count = Player_count + 1,
        Balance = Balance - :NEW.Current_value
    WHERE Team_name = :NEW.Team;
END;
/
