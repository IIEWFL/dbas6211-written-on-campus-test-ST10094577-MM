/*the error corrected below is the spelling of SCHEMA from SCHEME */
USE vesselandvoyages;
DROP SCHEMA vesselsandvoyages;
CREATE SCHEMA vesselsandvoyages;
USE vesselsandvoyages;

/*TABLE CREATION SECTION*/

CREATE TABLE ship (
shipid INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
imonumber CHAR(11),
name VARCHAR(255)
);

CREATE TABLE voyage (
voyageid INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
DepartureDate DATE,
ArrivalDate DATE,
shipid INT
);

/*TABLE INSERTION SECTION*/
INSERT INTO ship (shipid, imonumber, name)
VALUES ('1','IMO1234567','Queen of the Seven Seas');

INSERT INTO voyage (voyageid, shipid, DepartureDate, ArrivalDate)
VALUES ('1','1','2023-01-01','2023-02-25');

/*TO DISPLAY TABLES*/
SELECT * FROM ship;
SELECT * FROM voyage;

UPDATE voyage
SET ArrivalDate = '2023-02-28'
WHERE voyageid = '1';



