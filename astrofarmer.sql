INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_astrofarmer', 'Farmer', 1),
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_astrofarmer', 'Farmer', 1),
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_astrofarmer', 'Farmer', 1),

INSERT INTO `jobs` (name, label) VALUES
	('farmer', 'Farmer')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('farmer',0,'recruit','Początkujący Farmer',20,'{}','{}'),
	('farmer',1,'boss','Szef Farmerów',40,'{}','{}'),
	
;