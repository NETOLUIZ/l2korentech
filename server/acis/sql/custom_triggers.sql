USE acis;

ALTER TABLE buffer_schemes ADD PRIMARY KEY (object_id, scheme_name);

DROP TRIGGER IF EXISTS auto_buffer_schemes;

DELIMITER $$
CREATE TRIGGER auto_buffer_schemes AFTER INSERT ON characters
FOR EACH ROW
BEGIN
	INSERT INTO buffer_schemes (object_id, scheme_name, skills) VALUES
		(NEW.obj_Id, 'warrior', '1086,1242,1077,1268,1062,1240,1045,1040,1036,1035,1204,1352,271,275,274,269,264,304,1363'),
		(NEW.obj_Id, 'mage', '1035,1036,1040,1045,1048,1059,1078,1085,1204,1352,1354,1363,272,276,311');
END$$
DELIMITER ;
