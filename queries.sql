--Queries:

-----------------1 Test Query-----------------
Select * From pacific_o;

SELECT * FROM atlantic_o;


SELECT * FROM atlantic_o
WHERE Event IS NOT NULL;
-----------------2-----------------
SELECT ID, Name 
FROM storm_date
GROUP BY ID;

-----------------3-----------------
SELECT * from storm_date
where Date = '1951-05-18';


-----------------4-----------------
select * from storm_type
GROUP BY Status;
-----------------5-----------------
--edit al values in Low NE Winds
UPDATE wind_levels
SET Low_Wind_NE = -1
WHERE Low_Wind_NE = -999;
--change back
UPDATE wind_levels
SET Low_Wind_NE = -999
WHERE Low_Wind_NE = -1;


-----------------6-----------------
select Id, Low_Wind_NE,Low_Wind_NW, Low_Wind_SE, Low_Wind_SW
from wind_levels;


-----------------7-----------------
SELECT Date FROM atlantic_o
where Id = 'AL021951';

-----------------8-----------------
INSERT INTO storm_date(ID, Name, Date, Time)
VALUES 
('TST10101', 'TESTING', '1951-08-17', 500),
('TST10101', 'TESTING', '1951-08-18', 700),
('TST10101', 'TESTING', '1951-08-19', 900)

;

select * from storm_date;

-----------------9-----------------

UPDATE storm_date
SET NAME = 'FAKE NEWS'
WHERE ID = 'TST10101'
;

-----------------10-----------------

Delete from storm_date
WHERE ID = 'TST10101'
;

-----------------11-----------------
select * from location_coordinates;

UPDATE location_coordinates
set Name = 'Testsing'
Where id = 'AL021951';

--undo
UPDATE location_coordinates
set Name = 'ABLE'
Where id = 'AL021951';
-----------------12-----------------

INSERT INTO storm_type(id, Name, Date, Time, Status)
VALUES
('ROS1234', 'Rosie', '1988-09-03', 600, 'TD'),
('IVTH222', 'Iveth', '1999-10-26', 300, 'TY'),
('WOODY27', 'Woody', '2020-07-13', 1200, 'STS'),
('BRND87', 'Brenda', '2002-12-03', 2000, 'TD'),
('LALO223', 'Norteno', '1994-04-14', 100, 'TD'),
('XMN1327', 'Ximena', '2001-04-27', 0, 'HU')
;

select * from storm_type;
-----------------13-----------------
SELECT ID, Date
FROM storm_type 
WHERE Date like '%2020%'
-----------------14-----------------

select Id, name, date, Status
FROM storm_type
where status = 'STS'
or status = 'TY';
-----------------15-----------------

Select ID, Name FROM location_coordinates
WHERE Date = '1951-05-18';

-----------------16-----------------
SELECT ID,Name,date,Longitude 
from location_coordinates
WHERE Longitude = '103.6W';
-----------------17-----------------
UPDATE location_coordinates
Set Time = 100
WHERE Time = 0;

--undo
UPDATE location_coordinates
Set Time = 0
WHERE Time = 100;

SELECT * FROM location_coordinates
-----------------18-----------------
UPDATE storm_type
set Time = 2400
WHERE Time = 0;
--undo
UPDATE storm_type
set Time = 0
WHERE Time = 2400;

SELECT * FROM storm_type
-----------------19-----------------
select id, name, date, time, Max_Winds
FROM atlantic_o
where Max_Winds > 70;
-----------------20-----------------
INSERT into storm_type(id, name, date, time, status)
VALUES
('UNK1001', 'UNNAMED', '1975-09-06', 0, 'TD'),
('UNK1200', 'UNNAMED', '1993-10-30', 400, 'TY'),
('UNK3003', 'UNNAMED', '2007-07-26', 1300, 'STS')
;

SELECT * FROM storm_type

UPDATE storm_type
SET Name = 'BERTHA'
WHERE Name = 'UNNAMED' AND Status = 'TS'
--undo
UPDATE storm_type
SET Name = 'UNNAMED'
WHERE Name = 'BERTHA' 