CREATE TABLE Train (
    TrainNumber VARCHAR(5) PRIMARY KEY,
    TrainName VARCHAR(50) NOT NULL,
    SStation VARCHAR(50),
    1stClassPrice Float(6,2),
    2ndClassPrice Float(6,2),
    SleeperPrice Float(6,2),
    capacity int,
    FOREIGN KEY (SStation) REFERENCES Station(StationName) ON DELETE SET NULL
);

INSERT INTO Train VALUES ('12724','Telangana_Express','New_Delhi_Railway_Station',3000.50,2000.50,1000.50,100);
INSERT INTO Train VALUES ('12723','Telangana_Express','Secunderabad_Railway_Station',3000.50,2000.50,1000.50,100);
INSERT INTO Train VALUES ('12147','Pune_Express','Pune_Railway_Station',2500.50,1800.50,900.50,100);
INSERT INTO Train VALUES ('12146','Pune_Express','New_Delhi_Railway_Station',2500.50,1800.50,900.50,100);

DROP TABLE Train;
select * from Train;

CREATE TABLE Route (
    RouteNum INT (5) AUTO_INCREMENT,
	Location VARCHAR (50),
    StationName VARCHAR(50),
    ArrivalTime TIME,
    DepartureTime TIME,
    Duration int,
    PRIMARY KEY (RouteNum),
    FOREIGN KEY (StationName) REFERENCES Station(StationName) ON DELETE SET NULL
);
/*Populating Route table*/
/*First route delhi to Secunderabad*/
INSERT INTO Route VALUES (1,'Delhi','New_Delhi_Railway_Station',Null,'16:05:00',0);
INSERT INTO Route VALUES (2,'Gwalior','Gwalior_Railway_Station','22:05:00','22:15:00',6);
INSERT INTO Route VALUES (3,'Bhopal','Bhopal_Railway_Station','05:05:00','05:15:00',13);
INSERT INTO Route VALUES (4,'Secunderabad','Secunderabad_Railway_Station','16:00:00',NULL,24);

/*First route pune to Delhi*/
INSERT INTO ROUTE VALUES (5,'Pune','Pune_Railway_Station',NULL,'05:00:00',0);
INSERT INTO ROUTE VALUES (6,'Bhopal','Bhopal_Railway_Station','16:00:00','16:05:00',11);
INSERT INTO ROUTE VALUES (7,'Gwalior','Gwalior_Railway_Station','23:00:00','23:05:00',18);
INSERT INTO ROUTE VALUES (8,'Delhi','New_Delhi_Railway_Station','05:30:00',NULL,24);

/*Second route from Secunderabad to Delhi */
INSERT INTO Route VALUES (9,'Secunderabad','Secunderabad_Railway_Station',NULL,'06:05:00',0);
INSERT INTO Route VALUES (10,'Bhopal','Bhopal_Railway_Station','12:05:00','12:15:00',6);
INSERT INTO Route VALUES (11,'Gwalior','Gwalior_Railway_Station','20:05:00','20:15:00',14);
INSERT INTO Route VALUES (12,'Delhi','New_Delhi_Railway_Station',Null,'6:05:00',24);

/*route from Delhi to pune*/
INSERT INTO ROUTE VALUES (13,'Delhi','New_Delhi_Railway_Station',NULL,'15:05:00',0);
INSERT INTO ROUTE VALUES (14,'Gwalior','Gwalior_Railway_Station','21:00:00','21:05:00',6);
INSERT INTO ROUTE VALUES (15,'Bhopal','Bhopal_Railway_Station','04:00:00','04:05:00',13);
INSERT INTO ROUTE VALUES (16,'Pune','Pune_Railway_Station','15:30:00',NULL,24);




delete from Route where RouteNum = 8;
DROP TABLE Route;
select * from Route;

CREATE TABLE Takes (
    RouteNum INT(5),
    TrainNumber VARCHAR(50), 
    Days int,
    PRIMARY KEY (RouteNum, TrainNumber),
    FOREIGN KEY (RouteNum) REFERENCES Route(RouteNum),
    FOREIGN KEY(TrainNumber) REFERENCES Train(TrainNumber)
);

/*from train no 12724 ndls to sc*/
INSERT INTO Takes VALUES (1,'12724',0);
INSERT INTO Takes VALUES (2,'12724',0);
INSERT INTO Takes VALUES (3,'12724',1);
INSERT INTO Takes VALUES (4,'12724',1);

/*For train no 12147*/
INSERT INTO Takes VALUES (5,'12147',0);
INSERT INTO Takes VALUES (6,'12147',0);
INSERT INTO Takes VALUES (7,'12147',0);
INSERT INTO Takes VALUES (8,'12147',1);

/*for train no 12723*/
INSERT INTO Takes VALUES (9,'12723',0);
INSERT INTO Takes VALUES (10,'12723',0);
INSERT INTO Takes VALUES (11,'12723',0);
INSERT INTO Takes VALUES (12,'12723',1);

/*for train no 12146*/
INSERT INTO Takes VALUES (13,'12146',0);
INSERT INTO Takes VALUES (14,'12146',0);
INSERT INTO Takes VALUES (15,'12146',1);
INSERT INTO Takes VALUES (16,'12146',1);

Delete from Takes where RouteNum = 8;
DROP TABLE Takes;
select * from Takes;



