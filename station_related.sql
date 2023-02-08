DROP TABLE Station;
select * from Station;
CREATE TABLE Station (
	Location VARCHAR(50),
    StationName VARCHAR(50),    
    Stationcode VARCHAR(5),
    Unique(Stationcode),
    PRIMARY KEY (StationName)
);

INSERT INTO Station VALUES ('Delhi','New_Delhi_Railway_Station','ndls');
INSERT INTO Station VALUES ('Secunderabad','Secunderabad_Railway_Station','sc');
INSERT INTO Station VALUES ('Pune','Pune_Railway_Station','pune');
INSERT INTO Station VALUES ('Gwalior','Gwalior_Railway_Station','gwl');
INSERT INTO Station VALUES ('Solapur','Solapur_Railway_Station','sur');
INSERT INTO Station VALUES ('Bhopal','Bhopal_Railway_Station','bpl');


