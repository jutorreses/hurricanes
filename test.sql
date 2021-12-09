
CREATE DATABASE testdb;

CREATE TABLE atlantic_o (
ID varchar(255),
Name varchar(255),
Date varchar(255),
Time int,
Event varchar(255),
Status varchar(255),
Latitude varchar(255),
Longitude varchar(255),
Max_Winds int, 
Min_Pressure int,
Low_Wind_NE int,
Low_Wind_SE int,
Low_Wind_SW int,
Low_Wind_NW int,
Moderate_Wind_NE int,
Moderate_Wind_SE int,
Moderate_Wind_SW int,
Moderate_Wind_NW int,
High_Wind_NE int,
High_Wind_SE int,
High_Wind_SW int,
High_Wind_NW int
);

DROP TABLE atlantic_o;


INSERT INTO atlantic_o(ID,Name,Date,Time,Event,Status,Latitude,Longitude,Max_Winds,Min_Pressure ,Low_Wind_NE ,Low_Wind_SE ,Low_Wind_SW ,Low_Wind_NW ,Moderate_Wind_NE ,Moderate_Wind_SE ,Moderate_Wind_SW ,Moderate_Wind_NW ,High_Wind_NE ,High_Wind_SE ,High_Wind_SW ,High_Wind_NW )
VALUES 
('AL021951',               'ABLE','1951-05-18',0, NULL  , 'HU','27.1N','78.6W',75,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('AL021951',               'ABLE','1951-05-18',600,NULL  , 'HU','26.9N','78.3W',75,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('AL021951',               'ABLE','1951-05-18',1200, 'L', 'HU','27.0N','77.9W',75,982,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('AL021951',               'ABLE','1951-05-18',1800,  NULL, 'HU','27.2N','77.5W',70,985,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('AL021951',               'ABLE','1951-05-19',0,  NULL, 'HU','27.4N','77.2W',70,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999)
;
--ID,Name,Date,Time,Event,Status,Latitude,Longitude,
--Maximum Wind,Minimum Pressure,Low Wind NE,Low Wind SE,
--Low Wind SW,Low Wind NW,Moderate Wind NE,Moderate Wind SE,
--Moderate Wind SW,Moderate Wind NW,High Wind NE,High Wind SE,High Wind SW,High Wind NW

CREATE TABLE pacific_o (
ID varchar(255),
Name varchar(255),
Date varchar(255),
Time int,
Event varchar(255),
Status varchar(255),
Latitude varchar(255),
Longitude varchar(255),
Max_Winds int, 
Min_Pressure int,
Low_Wind_NE int,
Low_Wind_SE int,
Low_Wind_SW int,
Low_Wind_NW int,
Moderate_Wind_NE int,
Moderate_Wind_SE int,
Moderate_Wind_SW int,
Moderate_Wind_NW int,
High_Wind_NE int,
High_Wind_SE int,
High_Wind_SW int,
High_Wind_NW int
);

DROP TABLE pacific_o;

INSERT INTO pacific_o(ID,Name,Date,Time,Event,Status,Latitude,Longitude,Max_Winds,Min_Pressure ,Low_Wind_NE ,Low_Wind_SE ,Low_Wind_SW ,Low_Wind_NW ,Moderate_Wind_NE ,Moderate_Wind_SE ,Moderate_Wind_SW ,Moderate_Wind_NW ,High_Wind_NE ,High_Wind_SE ,High_Wind_SW ,High_Wind_NW )
VALUES 
('EP011951',            'UNNAMED','1951-05-18',0, '' , 'TS','12.1N','104.1W',45,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('EP011951',            'UNNAMED','1951-05-18',600, '' , 'TS','12.8N','103.9W',45,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('EP011951',            'UNNAMED','1951-05-18',1200, '' , 'TS','13.6N','103.8W',45,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('EP011951',            'UNNAMED','1951-05-18',1800, '' , 'TS','14.3N','103.6W',45,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('EP011951',            'UNNAMED','1951-05-19',0, '' , 'TS','15.0N','103.3W',45,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999)

;

------------------------------------------------------
CREATE TABLE storm_date (
ID varchar(255),
Name varchar(255),
Date varchar(255),
Time int
);

DROP Table storm_date;

INSERT INTO storm_date (ID,Name, Date, Time)
Values 
('AL021951', 'ABLE','1951-05-18',0),
('AL021951', 'ABLE','1951-05-18',600),
('AL021951',               'ABLE','1951-05-18',1200),
('AL021951',               'ABLE','1951-05-18',1800),
('AL021951',               'ABLE','1951-05-19',0),
('AL021951',               'ABLE','1951-05-19',600),
('AL021951',               'ABLE','1951-05-19',1200),
('AL021951',               'ABLE','1951-05-19',1800),
('AL021951',               'ABLE','1951-05-20',0),
('AL021951',               'ABLE','1951-05-20',600),
('AL021951',               'ABLE','1951-05-20',1200),
('AL021951',               'ABLE','1951-05-20',1800),
('AL021951',               'ABLE','1951-05-21',0),
('AL021951',               'ABLE','1951-05-21',600),
('AL021951',               'ABLE','1951-05-21',1200),
('AL021951',               'ABLE','1951-05-21',1800),
('AL021951',               'ABLE','1951-05-22',0),
('AL021951',               'ABLE','1951-05-22',600),
('AL021951',               'ABLE','1951-05-22',1200),

('AL031951',              'BAKER','1951-08-02',600),
('AL031951',              'BAKER','1951-08-02',1200),
('AL031951',              'BAKER','1951-08-02',1800),
('AL031951',              'BAKER','1951-08-03',0),
('AL031951',              'BAKER','1951-08-03',600),
('AL031951',              'BAKER','1951-08-03',1200),
('AL031951',              'BAKER','1951-08-03',1800),
('AL031951',              'BAKER','1951-08-04',0),
('AL031951',              'BAKER','1951-08-04',600),
('AL031951',              'BAKER','1951-08-04',1200),
('AL031951',              'BAKER','1951-08-04',1800),
('AL031951',              'BAKER','1951-08-05',0),
('AL031951',              'BAKER','1951-08-05',600),
('AL031951',              'BAKER','1951-08-05',1200),
('AL031951',              'BAKER','1951-08-05',1800),
('AL041951',            'CHARLIE','1951-08-12',0),
('AL041951',            'CHARLIE','1951-08-12',600),
('AL041951',            'CHARLIE','1951-08-12',1200),
('AL041951',            'CHARLIE','1951-08-12',1800),
('AL041951',            'CHARLIE','1951-08-13',0),
('AL041951',            'CHARLIE','1951-08-13',600),
('AL041951',            'CHARLIE','1951-08-13',1200),
('AL041951',            'CHARLIE','1951-08-13',1800),

('EP011951',            'UNNAMED','1951-05-18',0),
('EP011951',            'UNNAMED','1951-05-18',600),
('EP011951',            'UNNAMED','1951-05-18',1200),
('EP011951',            'UNNAMED','1951-05-18',1800),
('EP011951',            'UNNAMED','1951-05-19',0)

;
--------------
('AL021951',               'ABLE','1951-05-22',1800),
('AL021951',               'ABLE','1951-05-23',0),
('AL021951',               'ABLE','1951-05-23',600),
('AL021951',               'ABLE','1951-05-23',1200),
('AL021951',               'ABLE','1951-05-23',1800),
('AL021951',               'ABLE','1951-05-24',0),
('AL021951',               'ABLE','1951-05-24',600),
('AL021951',               'ABLE','1951-05-24',1200),
('AL021951',               'ABLE','1951-05-24',1800),

----------------------------

CREATE TABLE location_coordinates (
ID varchar(255),
Name varchar(255),
Date varchar(255),
Time int,
Latitude varchar(255),
Longitude varchar(255)
);

DROP Table location_coordinates;

INSERT INTO location_coordinates (ID,Name, Date, Time, Latitude, Longitude)
Values 
('AL021951', 'ABLE','1951-05-18',0,  '27.1N','78.6W'),
('AL021951', 'ABLE','1951-05-18',600,'26.9N','78.3W'),
('AL021951',               'ABLE','1951-05-18',1200,'27.0N','77.9W'),
('AL021951',               'ABLE','1951-05-18',1800,'27.2N','77.5W'),
('AL021951',               'ABLE','1951-05-19',0,'27.4N','77.2W'),
('AL021951',               'ABLE','1951-05-19',600,'27.7N','76.9W'),
('AL021951',               'ABLE','1951-05-19',1200,'28.1N','76.6W'),

('EP011951',            'UNNAMED','1951-05-18',0,'12.1N','104.1W'),
('EP011951',            'UNNAMED','1951-05-18',600,'12.8N','103.9W'),
('EP011951',            'UNNAMED','1951-05-18',1200,'13.6N','103.8W'),
('EP011951',            'UNNAMED','1951-05-18',1800,'14.3N','103.6W'),
('EP011951',            'UNNAMED','1951-05-19',0,'15.0N','103.3W')

;

----------------------
CREATE TABLE storm_type (
ID varchar(255),
Name varchar(255),
Date varchar(255),
Time int,
Status varchar(255)
);

DROP Table storm_type;

INSERT INTO storm_type (ID,Name, Date, Time, Status)
Values 
('AL021951', 'ABLE','1951-05-18',0,  'HU'),
('AL021951', 'ABLE','1951-05-18',600,'HU'),
('AL021951',               'ABLE','1951-05-18',1200,'HU'),
('AL021951',               'ABLE','1951-05-18',1800,'HU'),
('AL021951',               'ABLE','1951-05-19',0,'HU'),
('AL021951',               'ABLE','1951-05-19',600,'HU'),
('AL021951',               'ABLE','1951-05-19',1200,'HU'),

('EP011951',            'UNNAMED','1951-05-18',0, 'TS'),
('EP011951',            'UNNAMED','1951-05-18',600, 'TS'),
('EP011951',            'UNNAMED','1951-05-18',1200, 'TS'),
('EP011951',            'UNNAMED','1951-05-18',1800, 'TS'),
('EP011951',            'UNNAMED','1951-05-19',0, 'TS')

;

--------------------
CREATE TABLE wind_levels (
ID varchar(255),
Name varchar(255),
Date varchar(255),
Time int,
Low_Wind_NE int,
Low_Wind_SE int,
Low_Wind_SW int,
Low_Wind_NW int,
Moderate_Wind_NE int,
Moderate_Wind_SE int,
Moderate_Wind_SW int,
Moderate_Wind_NW int,
High_Wind_NE int,
High_Wind_SE int,
High_Wind_SW int,
High_Wind_NW int
);

DROP TABLE wind_levels;


INSERT INTO wind_levels(ID,Name,Date,Time,Low_Wind_NE ,Low_Wind_SE ,Low_Wind_SW ,Low_Wind_NW ,Moderate_Wind_NE ,Moderate_Wind_SE ,Moderate_Wind_SW ,Moderate_Wind_NW ,High_Wind_NE ,High_Wind_SE ,High_Wind_SW ,High_Wind_NW )
VALUES 
('AL021951',               'ABLE','1951-05-18',0,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('AL021951',               'ABLE','1951-05-18',600,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('AL021951',               'ABLE','1951-05-18',1200,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('AL021951',               'ABLE','1951-05-18',1800,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('AL021951',               'ABLE','1951-05-19',0,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),

('EP011951',            'UNNAMED','1951-05-18',0,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('EP011951',            'UNNAMED','1951-05-18',600,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('EP011951',            'UNNAMED','1951-05-18',1200,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('EP011951',            'UNNAMED','1951-05-18',1800,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('EP011951',            'UNNAMED','1951-05-19',0,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999)

;

SELECT * 
From storm_date
---WHERE Date LIKE '%1951%'
Where strftime('%Y',Date)='1951';

----------------
SELECT
	Status,
	COUNT(*)
FROM
	storm_type
GROUP BY
	Status
;
----------------
UPDATE storm_date
SET Name = 'Pizza'
WHERE ID = 'ZZZ111'
;

UPDATE storm_date
SET Name = 'ZAZ'
WHERE ID = 'ZZZ111'
;
----------------
UPDATE storm_date
SET ID = 'ZAZA1010'
WHERE Name = 'ZAZ'
;

UPDATE storm_date
SET ID = 'ZZZ111'
WHERE Name = 'ZAZ'
;
--------------

SELECT ID, COUNT(*)
FROM storm_date
GROUP BY ID
;

---------------
--Delete Single Entry
INSERT INTO atlantic_o (ID,Name,Date,Time,Event,Status,Latitude,Longitude,Max_Winds,Min_Pressure ,Low_Wind_NE ,Low_Wind_SE ,Low_Wind_SW ,Low_Wind_NW ,Moderate_Wind_NE ,Moderate_Wind_SE ,Moderate_Wind_SW ,Moderate_Wind_NW ,High_Wind_NE ,High_Wind_SE ,High_Wind_SW ,High_Wind_NW )
Values 
('LOL1024', 'Cassy','1999-05-18',0, '' , 'TS','12.1N','104.1W',45,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('LOL1024', 'Cassy','1999-05-18',600, '' , 'TS','12.1N','104.1W',45,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('LOL1024', 'Cassy','1999-05-18',1200, '' , 'TS','12.1N','104.1W',45,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999),
('LOL1024', 'Cassy','1999-05-18',1800, '' , 'TS','12.1N','104.1W',45,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999,-999)
;

INSERT INTO storm_date (ID,Name,Date,Time)
Values 
('LOL1024', 'Cassy','1999-05-18',0),
('LOL1024', 'Cassy','1999-05-18',600),
('LOL1024', 'Cassy','1999-05-18',1200),
('LOL1024', 'Cassy','1999-05-18',1800)
;

select * from storm_date;


INSERT INTO storm_type (ID,Name,Date,Time, Status)
Values 
('LOL1024', 'Cassy','1999-05-18',0, 'CY'),
('LOL1024', 'Cassy','1999-05-18',600,'CY'),
('LOL1024', 'Cassy','1999-05-18',1200,'CY'),
('LOL1024', 'Cassy','1999-05-18',1800,'CY')
;


DELETE FROM pacific_o
WHERE Name= 'Cassy'
AND Date = '1999-05-18'
AND Time = 1800;



--------------------
--Delete Entire Record

DELETE FROM storm_date
WHERE ID = 'LOL1024';