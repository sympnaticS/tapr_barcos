INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_barcos','Empresa de Barcos',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_barcos','Venda de Barcos',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('vendedorbarcos','Vendedor de Barcos')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('vendedorbarcos',0,'recruit','Recruit',10,'{}','{}'),
  ('vendedorbarcos',1,'novice','Novice',25,'{}','{}'),
  ('vendedorbarcos',2,'experienced','Experienced',40,'{}','{}'),
  ('vendedorbarcos',3,'boss','Boss',0,'{}','{}')
;

CREATE TABLE `barcos_vehicles` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `barcosalugados_vehicles` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int(11) NOT NULL,
	`rent_price` int(11) NOT NULL,
	`owner` varchar(30) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `barcos_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `barcos_categories` (name, label) VALUES
	('barco','Barcos'),
	('sub','Submarinos')
;

CREATE TABLE `barcos` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	PRIMARY KEY (`model`)
);

INSERT INTO `barcos` (name, model, price, category) VALUES
	('Dinghy 2','dinghy2',25000,'barco'),
	('Dinghy 4','dinghy4',30000,'barco'),
	('Jetmax','jetmax',30000,'barco'),
	('Marquis','marquis',100000,'barco'),
	('Jetski','seashark',25000,'barco'),
	('Speeder V3','speeder',60000,'barco'),
	('Kraken V1','submersible',4500000,'sub'),
	('Toro TS3','toro',80000,'barco')
;
